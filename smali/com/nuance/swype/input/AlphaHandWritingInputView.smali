.class public Lcom/nuance/swype/input/AlphaHandWritingInputView;
.super Lcom/nuance/swype/input/InputView;
.source "AlphaHandWritingInputView.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;
.implements Lcom/nuance/swype/input/AlphaHandWritingView$OnWritingAction;


# static fields
.field static final MSG_DELAY_RECOGNIZER:I = 0x1

.field private static final MSG_DISPLAY_NEXT_WORD_PREDICTION:I = 0x7

.field private static final MSG_HANDLE_CHAR:I = 0x3

.field private static final MSG_HANDLE_INSTANT_GESTURE_CHAR:I = 0x5

.field private static final MSG_HANDLE_SHOW_START_OF_WORD_CANDIDATE:I = 0x6

.field private static final MSG_HANDLE_SUGGESTION_CANDIDATES:I = 0x2

.field private static final MSG_HANDLE_TEXT:I = 0x4

.field static final MSG_SHOW_HOW_TO_TOAST:I = 0x1f7

.field private static final WRITING_MODE_SYMBOLS_AND_DIGITS:I = 0x1

.field private static final WRITING_MODE_TEXT:I


# instance fields
.field private alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

.field private final delayRecognizerCallback:Landroid/os/Handler$Callback;

.field protected mComposition:Lcom/nuance/swype/input/Composition;

.field protected mContainer:Lcom/nuance/swype/input/AlphaHandWritingContainerView;

.field private mCurrentWritingMode:I

.field private mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

.field final mDelayRecognizeHandler:Landroid/os/Handler;

.field final mPopupViewHandler:Landroid/os/Handler;

.field private mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

.field final mWriteEventHandler:Landroid/os/Handler;

.field private final popupViewCallback:Landroid/os/Handler$Callback;

