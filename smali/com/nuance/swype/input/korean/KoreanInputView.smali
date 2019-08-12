.class public Lcom/nuance/swype/input/korean/KoreanInputView;
.super Lcom/nuance/swype/input/InputView;
.source "KoreanInputView.java"

# interfaces
.implements Lcom/nuance/swype/input/CandidatesListView$CandidateListener;


# static fields
.field private static final LONG_PRESS_THREASHOLD:I = 0x3

.field private static final TERMINAL_PUNCT_PREDICTION:Ljava/lang/String; = ",.!?"

.field private static acKoreanInput:Lcom/nuance/dlm/ACKoreanInput;


# instance fields
.field private final CHUNJIIN_KEYCODE_NUM_ONE:I

.field private final CHUNJIIN_KEYCODE_NUM_THREE:I

.field private final CHUNJIIN_KEYCODE_NUM_TWO:I

.field activeHangul:Ljava/lang/StringBuilder;

.field private final inputViewHandlerCallback:Landroid/os/Handler$Callback;

.field private isTimeoutBySpaceKey:Z

.field private mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

.field private mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

.field private mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

.field private mFGWordErrorSpan:Landroid/text/style/ForegroundColorSpan;

.field protected mInlineWord:Landroid/text/SpannableStringBuilder;

.field private final mInputViewHandler:Landroid/os/Handler;

.field protected mKoAutoCorrectionEnabled:Z

.field protected mKoAutoCorrectionLevel:I

.field protected mKoAutoPunctuationOn:Z

.field protected mKoKeyboardInputSuggestionOn:Z

.field protected mKoPredictionOff:Z

.field protected mKoTextInputPredictionOn:Z

.field protected mKoWordCompletionPoint:I

.field private mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