.field private final writeEventCallback:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defaultStyle"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    .line 1101
    new-instance v0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;-><init>(Lcom/nuance/swype/input/AlphaHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->writeEventCallback:Landroid/os/Handler$Callback;

    .line 1152
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->writeEventCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    .line 1156
    new-instance v0, Lcom/nuance/swype/input/AlphaHandWritingInputView$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView$2;-><init>(Lcom/nuance/swype/input/AlphaHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->delayRecognizerCallback:Landroid/os/Handler$Callback;

    .line 1172
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->delayRecognizerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    .line 1272
    new-instance v0, Lcom/nuance/swype/input/AlphaHandWritingInputView$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView$3;-><init>(Lcom/nuance/swype/input/AlphaHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->popupViewCallback:Landroid/os/Handler$Callback;

    .line 1295
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->popupViewCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/nuance/swype/input/Composition;

    invoke-direct {v0}, Lcom/nuance/swype/input/Composition;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 70
    return-void
.end method

.method private acceptCurrentDefaultWord()V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->clearSuggestions()V

    .line 695
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/AlphaHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaHandWritingInputView;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->displayNextWordPrediction()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/AlphaHandWritingInputView;)Lcom/nuance/input/swypecorelib/T9WriteAlpha;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaHandWritingInputView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    return-object v0
.end method

.method private appendCandidatesFromAlphaInput()V
    .locals 15

    .prologue
    .line 929
    iget-object v12, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v12}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v4

    .line 930
    .local v4, "hwrWordCount":I
    new-array v3, v4, [Lcom/nuance/input/swypecorelib/Candidates;

    .line 931
    .local v3, "candidatesList":[Lcom/nuance/input/swypecorelib/Candidates;
    new-array v8, v4, [I

    .line 932
    .local v8, "lastAddedWordIndex":[I
    new-array v0, v4, [I

    .line 934
    .local v0, "addedWords":[I
    rsub-int/lit8 v1, v4, 0xa

    .line 939
    .local v1, "alphaInputWordCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 940
    iget-object v12, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v12, v5}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xa

    invoke-direct {p0, v12, v13}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getAlphaInputCandidates(Ljava/lang/CharSequence;I)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v12

    aput-object v12, v3, v5

    .line 939
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 944
    :cond_0
    move v10, v4

    .line 945
    .local v10, "remainingWord":I
    :cond_1
    if-lez v1, :cond_6

    if-lez v10, :cond_6

    .line 946
    div-int v2, v1, v10

    .line 948
    .local v2, "alphaInputWordCountPerCandidate":I
    const/4 v5, 0x0

    :goto_1
    array-length v12, v3

    if-ge v5, v12, :cond_1

    .line 949
    if-lez v1, :cond_1

    .line 951
    aget v12, v8, v5

    aget-object v13, v3, v5

    invoke-virtual {v13}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v13

    if-eq v12, v13, :cond_4

    .line 955
    const/4 v6, 0x0

    .line 960
    .local v6, "itemsAdded":I
    aget v11, v8, v5

    .local v11, "wordIndex":I
    :goto_2
    aget-object v12, v3, v5

    invoke-virtual {v12}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 962
    const/4 v9, 0x0

    .line 963
    .local v9, "position":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    if-gt v7, v5, :cond_2

    .line 964
    aget v12, v0, v7

    add-int/2addr v9, v12

    .line 963
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 966
    :cond_2
    iget-object v12, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    add-int v13, v9, v4

    aget-object v14, v3, v5

    invoke-virtual {v14, v11}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/nuance/input/swypecorelib/Candidates;->add(ILcom/nuance/input/swypecorelib/WordCandidate;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 968
    add-int/lit8 v1, v1, -0x1

    .line 969
    aget v12, v0, v5

    add-int/lit8 v12, v12, 0x1

    aput v12, v0, v5

    .line 970
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v2, :cond_5

    .line 971
    add-int/lit8 v11, v11, 0x1

    .line 977
    .end local v7    # "j":I
    .end local v9    # "position":I
    :cond_3
    aput v11, v8, v5

    .line 978
    aget v12, v8, v5

    aget-object v13, v3, v5

    invoke-virtual {v13}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v13

    if-ne v12, v13, :cond_4

    .line 980
    add-int/lit8 v10, v10, -0x1

    .line 948
    .end local v6    # "itemsAdded":I
    .end local v11    # "wordIndex":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 961
    .restart local v6    # "itemsAdded":I
    .restart local v7    # "j":I
    .restart local v9    # "position":I
    .restart local v11    # "wordIndex":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 984
    .end local v2    # "alphaInputWordCountPerCandidate":I
    .end local v6    # "itemsAdded":I
    .end local v7    # "j":I
    .end local v9    # "position":I
    .end local v11    # "wordIndex":I
    :cond_6
    return-void
.end method

.method private cancelCurrentDefaultWord()V
    .locals 1

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isInlineActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->clearCurrentInline()V

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->clearSuggestions()V

    .line 673
    return-void
.end method

.method private changeWriteRecognitionMode()V
    .locals 2

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mShowInternalCandidates:Z

    if-nez v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setRecognitionMode(I)V

    .line 824
    :goto_0
    return-void

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setRecognitionMode(I)V

    goto :goto_0
.end method

.method private changeWriteSettings(Lcom/nuance/swype/input/AlphaHandWritingView;)V
    .locals 2
    .param p1, "view"    # Lcom/nuance/swype/input/AlphaHandWritingView;

    .prologue
    .line 827
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {p1}, Lcom/nuance/swype/input/AlphaHandWritingView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setWidth(I)V

    .line 829
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {p1}, Lcom/nuance/swype/input/AlphaHandWritingView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setHeight(I)V

    .line 830
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->applyChangedSettings()V

    .line 832
    :cond_0
    return-void
.end method

.method private deleteOneCharacter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 507
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v2

    if-nez v2, :cond_5

    .line 509
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isNextWordPredictionCandidates()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 510
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()V

    .line 511
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 513
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateNextWordPrediction()V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v3, :cond_2

    .line 520
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 521
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateNextWordPrediction()V

    goto :goto_0

    .line 527
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->removeOneCharacterFromCandidateList()Ljava/lang/CharSequence;

    move-result-object v1

    .line 529
    .local v1, "seq":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 530
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()V

    .line 531
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateNextWordPrediction()V

    goto :goto_0

    .line 535
    :cond_4
    iput-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->HWR:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-static {v0, v4, v2}, Lcom/nuance/input/swypecorelib/Candidates;->createCandidates(Ljava/util/List;ILcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 540
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateCandidatesList(Lcom/nuance/input/swypecorelib/Candidates;)V

    goto :goto_0

    .line 543
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v1    # "seq":Ljava/lang/CharSequence;
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->clearSuggestions()V

    .line 544
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 545
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v2, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setContext([C)V

    .line 547
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateNextWordPrediction()V

    goto :goto_0
.end method

.method private deleteWordToLeftOfCursor()V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->deleteWordToLeftOfCursor()V

    .line 656
    return-void
.end method

.method private deleteWordToRightOfCursor()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->deleteWordToRightOfCursor()V

    .line 652
    return-void
.end method

.method private displayNextWordPrediction()V
    .locals 3

    .prologue
    .line 808
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mNextWordPredictionOn:Z

    if-nez v1, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mStarted:Z

    if-eqz v1, :cond_0

    .line 812
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setContextBuffer()V

    .line 813
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 814
    .local v0, "nwpCandiates":Lcom/nuance/input/swypecorelib/Candidates;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateCandidatesList(Lcom/nuance/input/swypecorelib/Candidates;)V

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
    .line 633
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v5, :cond_1

    .line 634
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateIndex()I

    move-result v0

    .line 635
    .local v0, "defaultIndex":I
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateIndex()I

    move-result v1

    .line 636
    .local v1, "extactIndex":I
    new-instance v3, Lcom/nuance/input/swypecorelib/Candidates;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 638
    .local v3, "unShiftedCandidates":Lcom/nuance/input/swypecorelib/Candidates;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 639
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5, v2}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v4

    .line 640
    .local v4, "word":Lcom/nuance/input/swypecorelib/WordCandidate;
    new-instance v5, Lcom/nuance/input/swypecorelib/WordCandidate;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->completionLength()I

    move-result v7

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->attribute()I

    move-result v8

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v3, v5}, Lcom/nuance/input/swypecorelib/Candidates;->add(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 638
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 644
    .end local v4    # "word":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_0
    invoke-virtual {v3, v0}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 645
    invoke-virtual {v3, v1}, Lcom/nuance/input/swypecorelib/Candidates;->setExactIndex(I)V

    .line 646
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateCandidatesList(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 648
    .end local v0    # "defaultIndex":I
    .end local v1    # "extactIndex":I
    .end local v2    # "i":I
    .end local v3    # "unShiftedCandidates":Lcom/nuance/input/swypecorelib/Candidates;
    :cond_1
    return-void
.end method

.method private finishAlphaInput()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->finishSession()V

    .line 267
    return-void
.end method

.method private getAlphaInputCandidates(Ljava/lang/CharSequence;I)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 8
    .param p1, "word"    # Ljava/lang/CharSequence;
    .param p2, "maxWordList"    # I

    .prologue
    const/4 v7, 0x1

    .line 987
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    .line 988
    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    const/4 v2, 0x0

    .line 989
    .local v2, "shiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 990
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 991
    :goto_1
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    new-array v4, v7, [C

    const/4 v5, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    aput-char v6, v4, v5

    invoke-virtual {v3, v4, v7, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 989
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 990
    :cond_0
    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_1

    .line 993
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->HWR:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v3, v4, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;I)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    .line 994
    .local v1, "result":Lcom/nuance/input/swypecorelib/Candidates;
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    .line 995
    return-object v1
.end method

.method private handleSpace()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 499
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isNextWordPredictionCandidates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;ZZ)V

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->sendSpace()V

    goto :goto_0
.end method

.method private hideHowToUseToast()V
    .locals 0

    .prologue
    .line 286
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 287
    return-void
.end method

.method private isCompletionCandidates()Z
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

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

.method private isNextWordPredictionCandidates()Z
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

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
    .line 659
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private postDelayResumeSpeech()V
    .locals 4

    .prologue
    const/16 v1, 0xb

    .line 236
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 240
    return-void
.end method

.method private postDelayShowingStartOfWordCandidate()V
    .locals 4

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1039
    return-void
.end method

.method private postHowToUseToastMsg()V
    .locals 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 291
    return-void
.end method

.method private processPendingRecognizing()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 664
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->performDelayRecognition()V

    .line 665
    return-void
.end method

.method private removeAllPendingMsg()V
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1043
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1044
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1045
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1046
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1047
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1048
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1049
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 1050
    return-void
.end method

.method private removeDelayRecognitionMsg()V
    .locals 2

    .prologue
    .line 890
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 891
    return-void
.end method

.method private removeHowToUseToastMsg()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 295
    return-void
.end method

.method private removeOneCharacterFromCandidateList()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 489
    const/4 v0, 0x0

    .line 490
    .local v0, "seq":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    if-lez v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 495
    :cond_0
    return-object v0
.end method

.method private selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;ZZ)V
    .locals 11
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "addSpace"    # Z
    .param p3, "userExplicitPick"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 718
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v6

    .line 720
    .local v6, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-nez v6, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    invoke-virtual {v6}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 730
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isNextWordPredictionCandidates()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->HWR:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_7

    :cond_2
    move v9, v3

    .line 735
    .local v9, "showNWP":Z
    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->HWR:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_3

    .line 736
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getCandidates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->noteSelectedCandidate(I)I

    .line 742
    :cond_3
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v7

    .line 744
    .local v7, "index":I
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_8

    .line 745
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCompletionOn:Z

    if-eqz v0, :cond_4

    if-ltz v7, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Completions;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 746
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0, v7}, Lcom/nuance/swype/input/Completions;->get(I)Landroid/view/inputmethod/CompletionInfo;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 747
    const/4 p2, 0x0

    .line 780
    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    .line 781
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->sendSpace()V

    .line 784
    :cond_5
    invoke-virtual {v6}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 786
    if-eqz v9, :cond_6

    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mNextWordPredictionOn:Z

    if-eqz v0, :cond_6

    .line 787
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateNextWordPrediction()V

    .line 790
    :cond_6
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getEditState()Lcom/nuance/swype/input/EditState;

    move-result-object v10

    .line 791
    .local v10, "state":Lcom/nuance/swype/input/EditState;
    if-eqz v10, :cond_0

    instance-of v0, v10, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    if-eqz v0, :cond_0

    .line 792
    check-cast v10, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    .end local v10    # "state":Lcom/nuance/swype/input/EditState;
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->reportWritingResults(Ljava/lang/String;)V

    goto :goto_0

    .end local v7    # "index":I
    .end local v9    # "showNWP":Z
    :cond_7
    move v9, v0

    .line 730
    goto :goto_1

    .line 749
    .restart local v7    # "index":I
    .restart local v9    # "showNWP":Z
    :cond_8
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_b

    .line 750
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_NEW_WORD:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-eq v1, v2, :cond_a

    move v1, v3

    .line 752
    :goto_3
    if-eqz v1, :cond_9

    .line 753
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->removeSpaceBeforeWord(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 754
    invoke-virtual {v6, v4, v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 755
    .local v8, "seq":Ljava/lang/CharSequence;
    if-eqz v8, :cond_9

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v4, :cond_9

    invoke-interface {v8, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v8, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_9

    .line 758
    invoke-virtual {v6, v3, v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->deleteSurroundingText(II)Z

    .line 763
    .end local v8    # "seq":Ljava/lang/CharSequence;
    :cond_9
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 764
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->clearSuggestions()V

    .line 766
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 770
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v2

    move-object v0, p0

    move v4, v3

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->selectWord(Lcom/nuance/input/swypecorelib/XT9CoreInput;IIIZ)V

    .line 773
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->learnNewWords()V

    goto/16 :goto_2

    :cond_a
    move v1, v0

    .line 750
    goto :goto_3

    .line 777
    :cond_b
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->clearSuggestions()V

    goto/16 :goto_2
.end method

.method private setKeyboardForTextEntry(Lcom/nuance/swype/input/InputFieldInfo;)V
    .locals 3
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 301
    return-void
.end method

.method private setNumbersAndSymbolsCatetory(Lcom/nuance/swype/input/InputFieldInfo;)V
    .locals 2
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    .line 304
    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->addPhoneNumberOnlyCategory()V

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->addGestureCategory()V

    .line 311
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->applyChangedSettings()V

    .line 312
    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateKeyLabel(I)V

    .line 314
    :cond_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->addDigitsAndSymbolsOnlyCategory()V

    goto :goto_0
.end method

.method private setTextCategory(Lcom/nuance/swype/input/InputFieldInfo;)V
    .locals 1
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    .line 317
    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->addEmailOnlyCategory()V

    .line 325
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->addGestureCategory()V

    .line 326
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->applyChangedSettings()V

    .line 327
    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateKeyLabel(I)V

    .line 329
    :cond_0
    return-void

    .line 320
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->addUrlOnlyCategory()V

    goto :goto_0

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->addTextCategory()V

    goto :goto_0
.end method

.method private showHandWritingView(Z)V
    .locals 4
    .param p1, "animation"    # Z

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "animate":Landroid/view/animation/AlphaAnimation;
    if-eqz p1, :cond_0

    .line 84
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "animate":Landroid/view/animation/AlphaAnimation;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 85
    .restart local v0    # "animate":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 88
    :cond_0
    if-eqz v0, :cond_1

    .line 89
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mContainer:Lcom/nuance/swype/input/AlphaHandWritingContainerView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/AlphaHandWritingView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 91
    :cond_1
    return-void
.end method

.method private startAlphaInput()V
    .locals 3

    .prologue
    .line 243
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->startSession()V

    .line 244
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    .line 245
    .local v0, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v0, v1, :cond_2

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nuance/swype/input/DatabaseConfig;->removeIncompatibleDBFiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    .line 250
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v0, v1, :cond_2

    .line 252
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isLDBCompatible:Z

    .line 253
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->promptUserToUpdateLanguage()V

    .line 255
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    .line 257
    const/16 v2, 0x109

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguageById(I)V

    .line 258
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IME;->switchInputViewAsync(I)V

    .line 262
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->readNextWordPredictionSettings()V

    .line 263
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
    .line 614
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v5, :cond_1

    .line 615
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateIndex()I

    move-result v0

    .line 616
    .local v0, "defaultIndex":I
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateIndex()I

    move-result v1

    .line 617
    .local v1, "extactIndex":I
    new-instance v3, Lcom/nuance/input/swypecorelib/Candidates;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 619
    .local v3, "shiftedCandidates":Lcom/nuance/input/swypecorelib/Candidates;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 620
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5, v2}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v4

    .line 621
    .local v4, "word":Lcom/nuance/input/swypecorelib/WordCandidate;
    new-instance v5, Lcom/nuance/input/swypecorelib/WordCandidate;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->completionLength()I

    move-result v7

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->attribute()I

    move-result v8

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v3, v5}, Lcom/nuance/input/swypecorelib/Candidates;->add(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 619
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 625
    .end local v4    # "word":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_0
    invoke-virtual {v3, v0}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 626
    invoke-virtual {v3, v1}, Lcom/nuance/input/swypecorelib/Candidates;->setExactIndex(I)V

    .line 627
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateCandidatesList(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 629
    .end local v0    # "defaultIndex":I
    .end local v1    # "extactIndex":I
    .end local v2    # "i":I
    .end local v3    # "shiftedCandidates":Lcom/nuance/input/swypecorelib/Candidates;
    :cond_1
    return-void
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

    .line 1222
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 1224
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    if-eqz v2, :cond_2

    .line 1225
    const/16 v4, 0x193e

    invoke-virtual {p0, v2, v4}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->findKeyByKeyCode(Ljava/util/List;I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1227
    .local v0, "altKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_2

    .line 1228
    const/4 v1, 0x0

    .line 1230
    .local v1, "currentMode":Ljava/lang/CharSequence;
    if-nez p1, :cond_3

    .line 1231
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    .line 1232
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->label_alpha_key:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1238
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 1239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1240
    .local v3, "writingMode":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-virtual {v4, v3}, Lcom/nuance/swype/input/AlphaHandWritingView;->setWritingMode(Ljava/lang/String;)V

    .line 1241
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/AlphaHandWritingView;->invalidate()V

    .line 1244
    .end local v3    # "writingMode":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 1247
    .end local v0    # "altKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v1    # "currentMode":Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 1233
    .restart local v0    # "altKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .restart local v1    # "currentMode":Ljava/lang/CharSequence;
    :cond_3
    if-ne p1, v5, :cond_0

    .line 1234
    iput-boolean v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    .line 1235
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

    .line 803
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 804
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 805
    return-void
.end method


# virtual methods
.method protected changeKeyboardMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1176
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 1181
    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    if-nez v0, :cond_2

    .line 1182
    iput v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    .line 1183
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setNumbersAndSymbolsCatetory(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 1188
    :cond_1
    :goto_0
    return-void

    .line 1184
    :cond_2
    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    if-ne v0, v1, :cond_1

    .line 1185
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    .line 1186
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setTextCategory(Lcom/nuance/swype/input/InputFieldInfo;)V

    goto :goto_0
.end method

.method public clearCurrentActiveWord()V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()V

    .line 485
    return-void
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 1
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "t9write"    # Lcom/nuance/input/swypecorelib/T9Write;
    .param p4, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V

    move-object v0, p2

    .line 96
    check-cast v0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .line 97
    check-cast p3, Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    .end local p3    # "t9write":Lcom/nuance/input/swypecorelib/T9Write;
    iput-object p3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    .line 98
    new-instance v0, Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-direct {v0, p1, p2}, Lcom/nuance/swype/input/KeyboardSwitcher;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 99
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 101
    return-void
.end method

.method public createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;
    .locals 3
    .param p1, "onSelectListener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "candidatesView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$attr;->keyboardSuggestStripHandwriting:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    return-object v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->destroy()V

    .line 106
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 107
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->removeAllPendingMsg()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    .line 109
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCompletionOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mShowInternalCandidates:Z

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/Completions;->update([Landroid/view/inputmethod/CompletionInfo;)V

    .line 126
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Completions;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->clearSuggestions()V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateCandidatesList(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 132
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Completions;->getDisplayItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-static {v0, v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->createCandidates(Ljava/util/List;ILcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 134
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    sget-object v1, Lcom/nuance/swype/input/CandidatesListView$Format;->DEFAULT:Lcom/nuance/swype/input/CandidatesListView$Format;

    invoke-virtual {p0, p0, v0, v1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 135
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    goto :goto_0
.end method

.method public finishInput()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 333
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 334
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->removeHowToUseToastMsg()V

    .line 335
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 336
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->dismissPopupKeyboard()V

    .line 338
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()V

    .line 339
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->removeAllPendingMsg()V

    .line 340
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 341
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->finishSession()V

    .line 342
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->finishSession()V

    .line 343
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setWidth(I)V

    .line 344
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setHeight(I)V

    .line 345
    return-void
.end method

.method public flushCurrentActiveWord()V
    .locals 0

    .prologue
    .line 686
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()V

    .line 687
    return-void
.end method

.method protected getContainerX()I
    .locals 1

    .prologue
    .line 78
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
    .line 465
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isNextWordPredictionCandidates()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isCompletionCandidates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentWordCandiatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    .line 479
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    goto :goto_0
.end method

.method public getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .locals 2

    .prologue
    .line 1192
    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    if-nez v0, :cond_0

    .line 1193
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 1198
    :goto_0
    return-object v0

    .line 1194
    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1195
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    goto :goto_0

    .line 1198
    :cond_1
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    goto :goto_0
.end method

.method protected handleBackspace(I)Z
    .locals 2
    .param p1, "repeatedCount"    # I

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->queueChar(C)V

    .line 418
    const/4 v0, 0x1

    return v0
.end method

.method handleChar(C)V
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 564
    sparse-switch p1, :sswitch_data_0

    .line 607
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()V

    .line 608
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->sendKeyChar(C)V

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 566
    :sswitch_0
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()V

    .line 567
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->sendKeyChar(C)V

    goto :goto_0

    .line 571
    :sswitch_1
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->handleSpace()V

    goto :goto_0

    .line 575
    :sswitch_2
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->deleteOneCharacter()V

    goto :goto_0

    .line 579
    :sswitch_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_1

    .line 580
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()V

    goto :goto_0

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->deleteWordToLeftOfCursor()V

    goto :goto_0

    .line 587
    :sswitch_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_2

    .line 588
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()V

    goto :goto_0

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->deleteWordToRightOfCursor()V

    goto :goto_0

    .line 595
    :sswitch_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->downShiftCandidateList()V

    goto :goto_0

    .line 601
    :sswitch_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->upShiftCandidateList()V

    goto :goto_0

    .line 564
    nop

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

.method public handleCharKey(Landroid/graphics/Point;IJ)V
    .locals 2
    .param p1, "pointTapped"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->queueChar(C)V

    .line 428
    return-void
.end method

.method public handleClose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 349
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 350
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->dismissPopupKeyboard()V

    .line 352
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->removeHowToUseToastMsg()V

    .line 353
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 355
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setWidth(I)V

    .line 356
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setHeight(I)V

    .line 358
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->removeAllPendingMsg()V

    .line 359
    return-void
.end method

.method handleInstantGestureChar(CLcom/nuance/input/swypecorelib/Candidates;)V
    .locals 1
    .param p1, "gestureChar"    # C
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 1010
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 1012
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    if-lez v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 1014
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateCandidatesList(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 1017
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->handleChar(C)V

    .line 1018
    return-void
.end method

.method public handleKey(IZI)Z
    .locals 1
    .param p1, "primaryCode"    # I
    .param p2, "quickPressed"    # Z
    .param p3, "repeatedCount"    # I

    .prologue
    .line 363
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 365
    sparse-switch p1, :sswitch_data_0

    .line 385
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    :goto_1
    return v0

    .line 367
    :sswitch_0
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->flushCurrentActiveWord()V

    .line 371
    if-nez p2, :cond_1

    .line 372
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->startSpeech()V

    .line 374
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 380
    :sswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    goto :goto_0

    .line 365
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
    .line 401
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    const/16 v0, 0x43

    if-ne p1, v0, :cond_0

    .line 403
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->handleBackspace(I)Z

    move-result v0

    .line 407
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
    const/4 v0, 0x0

    .line 453
    const/16 v1, 0x8

    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_1

    .line 454
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->handleDeleteWordBack(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 459
    :cond_0
    :goto_0
    return v0

    .line 455
    :cond_1
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected handleSpace(ZI)Z
    .locals 2
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    const/16 v1, 0x20

    .line 433
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 436
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->queueChar(C)V

    .line 448
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->queueChar(C)V

    goto :goto_0

    .line 445
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->handleSpace()V

    goto :goto_0
.end method

.method handleText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 999
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()V

    .line 1000
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 1001
    return-void
.end method

.method public isHandWritingInputView()Z
    .locals 1

    .prologue
    .line 1317
    const/4 v0, 0x1

    return v0
.end method

.method public isInlineActive()Z
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 678
    const/4 v0, 0x1

    .line 681
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportRecapture()Z
    .locals 1

    .prologue
    .line 1267
    const/4 v0, 0x0

    return v0
.end method

.method public onApplicationUnbind()V
    .locals 0

    .prologue
    .line 1252
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onApplicationUnbind()V

    .line 1254
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->removeHowToUseToastMsg()V

    .line 1255
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 1256
    return-void
.end method

.method public onCandidatesUpdated(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 0
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 714
    return-void
.end method

.method public onHandleWriteEvent(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;

    .prologue
    const-wide/16 v4, 0x5

    .line 1059
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_2

    .line 1060
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isLVLLicenseValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1092
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    :cond_2
    iget v0, p1, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;->mType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1072
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1078
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1083
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1088
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1069
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
    .locals 1
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 701
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 2
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v1, 0x1

    .line 706
    iput-object p2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 707
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mInURLEmail:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;ZZ)V

    .line 708
    return v1

    .line 707
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->queueText(Ljava/lang/CharSequence;)V

    .line 396
    return-void
.end method

.method public penDown(Landroid/view/View;)V
    .locals 2
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->dismissPopupKeyboard()V

    .line 840
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 847
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    if-eq v0, p1, :cond_1

    .line 848
    :cond_0
    check-cast p1, Lcom/nuance/swype/input/AlphaHandWritingView;

    .end local p1    # "src":Landroid/view/View;
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaHandWritingView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaHandWritingView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 853
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->changeWriteSettings(Lcom/nuance/swype/input/AlphaHandWritingView;)V

    .line 857
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_4

    .line 858
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->startArcsAddingSequence()V

    .line 860
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
    .line 887
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

    .line 868
    const/4 v0, 0x0

    .line 869
    .local v0, "startWord":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 870
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1, v4}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    .line 873
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    if-eqz v1, :cond_1

    .line 874
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaHandWritingView;->startFading()V

    .line 877
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_2

    .line 878
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    new-instance v3, Ljava/util/ArrayList;

    aget-object v1, p1, v4

    iget-object v1, v1, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    array-length v1, p1

    if-le v1, v5, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    aget-object v4, p1, v5

    iget-object v4, v4, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-virtual {v2, v3, v1, v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 881
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->getRecognizerDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 883
    return-void

    .line 878
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method performDelayRecognition()V
    .locals 3

    .prologue
    .line 1021
    const/4 v0, 0x0

    .line 1022
    .local v0, "startWord":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isNextWordPredictionCandidates()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_0

    .line 1024
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1027
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1028
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v1, v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 1031
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    if-eqz v1, :cond_2

    .line 1032
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaHandWritingView;->clearAll()V

    .line 1034
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->invalidate()V

    .line 1035
    return-void
.end method

.method protected preUpdateSpeechText()V
    .locals 0

    .prologue
    .line 1299
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->flushCurrentActiveWord()V

    .line 1300
    return-void
.end method

.method protected resumeSpeech()V
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mContainer:Lcom/nuance/swype/input/AlphaHandWritingContainerView;

    if-eqz v0, :cond_0

    .line 1261
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->resumeSpeech()V

    .line 1263
    :cond_0
    return-void
.end method

.method public setContainerView(Lcom/nuance/swype/input/AlphaHandWritingContainerView;)V
    .locals 0
    .param p1, "container"    # Lcom/nuance/swype/input/AlphaHandWritingContainerView;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mContainer:Lcom/nuance/swype/input/AlphaHandWritingContainerView;

    .line 74
    return-void
.end method

.method public setHandWritingView(Lcom/nuance/swype/input/AlphaHandWritingView;)V
    .locals 0
    .param p1, "view"    # Lcom/nuance/swype/input/AlphaHandWritingView;

    .prologue
    .line 835
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    .line 836
    return-void
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 0
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    .line 1217
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateDockModeForHandwriting(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1218
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1219
    return-void
.end method

.method public setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .locals 2
    .param p1, "layer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    const/4 v1, 0x1

    .line 1203
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 1204
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    if-eqz v0, :cond_1

    .line 1205
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    .line 1206
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setTextCategory(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 1212
    :cond_0
    :goto_0
    return-void

    .line 1207
    :cond_1
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    if-eq v0, v1, :cond_0

    .line 1209
    iput v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    .line 1210
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setNumbersAndSymbolsCatetory(Lcom/nuance/swype/input/InputFieldInfo;)V

    goto :goto_0
.end method

.method showHowToUseToast()V
    .locals 6

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 272
    .local v0, "sm":Lcom/nuance/swype/input/AppPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->showHowToUseHandWritingTip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    if-eqz v1, :cond_1

    .line 275
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setShowHowToUseHandWritingTip(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->how_to_use_hwr:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/AlphaHandWritingView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-static {v1, v2, v3, v4}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->postHowToUseToastMsg()V

    goto :goto_0
.end method

.method protected showNextWordPrediction()V
    .locals 3

    .prologue
    .line 1304
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mNextWordPredictionOn:Z

    if-nez v1, :cond_1

    .line 1313
    :cond_0
    :goto_0
    return-void

    .line 1307
    :cond_1
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastSavedActiveWord()Ljava/lang/String;

    move-result-object v0

    .line 1308
    .local v0, "lastWord":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1311
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateWordContext()V

    .line 1312
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I

    goto :goto_0
.end method

.method showStartOfWordCandidateList()V
    .locals 4

    .prologue
    .line 166
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastSavedActiveWordAndSet()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "lastWord":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->HWR:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-static {v1, v2, v3}, Lcom/nuance/input/swypecorelib/Candidates;->createCandidates(Ljava/util/List;ILcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateCandidatesList(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 179
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v2, v3, :cond_1

    .line 180
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 182
    :cond_1
    return-void

    .line 171
    :cond_2
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastShownCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v3, :cond_3

    .line 172
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateNextWordPrediction()V

    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateNextWordPrediction()V

    goto :goto_0
.end method

.method public startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V
    .locals 6
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 187
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 188
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/CandidatesListView;->updateCandidatesSize()V

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mContainer:Lcom/nuance/swype/input/AlphaHandWritingContainerView;

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mContainer:Lcom/nuance/swype/input/AlphaHandWritingContainerView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->updateHandwritingPadSize()V

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->dismissPopupKeyboard()V

    .line 196
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->showHandWritingView(Z)V

    .line 198
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v1, p0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->addRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 199
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setKeyboardForTextEntry(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 200
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/Composition;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 201
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->flushCurrentActiveWord()V

    .line 204
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v1, v5}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setWidth(I)V

    .line 205
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v1, v5}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setHeight(I)V

    .line 206
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->changeWriteRecognitionMode()V

    .line 207
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->startSession(I)V

    .line 209
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 211
    :cond_2
    iput v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    .line 212
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setNumbersAndSymbolsCatetory(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 218
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    const-string v2, "hwr_auto_recognize_delay_alpha"

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_alpha_default_ms:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/nuance/swype/input/settings/InputPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 221
    .local v0, "delayMS":I
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v1, v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setRecognizerDelay(I)V

    .line 223
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->startAlphaInput()V

    .line 225
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v1

    if-nez v1, :cond_3

    .line 226
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->postDelayShowingStartOfWordCandidate()V

    .line 229
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->removeHowToUseToastMsg()V

    .line 230
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->postHowToUseToastMsg()V

    .line 231
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->postDelayResumeSpeech()V

    .line 232
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v1, v5}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->enableUsageLogging(Z)I

    .line 233
    return-void

    .line 214
    .end local v0    # "delayMS":I
    :cond_4
    iput v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    .line 215
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setTextCategory(Lcom/nuance/swype/input/InputFieldInfo;)V

    goto :goto_0
.end method

.method updateCandidatesList(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 3
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 894
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mStarted:Z

    if-nez v0, :cond_0

    .line 895
    iput-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 919
    :goto_0
    return-void

    .line 899
    :cond_0
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 901
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_4

    .line 902
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v2, :cond_3

    const/4 v0, 0x1

    .line 906
    :goto_1
    if-eqz v0, :cond_1

    .line 907
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2, v1}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 909
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->HWR:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_2

    .line 910
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->appendCandidatesFromAlphaInput()V

    .line 912
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    sget-object v1, Lcom/nuance/swype/input/CandidatesListView$Format;->DEFAULT:Lcom/nuance/swype/input/CandidatesListView$Format;

    invoke-virtual {p0, p0, v0, v1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 918
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 902
    goto :goto_1

    .line 914
    :cond_4
    iput-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 915
    sget-object v0, Lcom/nuance/swype/input/CandidatesListView$Format;->NONE:Lcom/nuance/swype/input/CandidatesListView$Format;

    invoke-virtual {p0, p0, v2, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    goto :goto_2
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
    .line 143
    invoke-super/range {p0 .. p6}, Lcom/nuance/swype/input/InputView;->updateSelection(IIIIII)V

    .line 150
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    if-lez v0, :cond_1

    if-ne p3, p6, :cond_0

    if-eq p4, p6, :cond_1

    :cond_0
    const/4 v0, -0x1

    if-eq p6, v0, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()V

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateCandidatesList(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 158
    :cond_1
    if-ge p3, p4, :cond_2

    .line 159
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0, p3, p4}, Lcom/nuance/swype/input/Composition;->setSelection(II)V

    .line 163
    :cond_2
    return-void
.end method