.field private final mWordComposeSpan:Landroid/text/style/UnderlineSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/input/korean/KoreanInputView;->acKoreanInput:Lcom/nuance/dlm/ACKoreanInput;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1641
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoPredictionOff:Z

    .line 93
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    .line 98
    new-instance v0, Lcom/nuance/swype/input/korean/KoreanInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/korean/KoreanInputView$1;-><init>(Lcom/nuance/swype/input/korean/KoreanInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->inputViewHandlerCallback:Landroid/os/Handler$Callback;

    .line 152
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->inputViewHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    .line 1370
    const/16 v0, 0x3163

    iput v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->CHUNJIIN_KEYCODE_NUM_ONE:I

    .line 1371
    const/16 v0, 0x318d

    iput v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->CHUNJIIN_KEYCODE_NUM_TWO:I

    .line 1372
    const/16 v0, 0x3161

    iput v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->CHUNJIIN_KEYCODE_NUM_THREE:I

    .line 1642
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 1645
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoPredictionOff:Z

    .line 93
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    .line 98
    new-instance v0, Lcom/nuance/swype/input/korean/KoreanInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/korean/KoreanInputView$1;-><init>(Lcom/nuance/swype/input/korean/KoreanInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->inputViewHandlerCallback:Landroid/os/Handler$Callback;

    .line 152
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->inputViewHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    .line 1370
    const/16 v0, 0x3163

    iput v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->CHUNJIIN_KEYCODE_NUM_ONE:I

    .line 1371
    const/16 v0, 0x318d

    iput v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->CHUNJIIN_KEYCODE_NUM_TWO:I

    .line 1372
    const/16 v0, 0x3161

    iput v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->CHUNJIIN_KEYCODE_NUM_THREE:I

    .line 1646
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/CandidatesListView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/CandidatesListView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/CandidatesListView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/korean/KoreanInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->showStartOfWordCandidateList()V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/korean/KoreanInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setSpeechViewHost()V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/korean/KoreanInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->resumeSpeech()V

    return-void
.end method

.method static synthetic access$600()Lcom/nuance/dlm/ACKoreanInput;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanInputView;->acKoreanInput:Lcom/nuance/dlm/ACKoreanInput;

    return-object v0
.end method

.method static synthetic access$602(Lcom/nuance/dlm/ACKoreanInput;)Lcom/nuance/dlm/ACKoreanInput;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/dlm/ACKoreanInput;

    .prologue
    .line 68
    sput-object p0, Lcom/nuance/swype/input/korean/KoreanInputView;->acKoreanInput:Lcom/nuance/dlm/ACKoreanInput;

    return-object p0
.end method

.method private addCompoundingWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "wordJustSelected"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 1191
    if-nez p1, :cond_1

    .line 1229
    :cond_0
    :goto_0
    return-void

    .line 1195
    :cond_1
    const/16 v4, 0x41

    invoke-interface {p1, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1197
    .local v3, "seqBeforeCursor":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 1199
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1201
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 1203
    .local v2, "index":I
    if-lez v2, :cond_0

    .line 1205
    :goto_1
    if-lez v2, :cond_2

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1207
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1210
    :cond_2
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1211
    add-int/lit8 v2, v2, 0x1

    .line 1214
    :cond_3
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1217
    .local v0, "compoundWord":Ljava/lang/String;
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1219
    .local v1, "contextBeforeCompoundWord":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v4, v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x40

    if-gt v4, v5, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isUDBSubstitutionField()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1224
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setContext([C)V

    .line 1225
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->noteWordDone(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1405
    if-eqz p1, :cond_0

    .line 1407
    const-string v0, ""

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1410
    :cond_0
    return-void
.end method

.method private composingState()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 835
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/CandidatesListView;->wordCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 840
    :cond_0
    return v0
.end method

.method private composingWordCandidates()Z
    .locals 2

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_1

    .line 1081
    :cond_0
    const/4 v0, 0x1

    .line 1084
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private displayInlineHangul(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Z)V
    .locals 6
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "hangul"    # Ljava/lang/CharSequence;
    .param p3, "setSpan"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1375
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1376
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1377
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1378
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1379
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldSetComosingSpan()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1380
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x121

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1384
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {p1, v0, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1388
    :goto_0
    return-void

    .line 1386
    :cond_2
    const-string v0, ""

    invoke-interface {p1, v0, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method private endInputSession()V
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoTextInputPredictionOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->finishSession()V

    .line 420
    :cond_0
    return-void
.end method

.method private handleAutoPunct()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1296
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1297
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 1298
    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1299
    const-string v0, "."

    .line 1300
    .local v0, "autopunct":Ljava/lang/CharSequence;
    invoke-interface {v1, v0, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1301
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyChar(C)V

    .line 1303
    .end local v0    # "autopunct":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method private handlePrediction(Landroid/graphics/Point;I[IJ)V
    .locals 4
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "eventTime"    # J

    .prologue
    const/4 v3, 0x1

    .line 1324
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1325
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1368
    :cond_0
    :goto_0
    return-void

    .line 1328
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x3163

    if-eq p2, v1, :cond_2

    const/16 v1, 0x318d

    if-eq p2, v1, :cond_2

    const/16 v1, 0x3161

    if-ne p2, v1, :cond_3

    .line 1330
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->multiTapTimeout()Z

    .line 1332
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v1, :cond_0

    .line 1334
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSelectionKeys(Landroid/view/inputmethod/InputConnection;)Z

    .line 1338
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 1340
    iput v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mLastInput:I

    .line 1344
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 1345
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContextBuffer()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->setContextBufferKo(Ljava/lang/CharSequence;)V

    .line 1350
    :cond_5
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/nuance/swype/input/korean/KoreanInputView;->processKeyCodeDetectCapsSupport(Landroid/graphics/Point;IJ)Z

    move-result v1

    .line 1351
    if-eqz v1, :cond_6

    .line 1352
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    int-to-char v2, p2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/EditState;->characterTyped(C)V

    .line 1356
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getInlineHangul(Ljava/lang/StringBuilder;)V

    .line 1357
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->displayInlineHangul(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Z)V

    .line 1360
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto :goto_0

    .line 1365
    :cond_6
    int-to-char v1, p2

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendBackCharOnFailProcess(C)V

    goto :goto_0
.end method

.method private handlePunctOrSymbol(I)V
    .locals 5
    .param p1, "primaryCode"    # I

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 1414
    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    .line 1415
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleSpace(ZI)Z

    .line 1452
    :goto_0
    return-void

    .line 1419
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1420
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Z)V

    .line 1426
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 1428
    if-ne p1, v4, :cond_1

    .line 1429
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->setContextBufferKo(Ljava/lang/CharSequence;)V

    .line 1432
    :cond_1
    int-to-char v0, p1

    .line 1433
    .local v0, "keyChar":C
    const/16 v1, 0x2c

    if-eq v1, v0, :cond_2

    const/16 v1, 0x2e

    if-eq v1, v0, :cond_2

    const/16 v1, 0x21

    if-eq v1, v0, :cond_2

    const/16 v1, 0x3f

    if-ne v1, v0, :cond_3

    .line 1434
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->noteWordDone(Ljava/lang/String;)Z

    .line 1437
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 1438
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyChar(C)V

    .line 1440
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateMultitapDeadkey(Z)V

    .line 1442
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mNextWordPredictionOn:Z

    if-eqz v1, :cond_4

    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1443
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateWordContext()V

    .line 1446
    if-eq p1, v4, :cond_4

    .line 1447
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 1451
    :cond_4
    iput v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mLastInput:I

    goto :goto_0

    .line 1423
    .end local v0    # "keyChar":C
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_1
.end method

.method private handleWhiteSpaces(I)V
    .locals 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 1392
    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    .line 1393
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleSpace(ZI)Z

    .line 1399
    :goto_0
    return-void

    .line 1398
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->handlePunctOrSymbol(I)V

    goto :goto_0
.end method

.method private hasInputQueue()Z
    .locals 1

    .prologue
    .line 2483
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

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

.method private isJamoExisted(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 1881
    if-eqz p1, :cond_3

    .line 1882
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1883
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1884
    .local v0, "c":C
    const/16 v2, 0x1100

    if-lt v0, v2, :cond_0

    const/16 v2, 0x11ff

    if-le v0, v2, :cond_1

    :cond_0
    const/16 v2, 0x3130

    if-lt v0, v2, :cond_2

    const/16 v2, 0x318f

    if-gt v0, v2, :cond_2

    .line 1885
    :cond_1
    const/4 v2, 0x1

    .line 1889
    .end local v0    # "c":C
    .end local v1    # "pos":I
    :goto_1
    return v2

    .line 1882
    .restart local v0    # "c":C
    .restart local v1    # "pos":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1889
    .end local v0    # "c":C
    .end local v1    # "pos":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isKoreanDoubleJamoKey(I)Z
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 2026
    const/16 v0, 0x3143

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3149

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3138

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3132

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3146

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3152

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3156

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWordAcceptingSymbol(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 539
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v0

    return v0
.end method

.method private loadSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1595
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 1598
    .local v0, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    const-string v1, "korean_auto_correction"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoAutoCorrectionEnabled:Z

    .line 1601
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCorrectionLevel()I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoAutoCorrectionLevel:I

    .line 1604
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->getWordCompletionPoint()I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoWordCompletionPoint:I

    .line 1607
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isTraceEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mTraceInputSuggestionOn:Z

    .line 1611
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoAutoCorrectionEnabled:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoWordCompletionPoint:I

    if-eqz v1, :cond_2

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoKeyboardInputSuggestionOn:Z

    .line 1614
    const-string v1, "auto_punctuation"

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoAutoPunctuationOn:Z

    .line 1619
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoKeyboardInputSuggestionOn:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoPredictionOff:Z

    if-nez v1, :cond_3

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoKeyboardInputSuggestionOn:Z

    .line 1621
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mTraceInputSuggestionOn:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoPredictionOff:Z

    if-nez v1, :cond_4

    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mTraceInputSuggestionOn:Z

    .line 1624
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mTraceInputSuggestionOn:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoKeyboardInputSuggestionOn:Z

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->textInputFieldWithSuggestionDisabled()Z

    move-result v1

    if-nez v1, :cond_5

    :goto_3
    iput-boolean v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoTextInputPredictionOn:Z

    .line 1626
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getEnableKoreanConsonantInput()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->enableConsonantInput(Z)Z

    .line 1627
    return-void

    :cond_2
    move v1, v2

    .line 1611
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1619
    goto :goto_1

    :cond_4
    move v1, v2

    .line 1621
    goto :goto_2

    :cond_5
    move v3, v2

    .line 1624
    goto :goto_3
.end method

.method private moveHighlightToNearCandidate(I)Z
    .locals 12
    .param p1, "keyCode"    # I

    .prologue
    const/16 v11, 0x121

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2333
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v9

    if-gtz v9, :cond_2

    .line 2334
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    move v7, v8

    .line 2391
    :cond_1
    :goto_0
    return v7

    .line 2338
    :cond_2
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v5

    .line 2339
    .local v5, "wordCandidatesCount":I
    const/4 v3, 0x0

    .line 2340
    .local v3, "isRight":Z
    const/16 v9, 0x16

    if-ne p1, v9, :cond_3

    .line 2341
    const/4 v3, 0x1

    .line 2343
    :cond_3
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v1

    .line 2345
    .local v1, "index":I
    if-eqz v3, :cond_7

    .line 2346
    add-int/lit8 v1, v1, 0x1

    .line 2352
    :goto_1
    if-eqz v3, :cond_8

    if-lt v1, v5, :cond_8

    .line 2353
    add-int/lit8 v1, v5, -0x1

    .line 2359
    :cond_4
    :goto_2
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9, v1}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 2360
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v10, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v10, v1}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 2361
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->syncCandidateDisplayStyleToMode()V

    .line 2362
    if-eqz v3, :cond_9

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9, v1}, Lcom/nuance/swype/input/CandidatesListView;->isKeyOutofRightBound(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2363
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/CandidatesListView;->scrollNext()V

    .line 2369
    :cond_5
    :goto_3
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v9

    sget-object v10, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v9, v10, :cond_6

    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2374
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2375
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2376
    .local v2, "inlineword":Landroid/text/SpannableStringBuilder;
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 2377
    .local v4, "span":Landroid/text/style/UnderlineSpan;
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v6

    .line 2378
    .local v6, "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2379
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2380
    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2381
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v2, v4, v8, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2382
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v2, v4, v8, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2383
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2384
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 2385
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2386
    invoke-static {v0, v2}, Lcom/nuance/swype/util/InputConnectionUtils;->setComposingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2387
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 2349
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "inlineword":Landroid/text/SpannableStringBuilder;
    .end local v4    # "span":Landroid/text/style/UnderlineSpan;
    .end local v6    # "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2355
    :cond_8
    if-nez v3, :cond_4

    if-gez v1, :cond_4

    .line 2356
    const/4 v1, 0x0

    goto :goto_2

    .line 2365
    :cond_9
    if-nez v3, :cond_5

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9, v1}, Lcom/nuance/swype/input/CandidatesListView;->isKeyOutofLeftBound(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2366
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

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

    .line 2268
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v8

    if-gtz v8, :cond_2

    .line 2269
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    move v6, v7

    .line 2329
    :cond_1
    :goto_0
    return v6

    .line 2273
    :cond_2
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v4

    .line 2274
    .local v4, "wordCandidatesCount":I
    const/4 v2, 0x0

    .line 2275
    .local v2, "isRight":Z
    const/16 v8, 0x16

    if-ne p1, v8, :cond_3

    .line 2276
    const/4 v2, 0x1

    .line 2278
    :cond_3
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v1

    .line 2280
    .local v1, "index":I
    if-eqz v2, :cond_7

    .line 2281
    add-int/lit8 v1, v1, 0x1

    .line 2287
    :goto_1
    if-eqz v2, :cond_8

    if-lt v1, v4, :cond_8

    .line 2288
    add-int/lit8 v1, v4, -0x1

    .line 2294
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8, v1}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 2295
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8, v6}, Lcom/nuance/swype/input/CandidatesListView;->setHardwareKeyboardUsed(Z)V

    .line 2296
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9, v1}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 2297
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->syncCandidateDisplayStyleToMode()V

    .line 2298
    if-eqz v2, :cond_9

    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8, v1}, Lcom/nuance/swype/input/CandidatesListView;->isKeyOutofRightBound(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2299
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->scrollNext()V

    .line 2305
    :cond_5
    :goto_3
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v8

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v8, v9, :cond_6

    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2310
    :cond_6
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v8

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v8, v9, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2312
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v5

    .line 2313
    .local v5, "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2314
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2315
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2316
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 2317
    .local v3, "span":Landroid/text/style/UnderlineSpan;
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2318
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2320
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2322
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 2323
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2324
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2325
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 2284
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "span":Landroid/text/style/UnderlineSpan;
    .end local v5    # "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    .line 2290
    :cond_8
    if-nez v2, :cond_4

    if-gez v1, :cond_4

    .line 2291
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 2301
    :cond_9
    if-nez v2, :cond_5

    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8, v1}, Lcom/nuance/swype/input/CandidatesListView;->isKeyOutofLeftBound(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2302
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

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

    .line 2215
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v8

    if-gtz v8, :cond_2

    .line 2217
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    move v6, v7

    .line 2264
    :cond_1
    :goto_0
    return v6

    .line 2221
    :cond_2
    const/4 v2, 0x0

    .line 2222
    .local v2, "isDown":Z
    const/16 v8, 0x14

    if-ne p1, v8, :cond_3

    .line 2223
    const/4 v2, 0x1

    .line 2226
    :cond_3
    const/4 v1, 0x0

    .line 2227
    .local v1, "index":I
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v4

    .line 2229
    .local v4, "wordCandidatesCount":I
    if-eqz v2, :cond_4

    .line 2230
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->getCenterCandidateIndex()I

    move-result v1

    .line 2231
    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 2234
    if-ltz v1, :cond_4

    if-ge v1, v4, :cond_4

    .line 2235
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8, v1}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 2236
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8, v6}, Lcom/nuance/swype/input/CandidatesListView;->setHardwareKeyboardUsed(Z)V

    .line 2237
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9, v1}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 2238
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->syncCandidateDisplayStyleToMode()V

    .line 2242
    :cond_4
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v8

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v8, v9, :cond_5

    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2246
    :cond_5
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v8

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v8, v9, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2248
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v5

    .line 2249
    .local v5, "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2250
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2251
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2252
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 2253
    .local v3, "span":Landroid/text/style/UnderlineSpan;
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2254
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2256
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2258
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 2259
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2260
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2261
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0
.end method

.method private postDelayResumeSpeech()V
    .locals 4

    .prologue
    const/16 v1, 0xb

    .line 362
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 366
    return-void
.end method

.method private postDelayShowingStartOfWordCandidate()V
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 198
    return-void
.end method

.method private postToastMsg(I)V
    .locals 4
    .param p1, "msg"    # I

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->removeToastMsg(I)V

    .line 207
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 208
    return-void
.end method

.method private processSpaceKeyState(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->spaceKey()V

    .line 1235
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1237
    if-eqz p1, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->selectedWord()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->addCompoundingWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 1241
    :cond_0
    return-void
.end method

.method private processWordSelection(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;Z)V
    .locals 8
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p3, "userExplicitPick"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1830
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v1

    .line 1831
    .local v1, "index":I
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1833
    .local v3, "word":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1877
    :goto_0
    return-void

    .line 1837
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v4, :cond_1

    .line 1838
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/nuance/swype/input/EditState;->selectWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1841
    :cond_1
    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCompletionOn:Z

    if-eqz v4, :cond_4

    if-ltz v1, :cond_4

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v4}, Lcom/nuance/swype/input/Completions;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1842
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v4

    .line 1843
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v5, v1}, Lcom/nuance/swype/input/Completions;->get(I)Landroid/view/inputmethod/CompletionInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 1844
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 1862
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1863
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_3

    .line 1865
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v4, v5, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v6, :cond_2

    const-string v4, ",.!?"

    invoke-interface {v3, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1867
    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1868
    .local v2, "seq":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1869
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendBackspace(I)V

    .line 1873
    .end local v2    # "seq":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1876
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    goto :goto_0

    .line 1846
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getSpeechAlternateCandidates()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1849
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v4, v1, p3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->wordSelected(IZ)V

    .line 1851
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isUDBSubstitutionField()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1854
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->noteWordDone(Ljava/lang/String;)Z

    .line 1856
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearAllKeys()V

    goto :goto_1

    .line 1858
    :cond_6
    invoke-super {p0, v1}, Lcom/nuance/swype/input/InputView;->speechChooseCandidate(I)V

    goto :goto_1
.end method

.method private readStyles(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v8, -0x10000

    .line 1699
    sget v5, Lcom/nuance/swype/input/R$style;->InlineStringAlpha:I

    sget-object v6, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha:[I

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1702
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    .line 1704
    .local v4, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 1705
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 1707
    .local v1, "attr":I
    sget v5, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_wordErrorForegroundColor:I

    if-ne v1, v5, :cond_1

    .line 1708
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mFGWordErrorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 1712
    const/4 v5, 0x3

    new-array v2, v5, [F

    .line 1713
    .local v2, "hsv":[F
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mFGWordErrorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v5}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v5

    invoke-static {v5, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1715
    const/4 v5, 0x2

    aget v6, v2, v5

    const/high16 v7, 0x3f400000    # 0.75f

    mul-float/2addr v6, v7

    aput v6, v2, v5

    .line 1704
    .end local v2    # "hsv":[F
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1716
    :cond_1
    sget v5, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_multitapForegroundColor:I

    if-ne v1, v5, :cond_2

    .line 1717
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const/4 v6, -0x1

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    goto :goto_1

    .line 1719
    :cond_2
    sget v5, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_multitapBackgroundColor:I

    if-ne v1, v5, :cond_0

    .line 1720
    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    goto :goto_1

    .line 1725
    .end local v1    # "attr":I
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1726
    return-void
.end method

.method private removeAllMessages()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 162
    return-void
.end method

.method private removeToastMsg(I)V
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 201
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 202
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    return-void
.end method

.method private resetShiftState()V
    .locals 2

    .prologue
    .line 1818
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v1, :cond_1

    .line 1825
    :cond_0
    :goto_0
    return-void

    .line 1822
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v0, v1, :cond_0

    .line 1823
    :cond_2
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_0
.end method

.method private selectDefaultSuggestion()V
    .locals 1

    .prologue
    .line 1935
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1936
    return-void
.end method

.method private selectDefaultSuggestion(Z)V
    .locals 3
    .param p1, "addCompoundingWord"    # Z

    .prologue
    .line 1902
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->shouldSelectDefaultCandidate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1903
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    .line 1904
    .local v0, "defaultCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->processWordSelection(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;Z)V

    .line 1905
    if-eqz p1, :cond_0

    .line 1906
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->addCompoundingWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 1911
    .end local v0    # "defaultCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_0
    :goto_0
    return-void

    .line 1909
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    goto :goto_0
.end method

.method private sendBackCharOnFailProcess(C)V
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    .line 1307
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    .line 1310
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyChar(C)V

    .line 1311
    return-void
.end method

.method private setCorrectionLevel(Ljava/lang/String;)V
    .locals 3
    .param p1, "inputMode"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x63

    .line 1256
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoKeyboardInputSuggestionOn:Z

    if-eqz v0, :cond_0

    .line 1257
    const-string v0, "multitap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1259
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setAttribute(IZ)Z

    .line 1272
    :cond_0
    :goto_0
    return-void

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoAutoCorrectionEnabled:Z

    invoke-virtual {v0, v2, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setAttribute(IZ)Z

    .line 1267
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    const/16 v1, 0x65

    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoWordCompletionPoint:I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setAttribute(II)Z

    goto :goto_0
.end method

.method private setMultitapOrAmbigMode()V
    .locals 2

    .prologue
    .line 1245
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-eq v0, v1, :cond_1

    .line 1246
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setMultiTapInputMode(Z)Z

    .line 1252
    :cond_0
    :goto_0
    return-void

    .line 1250
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setMultiTapInputMode(Z)Z

    goto :goto_0
.end method

.method private showStartOfWordCandidateList()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 165
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastSavedActiveWordAndSet()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "lastWord":Ljava/lang/String;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 168
    new-array v0, v5, [C

    .line 169
    .local v0, "chArray":[C
    const/4 v1, 0x0

    .local v1, "iCharPos":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 170
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v6

    .line 171
    aget-char v4, v0, v6

    const/16 v7, 0x5a

    if-gt v4, v7, :cond_0

    const/16 v7, 0x41

    if-lt v4, v7, :cond_0

    move v4, v5

    :goto_1
    if-eqz v4, :cond_1

    .line 172
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    sget-object v7, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v4, v0, v5, v7}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 169
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 171
    goto :goto_1

    .line 174
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    sget-object v7, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v4, v0, v5, v7}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_2

    .line 177
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v4}, Lcom/nuance/swype/input/EditState;->composeWordCandidate()V

    .line 179
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 180
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 181
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getInlineHangul(Ljava/lang/StringBuilder;)V

    .line 182
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v4, v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->displayInlineHangul(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Z)V

    .line 184
    :cond_3
    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 193
    .end local v0    # "chArray":[C
    .end local v1    # "iCharPos":I
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    :goto_3
    return-void

    .line 185
    :cond_5
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastShownCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v4, v5, :cond_6

    .line 186
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateWordContext()V

    .line 187
    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto :goto_3

    .line 189
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isEmptyCandidateList()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 190
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->showNextWordPrediction()V

    goto :goto_3
.end method

.method private startInputSession()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 370
    iget-boolean v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoTextInputPredictionOn:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v3, :cond_4

    .line 372
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->startSession()V

    .line 373
    iget-boolean v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoTextInputPredictionOn:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInURLEmail:Z

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->isNextWordPredictionEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mNextWordPredictionOn:Z

    .line 375
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    const/16 v6, 0x65

    iget v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoWordCompletionPoint:I

    invoke-virtual {v3, v6, v7}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setAttribute(II)Z

    .line 377
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    const/16 v6, 0x63

    iget-boolean v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoAutoCorrectionEnabled:Z

    invoke-virtual {v3, v6, v7}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setAttribute(IZ)Z

    .line 379
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    const/16 v6, 0x64

    iget v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoAutoCorrectionLevel:I

    invoke-virtual {v3, v6, v7}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setAttribute(II)Z

    .line 381
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    const/16 v6, 0x68

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$InputMode;->isTraceAutoAcceptEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_1
    invoke-virtual {v3, v6, v4}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setAttribute(II)Z

    .line 388
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v0

    .line 389
    .local v0, "primaryLanguageId":I
    const/4 v1, 0x0

    .line 391
    .local v1, "secondaryLanguageId":I
    iget v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v4, 0x600

    if-ne v3, v4, :cond_7

    .line 392
    const/16 v0, 0x712

    .line 398
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v3, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setLanguage(II)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v2

    .line 399
    .local v2, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    sget-object v3, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v2, v3, :cond_3

    .line 401
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v4, v4, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/nuance/swype/input/DatabaseConfig;->removeIncompatibleDBFiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 403
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v3, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setLanguage(II)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v2

    .line 404
    sget-object v3, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v2, v3, :cond_3

    .line 406
    :cond_2
    iput-boolean v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->isLDBCompatible:Z

    .line 407
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->promptUserToUpdateLanguage()V

    .line 408
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->toggleKeyboard(Z)V

    .line 412
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setExactInList(I)V

    .line 414
    .end local v0    # "primaryLanguageId":I
    .end local v1    # "secondaryLanguageId":I
    .end local v2    # "status":Lcom/nuance/input/swypecorelib/XT9Status;
    :cond_4
    return-void

    :cond_5
    move v3, v5

    .line 373
    goto :goto_0

    :cond_6
    move v4, v5

    .line 381
    goto :goto_1

    .line 394
    .restart local v0    # "primaryLanguageId":I
    .restart local v1    # "secondaryLanguageId":I
    :cond_7
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    instance-of v3, v3, Lcom/nuance/swype/input/BilingualLanguage;

    if-eqz v3, :cond_0

    .line 395
    const/16 v1, 0x109

    goto :goto_2
.end method

.method private toggleKeyboardMode()V
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->toggleSymbolKeyboard()V

    .line 876
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->abortKey()V

    .line 877
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setMultitapOrAmbigMode()V

    .line 878
    return-void
.end method


# virtual methods
.method protected checkMultiTap(JI)V
    .locals 5
    .param p1, "eventTime"    # J
    .param p3, "keyIndex"    # I

    .prologue
    const/16 v4, 0x6a

    const/4 v3, 0x0

    .line 1915
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->dismissPreviewPopup()V

    .line 1916
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->checkMultiTap(JI)V

    .line 1917
    invoke-virtual {p0, p3}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1918
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-nez v0, :cond_1

    .line 1932
    :cond_0
    :goto_0
    return-void

    .line 1921
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0x3163

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0x318d

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0x3161

    if-ne v1, v2, :cond_0

    .line 1927
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInMultiTap:Z

    .line 1928
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1929
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected clearAllKeys()V
    .locals 1

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1581
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1582
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->clearAllKeys()Z

    .line 1585
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateMultitapDeadkey(Z)V

    .line 1586
    return-void
.end method

.method public clearCurrentActiveWord()V
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 263
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 264
    return-void
.end method

.method public closeDialogs()V
    .locals 0

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->dimissRemoveUdbWordDialog()V

    .line 1998
    return-void
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 3
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 212
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 213
    check-cast p2, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    .end local p2    # "xt9coreinput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    iput-object p2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    .line 214
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

    .line 215
    new-instance v0, Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 216
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 218
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 220
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->readStyles(Landroid/content/Context;)V

    .line 222
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanInputView;->acKoreanInput:Lcom/nuance/dlm/ACKoreanInput;

    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    new-instance v1, Lcom/nuance/swype/input/korean/KoreanInputView$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/korean/KoreanInputView$2;-><init>(Lcom/nuance/swype/input/korean/KoreanInputView;)V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect;->doPostStart(Ljava/lang/Runnable;)V

    .line 233
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->destroy()V

    .line 239
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanInputView;->acKoreanInput:Lcom/nuance/dlm/ACKoreanInput;

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanInputView;->acKoreanInput:Lcom/nuance/dlm/ACKoreanInput;

    invoke-virtual {v0}, Lcom/nuance/dlm/ACKoreanInput;->release()V

    .line 241
    sput-object v1, Lcom/nuance/swype/input/korean/KoreanInputView;->acKoreanInput:Lcom/nuance/dlm/ACKoreanInput;

    .line 244
    :cond_0
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 246
    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 247
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->dimissRemoveUdbWordDialog()V

    .line 248
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 1959
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoTextInputPredictionOn:Z

    if-nez v0, :cond_0

    .line 1960
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 1962
    :cond_0
    return-void
.end method

.method public finishInput()V
    .locals 1

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->removeAllMessages()V

    .line 427
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-nez v0, :cond_0

    .line 444
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->endSession()V

    .line 433
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->endInputSession()V

    .line 435
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    .line 437
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mLastInput:I

    .line 439
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 441
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->dimissRemoveUdbWordDialog()V

    .line 443
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    goto :goto_0
.end method

.method public flushCurrentActiveWord()V
    .locals 1

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 449
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 450
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 451
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 452
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 453
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 455
    :cond_0
    return-void
.end method

.method public getWordCandidateListContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    return-object v0
.end method

.method public getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    return-object v0
.end method

.method public handleBackspace(I)Z
    .locals 6
    .param p1, "repeatedCount"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 882
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 883
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v3, :cond_0

    if-nez v1, :cond_2

    .line 884
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendBackspace(I)V

    .line 959
    :cond_1
    :goto_0
    return v5

    .line 887
    :cond_2
    const/16 v3, 0x32

    invoke-interface {v1, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 890
    .local v0, "cSeqBefore":Ljava/lang/CharSequence;
    if-nez v0, :cond_3

    .line 891
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 892
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendBackspace(I)V

    .line 893
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->showNextWordPrediction()V

    .line 894
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearAllKeys()V

    goto :goto_0

    .line 898
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 899
    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 901
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 902
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 903
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->IsTextFieldEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 904
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 908
    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 913
    .local v2, "lengthBefore":I
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v3

    if-nez v3, :cond_6

    if-lez v2, :cond_6

    .line 914
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 915
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendBackspace(I)V

    .line 916
    const/4 v3, 0x3

    if-gt p1, v3, :cond_5

    .line 917
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->showNextWordPrediction()V

    .line 919
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearAllKeys()V

    goto :goto_0

    .line 924
    :cond_6
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v3

    if-lez v3, :cond_a

    .line 925
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 928
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSelectionKeys(Landroid/view/inputmethod/InputConnection;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 930
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->clearKey()Z

    .line 933
    :cond_7
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v3

    if-lez v3, :cond_8

    .line 934
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getInlineHangul(Ljava/lang/StringBuilder;)V

    .line 935
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v3, v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->displayInlineHangul(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Z)V

    .line 936
    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_0

    .line 940
    :cond_8
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v3, v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->displayInlineHangul(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Z)V

    .line 942
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->showNextWordPrediction()V

    .line 943
    iget-boolean v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mNextWordPredictionOn:Z

    if-nez v3, :cond_9

    .line 944
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 946
    :cond_9
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 947
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 948
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->start()V

    goto/16 :goto_0

    .line 955
    :cond_a
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendBackspace(I)V

    .line 956
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearAllKeys()V

    .line 957
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->setContextBufferKo(Ljava/lang/CharSequence;)V

    .line 958
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->backSpace()V

    goto/16 :goto_0
.end method

.method public handleCharKey(Landroid/graphics/Point;I[IJ)V
    .locals 8
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "eventTime"    # J

    .prologue
    const/16 v6, 0x121

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 746
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/input/InputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    .line 748
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->removeToastMsg(I)V

    .line 753
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoTextInputPredictionOn:Z

    if-nez v1, :cond_6

    .line 755
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->end()V

    .line 757
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 758
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p2

    .line 761
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isMultitapping()Z

    move-result v1

    if-nez v1, :cond_5

    .line 762
    int-to-char v1, p2

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyChar(C)V

    .line 811
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

    int-to-char v2, p2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isWordCompounder(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->supportsAlphaMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 814
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->toggleKeyboardMode()V

    .line 817
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isMultitapping()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 818
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateMultitapDeadkey(Z)V

    .line 821
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->recordUsedTimeTapDisplaySelectionList()V

    .line 824
    iput v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mLastInput:I

    .line 825
    return-void

    .line 765
    :cond_5
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 766
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 767
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    int-to-char v2, p2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 769
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 772
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 776
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 778
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    .line 779
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 787
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentWordCandiatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_7

    .line 789
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearAllKeys()V

    .line 790
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateWordContext()V

    .line 793
    :cond_7
    int-to-char v1, p2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 795
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleWhiteSpaces(I)V

    goto :goto_0

    .line 796
    :cond_8
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->isWordAcceptingSymbol(C)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/util/CharacterUtilities;->isWordCompounder(I)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_9
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingState()Z

    move-result v1

    if-nez v1, :cond_b

    .line 805
    :cond_a
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->handlePunctOrSymbol(I)V

    goto/16 :goto_0

    .line 807
    :cond_b
    invoke-direct/range {p0 .. p5}, Lcom/nuance/swype/input/korean/KoreanInputView;->handlePrediction(Landroid/graphics/Point;I[IJ)V

    goto/16 :goto_0
.end method

.method public handleClose()V
    .locals 1

    .prologue
    .line 1049
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->dimissRemoveUdbWordDialog()V

    .line 1050
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1051
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->removeAllMessages()V

    .line 1053
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 1054
    return-void
.end method

.method public handleDelete(I)Z
    .locals 3
    .param p1, "repeatedCount"    # I

    .prologue
    const/4 v2, 0x1

    .line 1762
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/CandidatesListView;->wordCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1764
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1765
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Z)V

    .line 1775
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/CandidatesListView;->wordCount()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 1776
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 1779
    :cond_0
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateMultitapDeadkey(Z)V

    .line 1781
    iput v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mLastInput:I

    .line 1784
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1785
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v1, :cond_2

    if-nez v0, :cond_5

    .line 1801
    :cond_2
    :goto_1
    return v2

    .line 1767
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/CandidatesListView;->wordCount()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 1768
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Z)V

    goto :goto_0

    .line 1770
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 1771
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    goto :goto_0

    .line 1796
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_5
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1797
    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1798
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_1
.end method

.method protected handleGesture(Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 8
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v5, 0x0

    .line 1543
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v6

    if-lez v6, :cond_3

    .line 1544
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    .line 1545
    .local v0, "defaultCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v6

    sget-object v7, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_GESTURE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-ne v6, v7, :cond_3

    .line 1546
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1547
    .local v4, "word":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1548
    .local v1, "firstChar":C
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v6, v1}, Lcom/nuance/swype/util/CharacterUtilities;->isTerminalPunctuation(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1549
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    instance-of v6, v6, Lcom/nuance/swype/input/BilingualLanguage;

    if-eqz v6, :cond_0

    .line 1551
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->clear()V

    .line 1575
    .end local v0    # "defaultCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    .end local v1    # "firstChar":C
    .end local v4    # "word":Ljava/lang/String;
    :goto_0
    return v5

    .line 1554
    .restart local v0    # "defaultCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    .restart local v1    # "firstChar":C
    .restart local v4    # "word":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 1555
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->noteWordDone(Ljava/lang/String;)Z

    .line 1556
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v4, v6, v7}, Lcom/nuance/swype/input/IME;->onText(Ljava/lang/CharSequence;J)V

    .line 1559
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v3

    .line 1560
    .local v3, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v3, :cond_1

    .line 1561
    const-string v2, "Gesture"

    .line 1562
    .local v2, "type":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v5, v4}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctSpace(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1563
    const-string v2, "punct-space gesture"

    .line 1564
    invoke-virtual {v3}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordGestureType(Ljava/lang/String;)V

    .line 1570
    .end local v2    # "type":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 1566
    .restart local v2    # "type":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordGestureType(Ljava/lang/String;)V

    goto :goto_1

    .line 1575
    .end local v0    # "defaultCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    .end local v1    # "firstChar":C
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    .end local v4    # "word":Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleGesture(Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v5

    goto :goto_0
.end method

.method public handleHardKeyCapsLock(Z)Z
    .locals 1
    .param p1, "iscapslockon"    # Z

    .prologue
    .line 2143
    const/4 v0, 0x1

    return v0
.end method

.method public handleHardKeyDirectionKey(I)Z
    .locals 5
    .param p1, "keycode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 2162
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v3, :cond_2

    .line 2165
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    move v0, v1

    .line 2208
    :cond_1
    :goto_0
    return v0

    .line 2169
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2197
    :cond_3
    :pswitch_0
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2198
    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 2199
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    goto :goto_0

    .line 2172
    :pswitch_1
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2173
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v1

    if-eq v1, v4, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2174
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->moveHighlightToNearCandidateForNWP(I)Z

    move-result v0

    goto :goto_0

    .line 2176
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    goto :goto_0

    .line 2180
    :cond_5
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->moveHighlightToNearCandidate(I)Z

    move-result v0

    goto :goto_0

    .line 2182
    :pswitch_2
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2183
    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 2184
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    goto :goto_0

    .line 2187
    :cond_6
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2189
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v1

    if-eq v1, v4, :cond_7

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 2190
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->moveHightlightToCenter(I)Z

    move-result v0

    goto :goto_0

    .line 2192
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentActiveWord()V

    goto :goto_0

    .line 2202
    :cond_8
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2204
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentActiveWord()V

    move v0, v1

    .line 2205
    goto :goto_0

    .line 2169
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public handleHardKeyEndKey()Z
    .locals 11

    .prologue
    const/16 v10, 0x121

    const/16 v9, 0x7b

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2439
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v7

    if-gtz v7, :cond_2

    .line 2440
    :cond_0
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    move v5, v6

    .line 2479
    :cond_1
    :goto_0
    return v5

    .line 2444
    :cond_2
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v7, v8, :cond_4

    .line 2447
    :cond_3
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    goto :goto_0

    .line 2451
    :cond_4
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 2452
    .local v3, "wordCandidatesCount":I
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v7

    if-ge v7, v3, :cond_1

    .line 2456
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7, v3}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 2458
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8, v3}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 2459
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/CandidatesListView;->scrollEnd()V

    .line 2460
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->syncCandidateDisplayStyleToMode()V

    .line 2462
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2463
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2464
    .local v1, "inlineword":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 2465
    .local v2, "span":Landroid/text/style/UnderlineSpan;
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v4

    .line 2466
    .local v4, "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2467
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2468
    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2469
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v2, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2470
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v2, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2471
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2472
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 2473
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2474
    invoke-static {v0, v1}, Lcom/nuance/swype/util/InputConnectionUtils;->setComposingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2475
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0
.end method

.method public handleHardKeyEscapeKey()Z
    .locals 1

    .prologue
    .line 2153
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2154
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentActiveWord()V

    .line 2157
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardKeyHomeKey()Z
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v9, 0x121

    const/16 v8, 0x7a

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2396
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v6

    if-gtz v6, :cond_2

    .line 2397
    :cond_0
    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    move v4, v5

    .line 2435
    :cond_1
    :goto_0
    return v4

    .line 2401
    :cond_2
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v6

    sget-object v7, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v6

    sget-object v7, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v6

    sget-object v7, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v6, v7, :cond_4

    .line 2404
    :cond_3
    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    goto :goto_0

    .line 2408
    :cond_4
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v6

    if-eqz v6, :cond_1

    .line 2411
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v6, v5}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 2414
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7, v5}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 2415
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/CandidatesListView;->scrollHead()V

    .line 2416
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->syncCandidateDisplayStyleToMode()V

    .line 2418
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2419
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2420
    .local v1, "inlineword":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 2421
    .local v2, "span":Landroid/text/style/UnderlineSpan;
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v3

    .line 2422
    .local v3, "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2423
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2424
    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2425
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v2, v5, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2426
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v2, v5, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2427
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2428
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 2429
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2430
    invoke-static {v0, v1}, Lcom/nuance/swype/util/InputConnectionUtils;->setComposingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2431
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0
.end method

.method public handleHardkeyBackspace(I)Z
    .locals 1
    .param p1, "repeatedCount"    # I

    .prologue
    .line 2032
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleBackspace(I)Z

    move-result v0

    return v0
.end method

.method public handleHardkeyCharKey(I[ILandroid/view/KeyEvent;Z)V
    .locals 9
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "shiftable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2002
    if-nez p1, :cond_1

    .line 2023
    :cond_0
    :goto_0
    return-void

    .line 2005
    :cond_1
    const/4 v1, 0x0

    .line 2006
    .local v1, "pt":Landroid/graphics/Point;
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    instance-of v7, v0, Lcom/nuance/swype/input/BilingualLanguage;

    .line 2007
    .local v7, "isBilingual":Z
    if-eqz p4, :cond_2

    if-eqz v7, :cond_2

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->isKoreanDoubleJamoKey(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2008
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v0, v0

    if-ge v6, v0, :cond_2

    .line 2009
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v8, v0, v6

    .line 2010
    .local v8, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v0, v8, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    if-eqz v0, :cond_4

    iget-object v0, v8, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    aget v0, v0, v4

    if-ne p1, v0, :cond_4

    .line 2011
    new-instance v1, Landroid/graphics/Point;

    .end local v1    # "pt":Landroid/graphics/Point;
    iget v0, v8, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v2, v8, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget v2, v8, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v3, v8, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {v1, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 2016
    .end local v6    # "index":I
    .end local v8    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .restart local v1    # "pt":Landroid/graphics/Point;
    :cond_2
    if-nez p2, :cond_3

    .line 2017
    const/4 v0, 0x1

    new-array p2, v0, [I

    .end local p2    # "keyCodes":[I
    aput p1, p2, v4

    .line 2019
    .restart local p2    # "keyCodes":[I
    :cond_3
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    :goto_2
    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    .line 2020
    if-eqz p4, :cond_0

    if-eqz v7, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->isKoreanDoubleJamoKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2021
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_0

    .line 2008
    .restart local v6    # "index":I
    .restart local v8    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2019
    .end local v6    # "index":I
    .end local v8    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_5
    const-wide/16 v4, 0x0

    goto :goto_2
.end method

.method public handleHardkeyDelete(I)Z
    .locals 6
    .param p1, "repeatedCount"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2042
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 2044
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    .line 2045
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendBackspace(I)V

    .line 2087
    :cond_1
    :goto_0
    return v4

    .line 2053
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isComposingText()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2055
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 2056
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 2058
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 2061
    :cond_5
    const-string v2, "multitap"

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mTextInputPredictionOn:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mRecaptureOn:Z

    if-eqz v2, :cond_6

    .line 2064
    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2065
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2066
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2067
    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2068
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 2073
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    .line 2076
    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2077
    .local v0, "cSeqAfter":Ljava/lang/CharSequence;
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 2078
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2079
    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2080
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2083
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearAllKeys()V

    .line 2084
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setContext([C)V

    .line 2085
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->backSpace()V

    goto :goto_0
.end method

.method public handleHardkeyEnter()Z
    .locals 5

    .prologue
    const/16 v3, 0x42

    const/4 v4, 0x1

    .line 2092
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2094
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 2095
    :cond_0
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    .line 2138
    :goto_0
    return v4

    .line 2099
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_3

    .line 2102
    :cond_2
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    goto :goto_0

    .line 2106
    :cond_3
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2109
    invoke-static {v0}, Lcom/nuance/swype/util/InputConnectionUtils;->isComposingTextSelected(Landroid/view/inputmethod/InputConnection;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2110
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 2111
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearAllKeys()V

    .line 2131
    :cond_4
    :goto_1
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    .line 2133
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateShiftKeyState()V

    .line 2134
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateMultitapDeadkey(Z)V

    .line 2136
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 2113
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingWordCandidates()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIsUseHardkey:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_7

    .line 2117
    :cond_6
    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_SPACE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 2119
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->processWordSelection(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;Z)V

    .line 2121
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateShiftKeyState()V

    .line 2122
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateMultitapDeadkey(Z)V

    .line 2124
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 2126
    :cond_7
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_4

    .line 2128
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    goto :goto_1
.end method

.method public handleHardkeyShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 1
    .param p1, "state"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 2148
    const/4 v0, 0x1

    return v0
.end method

.method public handleHardkeySpace(ZI)Z
    .locals 1
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    .line 2037
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleSpace(ZI)Z

    move-result v0

    return v0
.end method

.method public handleKey(IZI)Z
    .locals 3
    .param p1, "primaryCode"    # I
    .param p2, "quickPressed"    # Z
    .param p3, "repeatedCount"    # I

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x1

    .line 486
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->removeToastMsg(I)V

    .line 488
    sparse-switch p1, :sswitch_data_0

    .line 526
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 491
    :sswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleSpace(ZI)Z

    move-result v0

    goto :goto_0

    .line 494
    :sswitch_2
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoKeyboardInputSuggestionOn:Z

    if-eqz v1, :cond_0

    .line 495
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->postToastMsg(I)V

    goto :goto_0

    .line 500
    :sswitch_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    .line 501
    if-nez p2, :cond_0

    .line 502
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->startSpeech()V

    goto :goto_0

    .line 507
    :sswitch_4
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->toggleLastKeyboard()V

    goto :goto_0

    .line 515
    :sswitch_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setSwypeKeytoolTipSuggestion()V

    goto :goto_0

    .line 521
    :sswitch_6
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    .line 522
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setMultitapOrAmbigMode()V

    goto :goto_0

    .line 488
    :sswitch_data_0
    .sparse-switch
        -0x6e -> :sswitch_0
        0x20 -> :sswitch_1
        0xb54 -> :sswitch_6
        0xb7c -> :sswitch_2
        0x193f -> :sswitch_3
        0xaa37 -> :sswitch_5
        0xaa38 -> :sswitch_4
    .end sparse-switch
.end method

.method public handleMultitapToggle()V
    .locals 3

    .prologue
    .line 1138
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoKeyboardInputSuggestionOn:Z

    if-eqz v1, :cond_0

    .line 1139
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->toggleAmbigMode()V

    .line 1140
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 1142
    .local v0, "inputMode":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setCorrectionLevel(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    const-string v2, "multitap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setMultitapMode(Z)V

    .line 1147
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Z)V

    .line 1149
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateMultitapDeadkey(Z)V

    .line 1151
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/nuance/swype/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 1153
    .end local v0    # "inputMode":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public handlePossibleActionAfterUniversalKeyboardResize(Z)V
    .locals 0
    .param p1, "hideSymbolView"    # Z

    .prologue
    .line 1276
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setMultitapOrAmbigMode()V

    .line 1277
    return-void
.end method

.method public handlePostTap(Landroid/graphics/Point;I)V
    .locals 1
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I

    .prologue
    .line 533
    invoke-static {p2}, Lcom/nuance/swype/input/KeyboardEx;->isShiftKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->resetShiftState()V

    .line 536
    :cond_0
    return-void
.end method

.method protected handleScrollDown()V
    .locals 2

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 1752
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 1754
    :cond_0
    return-void
.end method

.method protected handleScrollLeft()V
    .locals 1

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1736
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->end()V

    .line 1737
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleKeyboard()V

    .line 1739
    :cond_0
    return-void
.end method

.method protected handleScrollRight()V
    .locals 1

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1744
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->end()V

    .line 1745
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleKeyboard()V

    .line 1747
    :cond_0
    return-void
.end method

.method public handleShiftKey()V
    .locals 1

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->cycleShiftState()V

    .line 1591
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->invalidateKeyboardImage()V

    .line 1592
    return-void
.end method

.method public handleSpace(ZI)Z
    .locals 9
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 980
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 982
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    .line 984
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendSpace()V

    .line 1044
    :goto_0
    return v7

    .line 988
    :cond_1
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 990
    const/4 v0, 0x1

    .line 992
    .local v0, "addSpace":Z
    iget-boolean v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mNextWordPredictionOn:Z

    .line 993
    .local v2, "displayNWP":Z
    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->isTimeoutBySpaceKey:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v5, 0x600

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 995
    iput-boolean v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->isTimeoutBySpaceKey:Z

    .line 996
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1000
    :cond_2
    invoke-direct {p0, v6}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Z)V

    .line 1005
    if-eqz p1, :cond_3

    if-ge p2, v8, :cond_3

    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoAutoPunctuationOn:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoTextInputPredictionOn:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1007
    invoke-interface {v3, v8, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1013
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v8, :cond_3

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1018
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleAutoPunct()V

    .line 1019
    const/4 v0, 0x0

    .line 1023
    .end local v1    # "cSeqBefore":Ljava/lang/CharSequence;
    :cond_3
    if-eqz v0, :cond_5

    .line 1024
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->processSpaceKeyState(Landroid/view/inputmethod/InputConnection;)V

    .line 1025
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyChar(C)V

    .line 1037
    :goto_1
    if-eqz v2, :cond_4

    .line 1038
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateWordContext()V

    .line 1039
    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 1042
    :cond_4
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1027
    :cond_5
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v4}, Lcom/nuance/swype/input/EditState;->start()V

    goto :goto_1
.end method

.method public handleTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
    .locals 7
    .param p1, "trace"    # Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .prologue
    const/4 v2, 0x0

    .line 846
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 848
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 872
    :goto_0
    return-void

    .line 852
    :cond_0
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 854
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Z)V

    .line 856
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->getTimes()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->processTrace(Ljava/util/List;Ljava/util/List;Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v1

    .line 858
    .local v1, "traceSuccess":Z
    if-eqz v1, :cond_1

    .line 859
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContextBuffer()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->setContextBufferKo(Ljava/lang/CharSequence;)V

    .line 860
    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    move-result v3

    if-lez v3, :cond_3

    const/4 v1, 0x1

    .line 863
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 864
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setNotMatchToolTipSuggestion()V

    .line 867
    :cond_2
    const/4 v2, 0x2

    iput v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mLastInput:I

    .line 869
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 871
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->resetShiftState()V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 860
    goto :goto_1
.end method

.method isDigit(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 741
    const/16 v0, 0x30

    if-gt v0, p1, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLanguageSwitchableOnSpace()Z
    .locals 1

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    return v0
.end method

.method protected isSupportMultitouchGesture()Z
    .locals 1

    .prologue
    .line 1758
    const/4 v0, 0x1

    return v0
.end method

.method protected isTraceInputEnabled()Z
    .locals 1

    .prologue
    .line 1652
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->isTraceEnabledOnKeyboard:Z

    return v0
.end method

.method protected isValidKoreanChar(I)Z
    .locals 1
    .param p1, "iChar"    # I

    .prologue
    .line 1314
    const/16 v0, 0x1100

    if-lt p1, v0, :cond_0

    const/16 v0, 0x11ff

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x3130

    if-lt p1, v0, :cond_1

    const/16 v0, 0x318f

    if-le p1, v0, :cond_2

    :cond_1
    const v0, 0xac00

    if-lt p1, v0, :cond_3

    const v0, 0xd7af

    if-gt p1, v0, :cond_3

    .line 1317
    :cond_2
    const/4 v0, 0x1

    .line 1319
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onApplicationUnbind()V
    .locals 0

    .prologue
    .line 1658
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onApplicationUnbind()V

    .line 1660
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->dimissRemoveUdbWordDialog()V

    .line 1663
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 1664
    return-void
.end method

.method public onHandleUdbWordRemoval(Ljava/lang/String;)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 1986
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentActiveWord()V

    .line 1987
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearComposingTextAndSelection()V

    .line 1989
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v0, :cond_0

    .line 1990
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlmDelete(Ljava/lang/String;)Z

    .line 1992
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->showNextWordPrediction()V

    .line 1993
    return-void
.end method

.method public onHardKeyText(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 544
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 545
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isComposingText()Z

    move-result v1

    if-nez v1, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 547
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 548
    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 549
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 551
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1, v4, v4, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleHardkeyCharKey(I[ILandroid/view/KeyEvent;Z)V

    .line 553
    :cond_1
    return-void
.end method

.method public onMultitapTimeout()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1157
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1158
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 1187
    :goto_0
    return-void

    .line 1163
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1166
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1167
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1168
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1185
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->invalidateKeyboardImage()V

    goto :goto_0

    .line 1170
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1171
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1172
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1173
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1174
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_4

    .line 1175
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->displayInlineHangul(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Z)V

    .line 1179
    :goto_2
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1182
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->multiTapTimeout()Z

    goto :goto_1

    .line 1177
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->displayInlineHangul(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Z)V

    goto :goto_2
.end method

.method public onPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 2
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 1967
    if-eqz p1, :cond_2

    .line 1972
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_USER_ADDED:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlmFind(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_USER_ADDED:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_NEW_WORD:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-eq v0, v1, :cond_2

    .line 1976
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->showRemoveUdbWordDialog(Ljava/lang/String;)V

    .line 1977
    const/4 v0, 0x1

    .line 1981
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 5
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1059
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingWordCandidates()Z

    move-result v0

    .line 1060
    .local v0, "composingWordList":Z
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v3

    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v3, v4, :cond_3

    move v3, v2

    .line 1062
    :goto_0
    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mNextWordPredictionOn:Z

    if-eqz v3, :cond_1

    move v1, v2

    .line 1065
    .local v1, "displayNextWordPrediction":Z
    :cond_1
    const/4 v3, 0x4

    iput v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mLastInput:I

    .line 1066
    invoke-direct {p0, p1, p2, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->processWordSelection(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;Z)V

    .line 1068
    if-eqz v1, :cond_2

    .line 1069
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateWordContext()V

    .line 1070
    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 1073
    :cond_2
    return v2

    .end local v1    # "displayNextWordPrediction":Z
    :cond_3
    move v3, v1

    .line 1060
    goto :goto_0
.end method

.method public onSpeechUpdate(Ljava/lang/CharSequence;ZZ)V
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isOnlyToCommitFinal"    # Z
    .param p3, "isFinal"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 637
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 638
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 648
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoTextInputPredictionOn:Z

    if-nez v6, :cond_6

    .line 649
    :cond_2
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 650
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isShifted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 651
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 653
    :cond_3
    if-eqz p2, :cond_5

    .line 654
    const-string v5, ""

    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 655
    if-eqz p3, :cond_4

    .line 656
    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 657
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 664
    :goto_1
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 735
    :goto_2
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateMultitapDeadkey(Z)V

    .line 737
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->resetShiftState()V

    goto :goto_0

    .line 659
    :cond_4
    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_1

    .line 662
    :cond_5
    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_1

    .line 668
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-gt v6, v4, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lcom/nuance/swype/input/korean/KoreanInputView;->isWordAcceptingSymbol(C)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 669
    :cond_7
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 670
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v6, v4, :cond_a

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lcom/nuance/swype/util/CharacterUtilities;->isWordAcceptingSymbol(I)Z

    move-result v6

    if-eqz v6, :cond_a

    move v3, v4

    .line 672
    .local v3, "wordAcceptingSymbol":Z
    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v6

    if-eqz v6, :cond_b

    move v2, v4

    .line 674
    .local v2, "punctGesture":Z
    :goto_4
    iget-boolean v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mNextWordPredictionOn:Z

    if-eqz v6, :cond_c

    if-nez v3, :cond_8

    if-eqz v2, :cond_c

    :cond_8
    move v0, v4

    .line 676
    .local v0, "displayNWP":Z
    :goto_5
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingState()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 677
    invoke-direct {p0, v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Z)V

    .line 682
    :goto_6
    if-eqz p2, :cond_f

    .line 683
    const-string v5, ""

    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 684
    if-eqz p3, :cond_e

    .line 685
    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 686
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 693
    :goto_7
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v5}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 695
    if-eqz v0, :cond_9

    .line 696
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->clearAllKeys()Z

    .line 697
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateWordContext()V

    .line 698
    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 701
    :cond_9
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_2

    .end local v0    # "displayNWP":Z
    .end local v2    # "punctGesture":Z
    .end local v3    # "wordAcceptingSymbol":Z
    :cond_a
    move v3, v5

    .line 670
    goto :goto_3

    .restart local v3    # "wordAcceptingSymbol":Z
    :cond_b
    move v2, v5

    .line 672
    goto :goto_4

    .restart local v2    # "punctGesture":Z
    :cond_c
    move v0, v5

    .line 674
    goto :goto_5

    .line 679
    .restart local v0    # "displayNWP":Z
    :cond_d
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 680
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    goto :goto_6

    .line 688
    :cond_e
    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_7

    .line 691
    :cond_f
    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_7

    .line 702
    .end local v0    # "displayNWP":Z
    .end local v2    # "punctGesture":Z
    .end local v3    # "wordAcceptingSymbol":Z
    :cond_10
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingState()Z

    move-result v5

    if-nez v5, :cond_13

    .line 705
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 706
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 707
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 708
    if-eqz p2, :cond_12

    .line 709
    const-string v5, ""

    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 710
    if-eqz p3, :cond_11

    .line 711
    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 712
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 719
    :goto_8
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v5}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 720
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_2

    .line 714
    :cond_11
    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_8

    .line 717
    :cond_12
    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_8

    .line 722
    :cond_13
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingState()Z

    move-result v5

    if-nez v5, :cond_14

    .line 723
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 724
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 728
    :cond_14
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v5, v6, v7, v8}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 732
    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_2
.end method

.method public onSpeechViewDismissed()V
    .locals 1

    .prologue
    .line 2530
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onSpeechViewDismissed()V

    .line 2531
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isEmptyCandidateList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2532
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->showNextWordPrediction()V

    .line 2534
    :cond_0
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 12
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 558
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 559
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 560
    .local v2, "primaryCode":I
    new-array v3, v0, [I

    aput v2, v3, v1

    .line 563
    .local v3, "keyCodes":[I
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    .line 632
    .end local v2    # "primaryCode":I
    .end local v3    # "keyCodes":[I
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v7

    .line 567
    .local v7, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 571
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoTextInputPredictionOn:Z

    if-nez v4, :cond_4

    .line 572
    :cond_2
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 573
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 574
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 576
    :cond_3
    invoke-interface {v7, p1, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 577
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 628
    :goto_1
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateMultitapDeadkey(Z)V

    .line 630
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->resetShiftState()V

    goto :goto_0

    .line 581
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gt v4, v0, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->isWordAcceptingSymbol(C)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 582
    :cond_5
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 583
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v0, :cond_8

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/CharacterUtilities;->isWordAcceptingSymbol(I)Z

    move-result v4

    if-eqz v4, :cond_8

    move v9, v0

    .line 585
    .local v9, "wordAcceptingSymbol":Z
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v4

    if-eqz v4, :cond_9

    move v8, v0

    .line 587
    .local v8, "punctGesture":Z
    :goto_3
    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mNextWordPredictionOn:Z

    if-eqz v4, :cond_a

    if-nez v9, :cond_6

    if-eqz v8, :cond_a

    :cond_6
    move v6, v0

    .line 590
    .local v6, "displayNWP":Z
    :goto_4
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingState()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 591
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Z)V

    .line 596
    :goto_5
    invoke-interface {v7, p1, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 597
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 599
    if-eqz v6, :cond_7

    .line 600
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->clearAllKeys()Z

    .line 601
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateWordContext()V

    .line 602
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 605
    :cond_7
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_1

    .end local v6    # "displayNWP":Z
    .end local v8    # "punctGesture":Z
    .end local v9    # "wordAcceptingSymbol":Z
    :cond_8
    move v9, v1

    .line 583
    goto :goto_2

    .restart local v9    # "wordAcceptingSymbol":Z
    :cond_9
    move v8, v1

    .line 585
    goto :goto_3

    .restart local v8    # "punctGesture":Z
    :cond_a
    move v6, v1

    .line 587
    goto :goto_4

    .line 593
    .restart local v6    # "displayNWP":Z
    :cond_b
    invoke-direct {p0, v7}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 594
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    goto :goto_5

    .line 606
    .end local v6    # "displayNWP":Z
    .end local v8    # "punctGesture":Z
    .end local v9    # "wordAcceptingSymbol":Z
    :cond_c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingState()Z

    move-result v1

    if-nez v1, :cond_d

    .line 608
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 609
    invoke-direct {p0, v7}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 610
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 611
    invoke-interface {v7, p1, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 612
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 613
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_1

    .line 615
    :cond_d
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingState()Z

    move-result v1

    if-nez v1, :cond_e

    .line 616
    invoke-direct {p0, v7}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 617
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 621
    :cond_e
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sget-object v10, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v1, v4, v5, v10}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 625
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_1
.end method

.method protected preUpdateSpeechText()V
    .locals 1

    .prologue
    .line 2538
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 2539
    return-void
.end method

.method protected processKeyCodeDetectCapsSupport(Landroid/graphics/Point;IJ)Z
    .locals 7
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "keyCode"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 1806
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v3

    .line 1807
    .local v3, "state":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    invoke-static {p2}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1808
    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 1813
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v0

    return v0

    .line 1809
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isPopupKeyboardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1810
    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_0
.end method

.method protected resetMultiTap()V
    .locals 3

    .prologue
    .line 967
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInMultiTap:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentKey:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentKey:I

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 968
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentKey:I

    aget-object v0, v1, v2

    .line 969
    .local v0, "currentKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 971
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->isTimeoutBySpaceKey:Z

    .line 974
    .end local v0    # "currentKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_0
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->resetMultiTap()V

    .line 975
    return-void
.end method

.method public selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V
    .locals 1
    .param p1, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 1940
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1941
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Z)V

    .line 1942
    return-void
.end method

.method protected sendHardKeyChar(C)V
    .locals 4
    .param p1, "character"    # C

    .prologue
    const/4 v3, 0x1

    .line 2488
    packed-switch p1, :pswitch_data_0

    .line 2495
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2496
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2497
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2502
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    iput v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mLastInput:I

    .line 2503
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateShiftKeyState()V

    .line 2504
    return-void

    .line 2490
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/IME;->sendDefaultEditorAction(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2491
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IME;->sendDownUpKeyEvents(I)V

    goto :goto_0

    .line 2488
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method protected setContextBufferKo(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "context"    # Ljava/lang/CharSequence;

    .prologue
    .line 1893
    if-eqz p1, :cond_0

    .line 1894
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setContext([C)V

    .line 1899
    :goto_0
    return-void

    .line 1897
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setContext([C)V

    goto :goto_0
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 3
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    const/4 v0, 0x0

    .line 1686
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1687
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1688
    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->isTraceEnabledOnKeyboard:Z

    .line 1695
    :goto_0
    return-void

    .line 1692
    :cond_0
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoTextInputPredictionOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mTraceInputSuggestionOn:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->isTraceEnabledOnKeyboard:Z

    goto :goto_0
.end method

.method public setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .locals 3
    .param p1, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1681
    :goto_0
    return-void

    .line 1672
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 1673
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->startSession()V

    .line 1674
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->dismissPopupKeyboard()V

    .line 1676
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 1678
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setMultitapOrAmbigMode()V

    .line 1680
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_0
.end method

.method public setPressDownPreviewEnabled(Z)V
    .locals 2
    .param p1, "previewEnabled"    # Z

    .prologue
    .line 1632
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x600

    if-ne v0, v1, :cond_0

    .line 1634
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/nuance/swype/input/InputView;->setPressDownPreviewEnabled(Z)V

    .line 1638
    :goto_0
    return-void

    .line 1636
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setPressDownPreviewEnabled(Z)V

    goto :goto_0
.end method

.method public setSwypeKeytoolTipSuggestion()V
    .locals 3

    .prologue
    .line 1946
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1947
    .local v0, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1948
    .local v1, "selectedText":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1954
    :goto_1
    return-void

    .line 1947
    .end local v1    # "selectedText":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectedTextInEditor(Lcom/nuance/swype/input/InputFieldInfo;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1953
    .restart local v1    # "selectedText":Ljava/lang/String;
    :cond_1
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->setSwypeKeytoolTipSuggestion()V

    goto :goto_1
.end method

.method public showHardKeyPopupKeyboard(I)V
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 2508
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->showHardKeyPopupKeyboard(I)V

    .line 2509
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 2510
    .local v1, "len":I
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isComposingText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2511
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2513
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 2526
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return-void

    .line 2516
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 2517
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2519
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 2520
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto :goto_0

    .line 2522
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    goto :goto_0
.end method

.method public startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V
    .locals 8
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/16 v7, 0x900

    .line 274
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 276
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v5, :cond_0

    if-nez v3, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v5, :cond_2

    .line 281
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/CandidatesListView;->updateCandidatesSize()V

    .line 287
    :cond_2
    if-eqz p2, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v5}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 291
    :cond_3
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->getEditState()Lcom/nuance/swype/input/EditState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/EditState;->startSession()V

    .line 295
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->dismissPopupKeyboard()V

    .line 296
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    .line 299
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 302
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->loadSettings()V

    .line 305
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    .line 311
    .local v4, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->startInputSession()V

    .line 313
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$integer;->bilingual_keyboard_id:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 314
    .local v1, "bilingualId":I
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    instance-of v0, v5, Lcom/nuance/swype/input/BilingualLanguage;

    .line 315
    .local v0, "bilingualEnabled":Z
    if-eqz v0, :cond_7

    iget v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    if-ne v5, v7, :cond_7

    .line 316
    invoke-virtual {v4, v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->findLayout(I)Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v5

    .line 317
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Layout;->saveAsCurrent()V

    .line 322
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v2

    .line 323
    .local v2, "currentLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    if-eqz p2, :cond_8

    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v2, v5, :cond_8

    .line 326
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5, v2, p1, v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 331
    :goto_2
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setMultitapOrAmbigMode()V

    .line 333
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v5}, Lcom/nuance/swype/input/Completions;->clear()V

    .line 334
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateMultitapDeadkey(Z)V

    .line 336
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/nuance/swype/input/korean/KoreanInputView;->initGestureDetector(II)V

    .line 338
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v5

    if-nez v5, :cond_5

    .line 340
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->postDelayShowingStartOfWordCandidate()V

    .line 343
    :cond_5
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 344
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->triggerPasswordTip()V

    .line 346
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->postDelayResumeSpeech()V

    goto/16 :goto_0

    .line 318
    .end local v2    # "currentLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    :cond_7
    if-nez v0, :cond_4

    iget v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    if-ne v5, v1, :cond_4

    .line 319
    invoke-virtual {v4, v7}, Lcom/nuance/swype/input/InputMethods$InputMode;->findLayout(I)Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v5

    .line 320
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Layout;->saveAsCurrent()V

    goto :goto_1

    .line 329
    .restart local v2    # "currentLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    :cond_8
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5, p1, v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    goto :goto_2
.end method

.method public toggleAmbigMode()V
    .locals 4

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multitap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1286
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 1293
    :cond_0
    :goto_0
    return-void

    .line 1289
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

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

    .line 1090
    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v3, 0x900

    if-ne v2, v3, :cond_1

    .line 1133
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/XT9Keyboard;

    .line 1096
    .local v1, "keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    if-eqz v1, :cond_0

    .line 1102
    iget-boolean v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoKeyboardInputSuggestionOn:Z

    if-nez v2, :cond_3

    .line 1103
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1104
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_2

    .line 1106
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v6, v2, v4

    .line 1130
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1131
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_0

    .line 1109
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "multitap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1110
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 1111
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1113
    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_2

    .line 1114
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v6, v2, v4

    goto :goto_1

    .line 1117
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_4
    invoke-virtual {v1, v4}, Lcom/nuance/swype/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1118
    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_2

    .line 1119
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v5, v2, v4

    goto :goto_1

    .line 1123
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_5
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1124
    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_2

    .line 1125
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v5, v2, v4

    goto :goto_1
.end method

.method public updateSelection(IIIIII)V
    .locals 10
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    .line 461
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/input/korean/KoreanInputView;->validateComposingText(IIIIIILjava/lang/CharSequence;)Z

    .line 463
    invoke-super/range {p0 .. p6}, Lcom/nuance/swype/input/InputView;->updateSelection(IIIIII)V

    .line 466
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v9

    .line 467
    .local v9, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v9, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v0, :cond_2

    .line 472
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 473
    .local v8, "charBeforeCusor":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0, v8}, Lcom/nuance/swype/input/EditState;->cursorChanged(Ljava/lang/CharSequence;)V

    .line 476
    .end local v8    # "charBeforeCusor":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentWordCandiatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isInsideWord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    goto :goto_0
.end method

.method public updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I
    .locals 9
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "noComposingText"    # Z

    .prologue
    const/16 v8, 0x121

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1456
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1457
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v5, :cond_0

    if-nez v1, :cond_1

    .line 1537
    :cond_0
    :goto_0
    return v3

    .line 1461
    :cond_1
    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq p1, v5, :cond_0

    .line 1465
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v5, p1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 1467
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleGesture(Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1468
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->clearAllKeys()Z

    move v3, v4

    .line 1469
    goto :goto_0

    .line 1472
    :cond_2
    iget-boolean v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoTextInputPredictionOn:Z

    if-eqz v5, :cond_7

    .line 1477
    iget-boolean v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mPreferExplicit:Z

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v5

    sget-object v6, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v5, v6, :cond_5

    .line 1479
    invoke-virtual {v0, v3}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 1480
    invoke-virtual {v0, v3}, Lcom/nuance/input/swypecorelib/Candidates;->setExactIndex(I)V

    .line 1488
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getWordListFormat(Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/swype/input/CandidatesListView$Format;

    move-result-object v5

    invoke-virtual {p0, p0, v0, v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 1490
    if-eqz p2, :cond_6

    .line 1491
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p1, v5, :cond_4

    .line 1492
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 1493
    .local v2, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1494
    const-string v5, "NWP_HKB"

    invoke-virtual {v2, v5, v3}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1495
    const-string v5, "NWP_HKB"

    invoke-virtual {v2, v5, v4}, Lcom/nuance/swype/input/UserPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 1496
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$string;->hardkeyboard_input_next_word_prediction:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/nuance/swype/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 1504
    .end local v2    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_4
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v3

    goto :goto_0

    .line 1481
    :cond_5
    iget-boolean v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoAutoCorrectionEnabled:Z

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v5

    if-le v5, v4, :cond_3

    .line 1482
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v5

    sget-object v6, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_NEW_WORD:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-ne v5, v6, :cond_3

    .line 1484
    invoke-virtual {v0, v4}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    goto :goto_1

    .line 1507
    :cond_6
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v5

    if-lez v5, :cond_9

    .line 1508
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_8

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p1, v5, :cond_8

    .line 1509
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1510
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1511
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v4, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->displayInlineHangul(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Z)V

    .line 1537
    :cond_7
    :goto_2
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v3

    goto/16 :goto_0

    .line 1512
    :cond_8
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isMultitapping()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1514
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1515
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1516
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1517
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1520
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1524
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1528
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v3, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_2

    .line 1533
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    goto :goto_2
.end method

.method protected useShiftAsAlt(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$integer;->bilingual_keyboard_id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 352
    .local v0, "bilingualId":I
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    instance-of v1, v1, Lcom/nuance/swype/input/BilingualLanguage;

    .line 353
    if-eqz v1, :cond_1

    iget v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v2, 0x900

    if-ne v1, v2, :cond_1

    .line 356
    :cond_0
    const/4 v1, 0x0

    .line 358
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->useShiftAsAlt(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    goto :goto_0
.end method
