.class public Lcom/nuance/swype/input/korean/KoreanInputView;
.super Lcom/nuance/swype/input/InputView;
.source "KoreanInputView.java"

# interfaces
.implements Lcom/nuance/swype/input/CandidatesListView$CandidateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;,
        Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;
    }
.end annotation


# static fields
.field private static final CHUNJIIN_KEYCODE_NUM_ONE:I = 0x3163

.field private static final CHUNJIIN_KEYCODE_NUM_THREE:I = 0x3161

.field private static final CHUNJIIN_KEYCODE_NUM_TWO:I = 0x318d

.field private static final LONG_PRESS_THREASHOLD:I = 0x3

.field private static final NARATGUL_KEYCODE_ADD_STROKE:I = 0x115a

.field private static final NARATGUL_KEYCODE_DOUBLE_CONSONANTS:I = 0x115b

.field private static final TERMINAL_PUNCT_PREDICTION:Ljava/lang/String; = ",.!?"


# instance fields
.field private final activeHangul:Ljava/lang/StringBuilder;

.field private inputContextRequestHandler:Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;

.field private final inputViewHandlerCallback:Landroid/os/Handler$Callback;

.field private isTimeoutBySpaceKey:Z

.field private mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

.field private mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

.field private mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

.field private final mInlineWord:Landroid/text/SpannableStringBuilder;

.field private final mInputViewHandler:Landroid/os/Handler;

.field private mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

.field private final mWordComposeSpan:Landroid/text/style/UnderlineSpan;

.field touchKeyActionHandler:Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 1535
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    .line 92
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    .line 97
    new-instance v0, Lcom/nuance/swype/input/korean/KoreanInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/korean/KoreanInputView$1;-><init>(Lcom/nuance/swype/input/korean/KoreanInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->inputViewHandlerCallback:Landroid/os/Handler$Callback;

    .line 161
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->inputViewHandlerCallback:Landroid/os/Handler$Callback;

    .line 162
    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    .line 2408
    new-instance v0, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;-><init>(Lcom/nuance/swype/input/korean/KoreanInputView;Lcom/nuance/swype/input/korean/KoreanInputView$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;

    .line 2457
    new-instance v0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;-><init>(Lcom/nuance/swype/input/korean/KoreanInputView;Lcom/nuance/swype/input/korean/KoreanInputView$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;

    .line 1536
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 1539
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    .line 92
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    .line 97
    new-instance v0, Lcom/nuance/swype/input/korean/KoreanInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/korean/KoreanInputView$1;-><init>(Lcom/nuance/swype/input/korean/KoreanInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->inputViewHandlerCallback:Landroid/os/Handler$Callback;

    .line 161
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->inputViewHandlerCallback:Landroid/os/Handler$Callback;

    .line 162
    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    .line 2408
    new-instance v0, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;-><init>(Lcom/nuance/swype/input/korean/KoreanInputView;Lcom/nuance/swype/input/korean/KoreanInputView$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;

    .line 2457
    new-instance v0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;-><init>(Lcom/nuance/swype/input/korean/KoreanInputView;Lcom/nuance/swype/input/korean/KoreanInputView$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;

    .line 1540
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/CandidatesListView;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/CandidatesListView;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/nuance/swype/input/korean/KoreanInputView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mAutoSpace:Z

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/CandidatesListView;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/nuance/swype/input/korean/KoreanInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/nuance/swype/input/korean/KoreanInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;I)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->pressKey([Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/nuance/swype/input/korean/KoreanInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/nuance/swype/input/korean/KoreanInputView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->resetTrace(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/nuance/swype/input/korean/KoreanInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/nuance/swype/input/korean/KoreanInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/korean/KoreanInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/korean/KoreanInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->showStartOfWordCandidateList()V

    return-void
.end method

.method static synthetic access$3000(Lcom/nuance/swype/input/korean/KoreanInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/nuance/swype/input/korean/KoreanInputView;I[F[F[IZI)V
    .registers 7
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # [F
    .param p3, "x3"    # [F
    .param p4, "x4"    # [I
    .param p5, "x5"    # Z
    .param p6, "x6"    # I

    .prologue
    .line 71
    invoke-virtual/range {p0 .. p6}, Lcom/nuance/swype/input/korean/KoreanInputView;->onTouchMoved(I[F[F[IZI)V

    return-void
.end method

.method static synthetic access$3200(Lcom/nuance/swype/input/korean/KoreanInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/nuance/swype/input/korean/KoreanInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/korean/KoreanInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    return-void
.end method

.method static synthetic access$3400(Lcom/nuance/swype/input/korean/KoreanInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/nuance/swype/input/korean/KoreanInputView;Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateUIShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/nuance/swype/input/korean/KoreanInputView;IZI)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleFunctionKey(IZI)V

    return-void
.end method

.method static synthetic access$3700(Lcom/nuance/swype/input/korean/KoreanInputView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mTextInputPredictionOn:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/nuance/swype/input/korean/KoreanInputView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mLastInput:I

    return p1
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/korean/KoreanInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setSpeechViewHost()V

    return-void
.end method

.method static synthetic access$4000(Lcom/nuance/swype/input/korean/KoreanInputView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->finishTrace(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/nuance/swype/input/korean/KoreanInputView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->resetTrace(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/nuance/swype/input/korean/KoreanInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/nuance/swype/input/korean/KoreanInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/korean/KoreanInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    return-void
.end method

.method static synthetic access$4400(Lcom/nuance/swype/input/korean/KoreanInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/nuance/swype/input/korean/KoreanInputView;Lcom/nuance/swype/input/KeyboardEx$Key;II)Z
    .registers 5
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/korean/KoreanInputView;->onShortPress(Lcom/nuance/swype/input/KeyboardEx$Key;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/IME;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/nuance/swype/input/korean/KoreanInputView;ILcom/nuance/swype/input/KeyboardEx$Key;)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->onTouchHeldEnded(ILcom/nuance/swype/input/KeyboardEx$Key;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/nuance/swype/input/korean/KoreanInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/nuance/swype/input/korean/KoreanInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/korean/KoreanInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/korean/KoreanInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->resumeSpeech()V

    return-void
.end method

.method static synthetic access$5000(Lcom/nuance/swype/input/korean/KoreanInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/nuance/swype/input/korean/KoreanInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/nuance/swype/input/korean/KoreanInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/korean/KoreanInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    return-void
.end method

.method static synthetic access$5300(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/IME;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/nuance/swype/input/korean/KoreanInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5502(Lcom/nuance/swype/input/korean/KoreanInputView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInMultiTap:Z

    return p1
.end method

.method static synthetic access$5602(Lcom/nuance/swype/input/korean/KoreanInputView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInMultiTap:Z

    return p1
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/korean/KoreanInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->startInputSession()V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/korean/KoreanInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setMultitapOrAmbigMode()V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/InputView$WclPrompt;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->themeStoreWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;

    return-object v0
.end method

.method private addCompoundingWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .registers 9
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "wordJustSelected"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 1121
    if-nez p1, :cond_4

    .line 1159
    :cond_3
    :goto_3
    return-void

    .line 1125
    :cond_4
    const/16 v4, 0x11

    invoke-interface {p1, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1127
    .local v3, "seqBeforeCursor":Ljava/lang/CharSequence;
    if-eqz v3, :cond_3

    .line 1129
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1131
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 1133
    .local v2, "index":I
    if-lez v2, :cond_3

    .line 1134
    :goto_1c
    if-lez v2, :cond_2b

    .line 1136
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1135
    invoke-static {v4}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 1137
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 1140
    :cond_2b
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1141
    add-int/lit8 v2, v2, 0x1

    .line 1144
    :cond_37
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1147
    .local v0, "compoundWord":Ljava/lang/String;
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1149
    .local v1, "contextBeforeCompoundWord":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 1150
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-gt v4, v5, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 1151
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isUDBSubstitutionField()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 1152
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1154
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setContext([C)V

    .line 1155
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v4, v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->noteWordDone(Ljava/lang/String;)Z

    goto :goto_3
.end method

.method private clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V
    .registers 4
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_15

    .line 1342
    if-eqz p1, :cond_15

    .line 1344
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1347
    :cond_15
    return-void
.end method

.method private composingState()Z
    .registers 3

    .prologue
    .line 775
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/CandidatesListView;->wordCount()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    .line 776
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    .line 777
    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private composingWordCandidates()Z
    .registers 3

    .prologue
    .line 1011
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1012
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1013
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1014
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private displayInlineHangul(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Z)V
    .registers 10
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "hangul"    # Ljava/lang/CharSequence;
    .param p3, "setSpan"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1309
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1310
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1312
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_38

    .line 1313
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1314
    if-nez p3, :cond_22

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldSetComosingSpan()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1315
    :cond_22
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x121

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1320
    :cond_32
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {p1, v0, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1325
    :goto_37
    return-void

    .line 1323
    :cond_38
    const-string/jumbo v0, ""

    invoke-interface {p1, v0, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_37
.end method

.method private displayMultiTapInline(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "hangul"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x121

    const/4 v3, 0x0

    .line 1295
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1296
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1297
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1299
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1302
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1305
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1306
    return-void
.end method

.method private endInputSession()V
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v0, :cond_9

    .line 398
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->finishSession()V

    .line 400
    :cond_9
    return-void
.end method

.method private handleAutoPunct()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1215
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1216
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_16

    .line 1217
    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1218
    const-string/jumbo v0, "."

    .line 1219
    .local v0, "autopunct":Ljava/lang/CharSequence;
    invoke-interface {v1, v0, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1220
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyChar(C)V

    .line 1222
    .end local v0    # "autopunct":Ljava/lang/CharSequence;
    :cond_16
    return-void
.end method

.method private handleFunctionKey(IZI)V
    .registers 12
    .param p1, "keyCode"    # I
    .param p2, "quickPress"    # Z
    .param p3, "repeatCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 2401
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->shouldHandleKeyViaIME(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleKey(IZI)Z

    move-result v0

    if-nez v0, :cond_23

    .line 2402
    :cond_d
    invoke-static {p1}, Lcom/nuance/swype/input/KeyboardEx;->isChangeKeyboardLayerKey(I)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleGesture(I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 2403
    :cond_19
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    const-wide/16 v6, 0x0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/IME;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    .line 2406
    :cond_23
    return-void
.end method

.method private handlePrediction(Landroid/graphics/Point;IJ)V
    .registers 14
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "eventTime"    # J

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x9

    .line 1233
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v6

    .line 1234
    .local v6, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v6, :cond_a

    .line 1282
    :cond_9
    :goto_9
    return-void

    .line 1239
    :cond_a
    const/16 v0, 0x115a

    if-eq p2, v0, :cond_12

    const/16 v0, 0x115b

    if-ne p2, v0, :cond_1a

    .line 1240
    :cond_12
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v0

    if-eqz v0, :cond_9

    .line 1245
    :cond_1a
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 v0, 0x3163

    if-eq p2, v0, :cond_2e

    const/16 v0, 0x318d

    if-eq p2, v0, :cond_2e

    const/16 v0, 0x3161

    if-ne p2, v0, :cond_33

    .line 1247
    :cond_2e
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->multiTapTimeOut()V

    .line 1250
    :cond_33
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSelectionKeys()Z

    .line 1254
    if-nez p1, :cond_95

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    const/4 v1, 0x0

    .line 1255
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v3

    move v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v0

    .line 1257
    :goto_45
    if-eqz v0, :cond_9

    .line 1258
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/EditState;->characterTyped(C)V

    .line 1260
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mTextInputPredictionOn:Z

    if-eqz v0, :cond_6d

    .line 1261
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1262
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1265
    :cond_5e
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v1, v7, v8, v8, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1271
    :cond_6d
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getInlineHangul(Ljava/lang/StringBuilder;)V

    .line 1273
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mTextInputPredictionOn:Z

    if-nez v0, :cond_9c

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 1274
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-direct {p0, v6, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->displayMultiTapInline(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 1279
    :goto_83
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 1280
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateUIShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto/16 :goto_9

    .line 1255
    :cond_95
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;

    .line 1256
    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->processStoredTouch()Z
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->access$1000(Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;)Z

    move-result v0

    goto :goto_45

    .line 1276
    :cond_9c
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-direct {p0, v6, v0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->displayInlineHangul(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Z)V

    goto :goto_83
.end method

.method private handlePunctOrSymbol(I)V
    .registers 7
    .param p1, "primaryCode"    # I

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 1351
    const/16 v1, 0x20

    if-ne p1, v1, :cond_c

    .line 1352
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleSpace(ZI)Z

    .line 1389
    :goto_b
    return-void

    .line 1356
    :cond_c
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v1, :cond_5d

    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingState()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1357
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Z)V

    .line 1363
    :goto_19
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 1365
    if-ne p1, v4, :cond_21

    .line 1366
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->resetContextBuffer()V

    .line 1369
    :cond_21
    int-to-char v0, p1

    .line 1370
    .local v0, "keyChar":C
    const/16 v1, 0x2c

    if-eq v1, v0, :cond_32

    const/16 v1, 0x2e

    if-eq v1, v0, :cond_32

    const/16 v1, 0x21

    if-eq v1, v0, :cond_32

    const/16 v1, 0x3f

    if-ne v1, v0, :cond_3b

    .line 1371
    :cond_32
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->noteWordDone(Ljava/lang/String;)Z

    .line 1374
    :cond_3b
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 1375
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyChar(C)V

    .line 1377
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateMultitapDeadkey(Z)V

    .line 1379
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mNextWordPredictionOn:Z

    if-eqz v1, :cond_5a

    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 1380
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateWordContext()V

    .line 1383
    if-eq p1, v4, :cond_5a

    .line 1384
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 1388
    :cond_5a
    iput v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mLastInput:I

    goto :goto_b

    .line 1360
    .end local v0    # "keyChar":C
    :cond_5d
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_19
.end method

.method private handleWhiteSpaces(I)V
    .registers 4
    .param p1, "primaryCode"    # I

    .prologue
    .line 1329
    const/16 v0, 0x20

    if-ne p1, v0, :cond_a

    .line 1330
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleSpace(ZI)Z

    .line 1336
    :goto_9
    return-void

    .line 1335
    :cond_a
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->handlePunctOrSymbol(I)V

    goto :goto_9
.end method

.method private hasInputQueue()Z
    .registers 2

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 2310
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

.method private isDigit(C)Z
    .registers 3
    .param p1, "ch"    # C

    .prologue
    .line 708
    const/16 v0, 0x30

    if-gt v0, p1, :cond_a

    const/16 v0, 0x39

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isKoreanDoubleJamoKey(I)Z
    .registers 3
    .param p1, "primaryCode"    # I

    .prologue
    .line 1859
    const/16 v0, 0x3143

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x3149

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x3138

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x3132

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x3146

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x3152

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x3156

    if-ne p1, v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private isMultiTapKeypad()Z
    .registers 3

    .prologue
    .line 1174
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private isWordAcceptingSymbol(C)Z
    .registers 3
    .param p1, "ch"    # C

    .prologue
    .line 512
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v0

    return v0
.end method

.method private moveHighlightToNearCandidate(I)Z
    .registers 14
    .param p1, "keyCode"    # I

    .prologue
    const/16 v11, 0x121

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2163
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v9

    if-gtz v9, :cond_19

    .line 2164
    :cond_14
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    move v7, v8

    .line 2218
    :cond_18
    :goto_18
    return v7

    .line 2168
    :cond_19
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v5

    .line 2169
    .local v5, "wordCandidatesCount":I
    const/4 v3, 0x0

    .line 2170
    .local v3, "isRight":Z
    const/16 v9, 0x16

    if-ne p1, v9, :cond_25

    .line 2171
    const/4 v3, 0x1

    .line 2173
    :cond_25
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v1

    .line 2175
    .local v1, "index":I
    if-eqz v3, :cond_a9

    .line 2176
    add-int/lit8 v1, v1, 0x1

    .line 2181
    :goto_2f
    if-eqz v3, :cond_ac

    if-lt v1, v5, :cond_ac

    .line 2182
    add-int/lit8 v1, v5, -0x1

    .line 2187
    :cond_35
    :goto_35
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9, v1}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 2188
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v10, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v10, v1}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 2189
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->syncCandidateDisplayStyleToMode()V

    .line 2190
    if-eqz v3, :cond_b2

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9, v1}, Lcom/nuance/swype/input/CandidatesListView;->isKeyOutofRightBound(I)Z

    move-result v9

    if-eqz v9, :cond_b2

    .line 2191
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/CandidatesListView;->scrollNext()V

    .line 2196
    :cond_57
    :goto_57
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v9

    sget-object v10, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v9, v10, :cond_67

    .line 2197
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 2201
    :cond_67
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 2202
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2203
    .local v2, "inlineword":Landroid/text/SpannableStringBuilder;
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 2204
    .local v4, "span":Landroid/text/style/UnderlineSpan;
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v6

    .line 2205
    .local v6, "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2206
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2207
    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2208
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v2, v4, v8, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2209
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v2, v4, v8, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2210
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2211
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_18

    .line 2212
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2213
    invoke-static {v0, v2}, Lcom/nuance/swype/util/InputConnectionUtils;->setComposingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2214
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_18

    .line 2178
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "inlineword":Landroid/text/SpannableStringBuilder;
    .end local v4    # "span":Landroid/text/style/UnderlineSpan;
    .end local v6    # "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_a9
    add-int/lit8 v1, v1, -0x1

    goto :goto_2f

    .line 2183
    :cond_ac
    if-nez v3, :cond_35

    if-gez v1, :cond_35

    .line 2184
    const/4 v1, 0x0

    goto :goto_35

    .line 2192
    :cond_b2
    if-nez v3, :cond_57

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9, v1}, Lcom/nuance/swype/input/CandidatesListView;->isKeyOutofLeftBound(I)Z

    move-result v9

    if-eqz v9, :cond_57

    .line 2193
    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

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

    .line 2101
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v8

    if-gtz v8, :cond_19

    .line 2102
    :cond_14
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    move v6, v7

    .line 2159
    :cond_18
    :goto_18
    return v6

    .line 2106
    :cond_19
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v4

    .line 2107
    .local v4, "wordCandidatesCount":I
    const/4 v2, 0x0

    .line 2108
    .local v2, "isRight":Z
    const/16 v8, 0x16

    if-ne p1, v8, :cond_25

    .line 2109
    const/4 v2, 0x1

    .line 2111
    :cond_25
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v1

    .line 2113
    .local v1, "index":I
    if-eqz v2, :cond_c3

    .line 2114
    add-int/lit8 v1, v1, 0x1

    .line 2119
    :goto_2f
    if-eqz v2, :cond_c7

    if-lt v1, v4, :cond_c7

    .line 2120
    add-int/lit8 v1, v4, -0x1

    .line 2125
    :cond_35
    :goto_35
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8, v1}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 2126
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8, v6}, Lcom/nuance/swype/input/CandidatesListView;->setHardwareKeyboardUsed(Z)V

    .line 2127
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9, v1}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 2128
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->syncCandidateDisplayStyleToMode()V

    .line 2129
    if-eqz v2, :cond_ce

    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8, v1}, Lcom/nuance/swype/input/CandidatesListView;->isKeyOutofRightBound(I)Z

    move-result v8

    if-eqz v8, :cond_ce

    .line 2130
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->scrollNext()V

    .line 2135
    :cond_5c
    :goto_5c
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v8

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v8, v9, :cond_6c

    .line 2136
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 2140
    :cond_6c
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v8

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v8, v9, :cond_18

    .line 2141
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v8

    if-nez v8, :cond_18

    .line 2142
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v5

    .line 2143
    .local v5, "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2144
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2145
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2146
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 2147
    .local v3, "span":Landroid/text/style/UnderlineSpan;
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2148
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2150
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2152
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_18

    .line 2153
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2154
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2155
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_18

    .line 2116
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "span":Landroid/text/style/UnderlineSpan;
    .end local v5    # "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_c3
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2f

    .line 2121
    :cond_c7
    if-nez v2, :cond_35

    if-gez v1, :cond_35

    .line 2122
    const/4 v1, 0x0

    goto/16 :goto_35

    .line 2131
    :cond_ce
    if-nez v2, :cond_5c

    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8, v1}, Lcom/nuance/swype/input/CandidatesListView;->isKeyOutofLeftBound(I)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 2132
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->scrollPrev()V

    goto/16 :goto_5c
.end method

.method private moveHightlightToCenter(I)Z
    .registers 13
    .param p1, "keyCode"    # I

    .prologue
    const/16 v10, 0x121

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2048
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 2049
    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v8

    if-gtz v8, :cond_19

    .line 2050
    :cond_14
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    move v6, v7

    .line 2097
    :cond_18
    :goto_18
    return v6

    .line 2054
    :cond_19
    const/4 v2, 0x0

    .line 2055
    .local v2, "isDown":Z
    const/16 v8, 0x14

    if-ne p1, v8, :cond_1f

    .line 2056
    const/4 v2, 0x1

    .line 2059
    :cond_1f
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v4

    .line 2061
    .local v4, "wordCandidatesCount":I
    if-eqz v2, :cond_4c

    .line 2063
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->getCenterCandidateIndex()I

    move-result v1

    .line 2064
    .local v1, "index":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_18

    .line 2067
    if-ltz v1, :cond_4c

    if-ge v1, v4, :cond_4c

    .line 2068
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8, v1}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 2069
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8, v6}, Lcom/nuance/swype/input/CandidatesListView;->setHardwareKeyboardUsed(Z)V

    .line 2070
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9, v1}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 2071
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->syncCandidateDisplayStyleToMode()V

    .line 2075
    .end local v1    # "index":I
    :cond_4c
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v8

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v8, v9, :cond_5c

    .line 2076
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 2079
    :cond_5c
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v8

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v8, v9, :cond_18

    .line 2080
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v8

    if-nez v8, :cond_18

    .line 2081
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v5

    .line 2082
    .local v5, "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2083
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2084
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2085
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 2086
    .local v3, "span":Landroid/text/style/UnderlineSpan;
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2087
    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2089
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2091
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_18

    .line 2092
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2093
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2094
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_18
.end method

.method private postDelayResumeSpeech()V
    .registers 5

    .prologue
    const/16 v1, 0xb

    .line 359
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 360
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 362
    :cond_f
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 363
    return-void
.end method

.method private postDelayShowingStartOfWordCandidate()V
    .registers 5

    .prologue
    .line 203
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 205
    return-void
.end method

.method private postToastMsg(I)V
    .registers 6
    .param p1, "msg"    # I

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->removeToastMsg(I)V

    .line 214
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 215
    return-void
.end method

.method private processSpaceKeyState(Landroid/view/inputmethod/InputConnection;)V
    .registers 4
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->spaceKey()V

    .line 1165
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 1167
    if-eqz p1, :cond_19

    .line 1168
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->selectedWord()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->addCompoundingWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 1171
    :cond_19
    return-void
.end method

.method private processWordSelection(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;Z)V
    .registers 12
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p3, "userExplicitPick"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1689
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v1

    .line 1690
    .local v1, "index":I
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1692
    .local v3, "word":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1740
    :goto_10
    return-void

    .line 1696
    :cond_11
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v4, :cond_20

    .line 1697
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/nuance/swype/input/EditState;->selectWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1700
    :cond_20
    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCompletionOn:Z

    if-eqz v4, :cond_85

    if-ltz v1, :cond_85

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v4}, Lcom/nuance/swype/input/Completions;->size()I

    move-result v4

    if-ge v1, v4, :cond_85

    .line 1701
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v4

    .line 1702
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v5, v1}, Lcom/nuance/swype/input/Completions;->get(I)Landroid/view/inputmethod/CompletionInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 1703
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 1725
    :goto_3e
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1726
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_81

    .line 1728
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v4, v5, :cond_7a

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v6, :cond_7a

    const-string/jumbo v4, ",.!?"

    .line 1729
    invoke-interface {v3, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 1730
    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1731
    .local v2, "seq":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7a

    invoke-interface {v2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 1732
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendBackspace(I)V

    .line 1736
    .end local v2    # "seq":Ljava/lang/CharSequence;
    :cond_7a
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1739
    :cond_81
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    goto :goto_10

    .line 1705
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_85
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getSpeechAlternateCandidates()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 1706
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v4, v6, v6, v6}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setWordQuarantineLevel(III)V

    .line 1710
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v4, v1, p3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->wordSelected(IZ)V

    .line 1712
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->removeSpaceBeforeCursorIfNeeded(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;Lcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 1714
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isUDBSubstitutionField()Z

    move-result v4

    if-nez v4, :cond_b9

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v4

    if-nez v4, :cond_b9

    .line 1717
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->noteWordDone(Ljava/lang/String;)Z

    .line 1719
    :cond_b9
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearAllKeys()V

    goto :goto_3e

    .line 1721
    :cond_bd
    invoke-super {p0, v1}, Lcom/nuance/swype/input/InputView;->speechChooseCandidate(I)V

    goto/16 :goto_3e
.end method

.method private readStyles(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 1606
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha:[I

    const/4 v4, 0x0

    sget v5, Lcom/nuance/swype/input/R$style;->InlineStringAlpha:I

    sget v6, Lcom/nuance/swype/input/R$xml;->defaults:I

    const-string/jumbo v7, "InlineStringAlpha"

    move-object v1, p1

    .line 1607
    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainStyledAttributes$6d3b0587(Landroid/content/Context;Landroid/util/AttributeSet;[IIIILjava/lang/String;)Lcom/nuance/swype/plugin/TypedArrayWrapper;

    move-result-object v9

    .line 3030
    .local v9, "a":Lcom/nuance/swype/plugin/TypedArrayWrapper;
    iget-object v0, v9, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    .line 1612
    .local v13, "n":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1f
    if-ge v12, v13, :cond_6c

    .line 1613
    invoke-virtual {v9, v12}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getIndex(I)I

    move-result v10

    .line 1615
    .local v10, "attr":I
    sget v0, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_wordErrorForegroundColor:I

    if-ne v10, v0, :cond_49

    .line 1616
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const/high16 v0, -0x10000

    invoke-virtual {v9, v10, v0}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v0

    invoke-direct {v8, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1620
    .local v8, "FGWordErrorSpan":Landroid/text/style/ForegroundColorSpan;
    const/4 v0, 0x3

    new-array v11, v0, [F

    .line 1621
    .local v11, "hsv":[F
    invoke-virtual {v8}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v0

    invoke-static {v0, v11}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1623
    const/4 v0, 0x2

    aget v1, v11, v0

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    aput v1, v11, v0

    .line 1612
    .end local v8    # "FGWordErrorSpan":Landroid/text/style/ForegroundColorSpan;
    .end local v11    # "hsv":[F
    :cond_46
    :goto_46
    add-int/lit8 v12, v12, 0x1

    goto :goto_1f

    .line 1624
    :cond_49
    sget v0, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_multitapForegroundColor:I

    if-ne v10, v0, :cond_5a

    .line 1625
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-virtual {v9, v10, v1}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    goto :goto_46

    .line 1627
    :cond_5a
    sget v0, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_multitapBackgroundColor:I

    if-ne v10, v0, :cond_46

    .line 1628
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const/high16 v1, -0x10000

    invoke-virtual {v9, v10, v1}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    goto :goto_46

    .line 1632
    .end local v10    # "attr":I
    :cond_6c
    invoke-virtual {v9}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->recycle()V

    .line 1633
    return-void
.end method

.method private removeSpaceBeforeCursorIfNeeded(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;Lcom/nuance/input/swypecorelib/WordCandidate;)V
    .registers 3
    .param p1, "ic"    # Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .param p2, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    .line 1684
    return-void
.end method

.method private removeToastMsg(I)V
    .registers 3
    .param p1, "msg"    # I

    .prologue
    .line 208
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 209
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    return-void
.end method

.method private resetContextBuffer()V
    .registers 3

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setContext([C)V

    .line 1744
    return-void
.end method

.method private resetShiftState()V
    .registers 3

    .prologue
    .line 1667
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v1, :cond_9

    .line 1674
    :cond_8
    :goto_8
    return-void

    .line 1671
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v0, v1, :cond_19

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v0, v1, :cond_8

    .line 1672
    :cond_19
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_8
.end method

.method private selectDefaultSuggestion()V
    .registers 2

    .prologue
    .line 1759
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1760
    return-void
.end method

.method private selectDefaultSuggestion(Z)V
    .registers 5
    .param p1, "addCompoundingWord"    # Z

    .prologue
    .line 1747
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->shouldSelectDefaultCandidate()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1748
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    .line 1749
    .local v0, "defaultCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->processWordSelection(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;Z)V

    .line 1750
    if-eqz p1, :cond_1f

    .line 1751
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->addCompoundingWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 1756
    .end local v0    # "defaultCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_1f
    :goto_1f
    return-void

    .line 1754
    :cond_20
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    goto :goto_1f
.end method

.method private sendBackCharOnFailProcess(C)V
    .registers 3
    .param p1, "ch"    # C

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    .line 1226
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1227
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    .line 1229
    :cond_d
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyChar(C)V

    .line 1230
    return-void
.end method

.method private setAutoCorrection()V
    .registers 4

    .prologue
    const/16 v2, 0x63

    .line 1183
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isMultiTapKeypad()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1185
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setAttribute(IZ)V

    .line 1190
    :goto_e
    return-void

    .line 1188
    :cond_f
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->autoCorrectionEnabled:Z

    invoke-virtual {v0, v2, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setAttribute(IZ)V

    goto :goto_e
.end method

.method private setMultitapOrAmbigMode()V
    .registers 3

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isMultiTapKeypad()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setMultiTapInputMode(Z)V

    .line 1179
    return-void
.end method

.method private showStartOfWordCandidateList()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 172
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastSavedActiveWordAndSet()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "lastWord":Ljava/lang/String;
    if-eqz v3, :cond_5a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5a

    .line 175
    new-array v0, v6, [C

    .line 176
    .local v0, "chArray":[C
    const/4 v1, 0x0

    .local v1, "iCharPos":I
    :goto_11
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_37

    .line 177
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v7

    .line 178
    aget-char v4, v0, v7

    invoke-static {v4}, Lcom/nuance/swype/util/CharacterUtilities;->isUpperCaseLetter(C)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 179
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v4, v0, v6, v5}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 176
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 181
    :cond_2f
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v4, v0, v6, v5}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_2c

    .line 184
    :cond_37
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v4}, Lcom/nuance/swype/input/EditState;->composeWordCandidate()V

    .line 186
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 187
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v4

    if-lez v4, :cond_54

    .line 188
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getInlineHangul(Ljava/lang/StringBuilder;)V

    .line 189
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v4, v6}, Lcom/nuance/swype/input/korean/KoreanInputView;->displayInlineHangul(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Z)V

    .line 191
    :cond_54
    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 200
    .end local v0    # "chArray":[C
    .end local v1    # "iCharPos":I
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_59
    :goto_59
    return-void

    .line 192
    :cond_5a
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastShownCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v4, v5, :cond_6b

    .line 193
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateWordContext()V

    .line 194
    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto :goto_59

    .line 196
    :cond_6b
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isEmptyCandidateList()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 197
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->showNextWordPrediction()V

    goto :goto_59
.end method

.method private startInputSession()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 367
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v0, :cond_96

    .line 368
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->startSession()V

    .line 369
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0, v2, v2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setExplicitLearning(ZZ)V

    .line 370
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 371
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 372
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0, v1, v1, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setWordQuarantineLevel(III)V

    .line 374
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->isEmojiSuggestionsEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setLDBEmoji(Z)V

    .line 375
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mTextInputPredictionOn:Z

    if-eqz v0, :cond_97

    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInURLEmail:Z

    if-nez v0, :cond_97

    .line 376
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isNextWordPredictionEnabled()Z

    move-result v0

    if-eqz v0, :cond_97

    move v0, v1

    :goto_4b
    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mNextWordPredictionOn:Z

    .line 377
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    const/16 v3, 0x65

    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mWordCompletionPoint:I

    invoke-virtual {v0, v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setAttribute(II)V

    .line 378
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    const/16 v3, 0x63

    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->autoCorrectionEnabled:Z

    invoke-virtual {v0, v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setAttribute(IZ)V

    .line 379
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    const/16 v3, 0x68

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v4, :cond_74

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 381
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    .line 382
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$InputMode;->isTraceAutoAcceptEnabled()Z

    move-result v4

    if-eqz v4, :cond_74

    move v2, v1

    .line 379
    :cond_74
    invoke-virtual {v0, v3, v2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setAttribute(II)V

    .line 384
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getEnableKoreanConsonantInput()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->enableConsonantInput(Z)Z

    .line 385
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    .line 386
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->autoCorrectionEnabled:Z

    if-eqz v0, :cond_99

    .line 387
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setExactInList(I)V

    .line 394
    :cond_96
    :goto_96
    return-void

    :cond_97
    move v0, v2

    .line 376
    goto :goto_4b

    .line 390
    :cond_99
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setExactInList(I)V

    goto :goto_96
.end method

.method private toggleAmbigMode()V
    .registers 5

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1204
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "multitap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1205
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    .line 1206
    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    .line 1205
    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 1212
    :cond_28
    :goto_28
    return-void

    .line 1208
    :cond_29
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    const-string/jumbo v3, "multitap"

    .line 1209
    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    .line 1208
    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    goto :goto_28
.end method

.method private toggleKeyboardMode()V
    .registers 2

    .prologue
    .line 800
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->toggleSymbolKeyboard()V

    .line 801
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->abortKey()V

    .line 802
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setMultitapOrAmbigMode()V

    .line 803
    return-void
.end method

.method private updateMultitapDeadkey(Z)V
    .registers 9
    .param p1, "invalidateKeyNow"    # Z

    .prologue
    const/16 v6, 0xb7e

    const/16 v5, 0xb7c

    const/4 v4, 0x0

    .line 1021
    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v3, 0x900

    if-ne v2, v3, :cond_c

    .line 1064
    :cond_b
    :goto_b
    return-void

    .line 1025
    :cond_c
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/XT9Keyboard;

    .line 1027
    .local v1, "keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    if-eqz v1, :cond_b

    .line 1033
    iget-boolean v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardInputSuggestionOn:Z

    if-nez v2, :cond_2b

    .line 1034
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1035
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_23

    .line 1037
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v6, v2, v4

    .line 1061
    :cond_23
    :goto_23
    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 1062
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_b

    .line 1040
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2b
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "multitap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1041
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v2

    if-lez v2, :cond_4e

    .line 1042
    const/4 v2, 0x2

    .line 1043
    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1044
    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_23

    .line 1045
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v6, v2, v4

    goto :goto_23

    .line 1048
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_4e
    invoke-virtual {v1, v4}, Lcom/nuance/swype/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1049
    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_23

    .line 1050
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v5, v2, v4

    goto :goto_23

    .line 1054
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_59
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1055
    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_23

    .line 1056
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v5, v2, v4

    goto :goto_23
.end method

.method private updateUIShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V
    .registers 4
    .param p1, "coreShiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    if-eq v0, p1, :cond_14

    .line 1509
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1511
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 1512
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->invalidateKeyboardImage()V

    .line 1518
    :cond_14
    :goto_14
    return-void

    .line 1513
    :cond_15
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v0, v1, :cond_14

    .line 1515
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto :goto_14
.end method


# virtual methods
.method protected clearAllKeys()V
    .registers 2

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1490
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1491
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v0, :cond_13

    .line 1492
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->clearAllKeys()Z

    .line 1494
    :cond_13
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateMultitapDeadkey(Z)V

    .line 1495
    return-void
.end method

.method public clearCurrentActiveWord()V
    .registers 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 258
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 259
    return-void
.end method

.method public closeDialogs()V
    .registers 1

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->dimissRemoveUdbWordDialog()V

    .line 1843
    return-void
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/SpeechWrapper;)V
    .registers 7
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 220
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 221
    check-cast p2, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    .end local p2    # "xt9coreinput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    iput-object p2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    .line 222
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

    .line 223
    new-instance v0, Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 224
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 226
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 228
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->readStyles(Landroid/content/Context;)V

    .line 230
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/dlm/ACCoreInputDLM;->initializeACKoreanInput(Lcom/nuance/swype/connect/Connect;)V

    .line 231
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 235
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->destroy()V

    .line 237
    invoke-static {}, Lcom/nuance/dlm/ACCoreInputDLM;->destroyACKoreanInput()V

    .line 239
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 241
    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 242
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->dimissRemoveUdbWordDialog()V

    .line 243
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 3
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 1788
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mTextInputPredictionOn:Z

    if-nez v0, :cond_7

    .line 1789
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 1791
    :cond_7
    return-void
.end method

.method public finishInput()V
    .registers 2

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->removeAllMessages()V

    .line 407
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-nez v0, :cond_8

    .line 426
    :goto_7
    return-void

    .line 411
    :cond_8
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->endSession()V

    .line 413
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->endInputSession()V

    .line 415
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    .line 417
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mLastInput:I

    .line 419
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 421
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->dimissRemoveUdbWordDialog()V

    .line 423
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->unwrapTouchEvent(Landroid/view/View;)V

    .line 425
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    goto :goto_7
.end method

.method public flushCurrentActiveWord()V
    .registers 2

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 431
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_12

    .line 432
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 433
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 434
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 435
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 437
    :cond_12
    return-void
.end method

.method protected getContextBuffer()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2358
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getTextBufferCursor(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getWordCandidateListContainer()Landroid/view/View;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    return-object v0
.end method

.method public getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    return-object v0
.end method

.method public handleBackspace(I)Z
    .registers 8
    .param p1, "repeatedCount"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 807
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 808
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v3, :cond_c

    if-nez v1, :cond_10

    .line 809
    :cond_c
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendBackspace(I)V

    .line 888
    :cond_f
    :goto_f
    return v5

    .line 812
    :cond_10
    const/16 v3, 0x32

    invoke-virtual {v1, v3, v4}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 815
    .local v0, "cSeqBefore":Ljava/lang/CharSequence;
    if-nez v0, :cond_27

    .line 816
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 817
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendBackspace(I)V

    .line 818
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->showNextWordPrediction()V

    .line 819
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearAllKeys()V

    goto :goto_f

    .line 823
    :cond_27
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 824
    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 825
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_50

    .line 826
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 827
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 828
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->IsTextFieldEmpty()Z

    move-result v3

    if-nez v3, :cond_50

    .line 829
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 833
    :cond_50
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 838
    .local v2, "lengthBefore":I
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v3

    if-nez v3, :cond_76

    if-lez v2, :cond_76

    .line 839
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 840
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendBackspace(I)V

    .line 841
    const/4 v3, 0x3

    if-gt p1, v3, :cond_72

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isInsideWord()Z

    move-result v3

    if-nez v3, :cond_72

    .line 842
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->showNextWordPrediction()V

    .line 844
    :cond_72
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearAllKeys()V

    goto :goto_f

    .line 849
    :cond_76
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v3

    if-lez v3, :cond_cc

    .line 850
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 853
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSelectionKeys()Z

    move-result v3

    if-nez v3, :cond_8e

    .line 855
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->clearKey()Z

    .line 858
    :cond_8e
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v3

    if-lez v3, :cond_a9

    .line 859
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getInlineHangul(Ljava/lang/StringBuilder;)V

    .line 860
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v3, v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->displayInlineHangul(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Z)V

    .line 861
    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_f

    .line 865
    :cond_a9
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v3, v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->displayInlineHangul(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Z)V

    .line 867
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->showNextWordPrediction()V

    .line 868
    iget-boolean v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mNextWordPredictionOn:Z

    if-nez v3, :cond_b8

    .line 869
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 871
    :cond_b8
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 872
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v3

    if-ne v3, v5, :cond_f

    .line 873
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->start()V

    goto/16 :goto_f

    .line 880
    :cond_cc
    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 881
    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clearHighlightedText()V

    .line 885
    :goto_d5
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearAllKeys()V

    .line 886
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->resetContextBuffer()V

    .line 887
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->backSpace()V

    goto/16 :goto_f

    .line 883
    :cond_e2
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendBackspace(I)V

    goto :goto_d5
.end method

.method public handleCharKey(Landroid/graphics/Point;I[IJ)V
    .registers 10
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "eventTime"    # J

    .prologue
    const/4 v2, 0x1

    .line 716
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/input/InputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    .line 717
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->removeToastMsg(I)V

    .line 719
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mTextInputPredictionOn:Z

    if-nez v0, :cond_55

    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isMultiTapKeypad()Z

    move-result v0

    if-nez v0, :cond_55

    .line 720
    :cond_16
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 721
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p2

    .line 723
    :cond_20
    int-to-char v0, p2

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyChar(C)V

    .line 751
    :goto_24
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/CharacterUtilities;->isWordCompounder(I)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingState()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 752
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 753
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->supportsAlphaMode()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 754
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->toggleKeyboardMode()V

    .line 757
    :cond_46
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 758
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateMultitapDeadkey(Z)V

    .line 761
    :cond_4f
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->recordUsedTimeTapDisplaySelectionList()V

    .line 764
    iput v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mLastInput:I

    .line 765
    return-void

    .line 728
    :cond_55
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentWordCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_63

    .line 729
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearAllKeys()V

    .line 730
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateWordContext()V

    .line 733
    :cond_63
    int-to-char v0, p2

    invoke-static {v0}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 735
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleWhiteSpaces(I)V

    goto :goto_24

    .line 736
    :cond_6e
    int-to-char v0, p2

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isWordAcceptingSymbol(C)Z

    move-result v0

    if-nez v0, :cond_8b

    int-to-char v0, p2

    .line 737
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

    int-to-char v1, p2

    .line 738
    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/CharacterUtilities;->isWordCompounder(I)Z

    move-result v0

    if-eqz v0, :cond_8f

    :cond_85
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingState()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 745
    :cond_8b
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->handlePunctOrSymbol(I)V

    goto :goto_24

    .line 747
    :cond_8f
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/nuance/swype/input/korean/KoreanInputView;->handlePrediction(Landroid/graphics/Point;IJ)V

    goto :goto_24
.end method

.method public handleClose()V
    .registers 2

    .prologue
    .line 980
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->dimissRemoveUdbWordDialog()V

    .line 981
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 982
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion()V

    .line 986
    :goto_e
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->removeAllMessages()V

    .line 988
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 989
    return-void

    .line 984
    :cond_15
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    goto :goto_e
.end method

.method public handleEmotionKey()V
    .registers 2

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->showEmojiInputView()V

    .line 1771
    return-void
.end method

.method public handleHardKeyCapsLock(Z)Z
    .registers 3
    .param p1, "iscapslockon"    # Z

    .prologue
    .line 1976
    const/4 v0, 0x1

    return v0
.end method

.method public handleHardKeyDirectionKey(I)Z
    .registers 7
    .param p1, "keycode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 1995
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1996
    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v2, v3, :cond_1b

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1997
    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v3, :cond_20

    .line 1998
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    move v0, v1

    .line 2041
    :cond_1f
    :goto_1f
    return v0

    .line 2002
    :cond_20
    packed-switch p1, :pswitch_data_92

    goto :goto_1f

    .line 2030
    :cond_24
    :pswitch_24
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 2031
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion()V

    .line 2032
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    goto :goto_1f

    .line 2005
    :pswitch_31
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 2006
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v1

    if-eq v1, v4, :cond_4e

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_4e

    .line 2007
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->moveHighlightToNearCandidateForNWP(I)Z

    move-result v0

    goto :goto_1f

    .line 2009
    :cond_4e
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    goto :goto_1f

    .line 2013
    :cond_52
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->moveHighlightToNearCandidate(I)Z

    move-result v0

    goto :goto_1f

    .line 2015
    :pswitch_57
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 2016
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion()V

    .line 2017
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    goto :goto_1f

    .line 2020
    :cond_64
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2022
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v1

    if-eq v1, v4, :cond_81

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_81

    .line 2023
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->moveHightlightToCenter(I)Z

    move-result v0

    goto :goto_1f

    .line 2025
    :cond_81
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentActiveWord()V

    goto :goto_1f

    .line 2035
    :cond_85
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2037
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentActiveWord()V

    move v0, v1

    .line 2038
    goto :goto_1f

    .line 2002
    :pswitch_data_92
    .packed-switch 0x13
        :pswitch_24
        :pswitch_57
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method public handleHardKeyEndKey()Z
    .registers 12

    .prologue
    const/16 v10, 0x121

    const/16 v9, 0x7b

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2265
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v7

    if-gtz v7, :cond_1b

    .line 2266
    :cond_16
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    move v5, v6

    .line 2305
    :cond_1a
    :goto_1a
    return v5

    .line 2270
    :cond_1b
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v7, v8, :cond_39

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 2271
    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v7, v8, :cond_39

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 2272
    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v7, v8, :cond_3d

    .line 2273
    :cond_39
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    goto :goto_1a

    .line 2277
    :cond_3d
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 2278
    .local v3, "wordCandidatesCount":I
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v7

    if-ge v7, v3, :cond_1a

    .line 2283
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7, v3}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 2284
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v8, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8, v3}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 2285
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/CandidatesListView;->scrollEnd()V

    .line 2286
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->syncCandidateDisplayStyleToMode()V

    .line 2288
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 2289
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2290
    .local v1, "inlineword":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 2291
    .local v2, "span":Landroid/text/style/UnderlineSpan;
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v4

    .line 2292
    .local v4, "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2293
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2294
    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2295
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v2, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2296
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v2, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2297
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2298
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1a

    .line 2299
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2300
    invoke-static {v0, v1}, Lcom/nuance/swype/util/InputConnectionUtils;->setComposingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2301
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_1a
.end method

.method public handleHardKeyEscapeKey()Z
    .registers 2

    .prologue
    .line 1986
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1987
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentActiveWord()V

    .line 1990
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

    .line 2222
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v6

    if-gtz v6, :cond_1b

    .line 2223
    :cond_16
    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    move v4, v5

    .line 2261
    :cond_1a
    :goto_1a
    return v4

    .line 2227
    :cond_1b
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v6

    sget-object v7, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v6, v7, :cond_39

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 2228
    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v6

    sget-object v7, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v6, v7, :cond_39

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 2229
    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v6

    sget-object v7, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v6, v7, :cond_3d

    .line 2230
    :cond_39
    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    goto :goto_1a

    .line 2234
    :cond_3d
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v6

    if-eqz v6, :cond_1a

    .line 2239
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v6, v5}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 2240
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7, v5}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 2241
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/CandidatesListView;->scrollHead()V

    .line 2242
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->syncCandidateDisplayStyleToMode()V

    .line 2244
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 2245
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2246
    .local v1, "inlineword":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 2247
    .local v2, "span":Landroid/text/style/UnderlineSpan;
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v3

    .line 2248
    .local v3, "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2249
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2250
    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2251
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v2, v5, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2252
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v2, v5, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2253
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2254
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1a

    .line 2255
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2256
    invoke-static {v0, v1}, Lcom/nuance/swype/util/InputConnectionUtils;->setComposingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2257
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_1a
.end method

.method public handleHardkeyBackspace(I)Z
    .registers 3
    .param p1, "repeatedCount"    # I

    .prologue
    .line 1865
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleBackspace(I)Z

    move-result v0

    return v0
.end method

.method public handleHardkeyCharKey(I[ILandroid/view/KeyEvent;Z)V
    .registers 12
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "shiftable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1848
    if-nez p1, :cond_4

    .line 1856
    :cond_3
    :goto_3
    return-void

    .line 1851
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    instance-of v6, v0, Lcom/nuance/swype/input/BilingualLanguage;

    .line 1852
    .local v6, "isBilingual":Z
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    .line 1853
    if-eqz p4, :cond_3

    if-eqz v6, :cond_3

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->isKoreanDoubleJamoKey(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1854
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_3
.end method

.method public handleHardkeyDelete(I)Z
    .registers 8
    .param p1, "repeatedCount"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1875
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1877
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v2, :cond_c

    if-nez v1, :cond_10

    .line 1878
    :cond_c
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendBackspace(I)V

    .line 1920
    :cond_f
    :goto_f
    return v4

    .line 1886
    :cond_10
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v2

    if-lez v2, :cond_36

    .line 1887
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isComposingText()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v2

    if-nez v2, :cond_36

    .line 1888
    :cond_28
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_33

    .line 1889
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 1891
    :cond_33
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 1894
    :cond_36
    const-string/jumbo v2, "multitap"

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-nez v2, :cond_65

    iget-boolean v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mTextInputPredictionOn:Z

    if-eqz v2, :cond_65

    iget-boolean v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mRecaptureOn:Z

    if-eqz v2, :cond_65

    .line 1897
    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1898
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1899
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1900
    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1901
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_f

    .line 1906
    :cond_65
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    .line 1909
    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1910
    .local v0, "cSeqAfter":Ljava/lang/CharSequence;
    if-eqz v0, :cond_7d

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_7d

    .line 1911
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1912
    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1913
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1916
    :cond_7d
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearAllKeys()V

    .line 1917
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setContext([C)V

    .line 1918
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->backSpace()V

    goto :goto_f
.end method

.method public handleHardkeyEnter()Z
    .registers 6

    .prologue
    const/16 v3, 0x42

    const/4 v4, 0x1

    .line 1925
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1927
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v1, :cond_d

    if-nez v0, :cond_11

    .line 1928
    :cond_d
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    .line 1971
    :goto_10
    return v4

    .line 1932
    :cond_11
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1933
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_29

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1934
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_2d

    .line 1935
    :cond_29
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    goto :goto_10

    .line 1939
    :cond_2d
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1942
    invoke-static {v0}, Lcom/nuance/swype/util/InputConnectionUtils;->isComposingTextSelected(Landroid/view/inputmethod/InputConnection;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1943
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 1944
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearAllKeys()V

    .line 1964
    :cond_3c
    :goto_3c
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyToApplication(I)V

    .line 1966
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateShiftKeyState()V

    .line 1967
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateMultitapDeadkey(Z)V

    .line 1969
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_10

    .line 1946
    :cond_49
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingWordCandidates()Z

    move-result v1

    if-nez v1, :cond_65

    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIsUseHardkey:Z

    if-eqz v1, :cond_80

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 1947
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_80

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1948
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_80

    .line 1950
    :cond_65
    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_SPACE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1952
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->processWordSelection(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;Z)V

    .line 1954
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateShiftKeyState()V

    .line 1955
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateMultitapDeadkey(Z)V

    .line 1957
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_10

    .line 1960
    :cond_80
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_3c

    .line 1961
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    goto :goto_3c
.end method

.method public handleHardkeyShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .registers 3
    .param p1, "state"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 1981
    const/4 v0, 0x1

    return v0
.end method

.method public handleHardkeySpace(ZI)Z
    .registers 4
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    .line 1870
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleSpace(ZI)Z

    move-result v0

    return v0
.end method

.method public handleKey(IZI)Z
    .registers 7
    .param p1, "primaryCode"    # I
    .param p2, "quickPressed"    # Z
    .param p3, "repeatedCount"    # I

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x1

    .line 467
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->removeToastMsg(I)V

    .line 469
    sparse-switch p1, :sswitch_data_34

    .line 507
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    :cond_c
    :goto_c
    :sswitch_c
    return v0

    .line 472
    :sswitch_d
    invoke-virtual {p0, p2, p3}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleSpace(ZI)Z

    move-result v0

    goto :goto_c

    .line 475
    :sswitch_12
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v1, :cond_c

    .line 476
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->postToastMsg(I)V

    goto :goto_c

    .line 481
    :sswitch_1a
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    .line 482
    if-nez p2, :cond_c

    .line 483
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->startSpeech()V

    goto :goto_c

    .line 488
    :sswitch_23
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->toggleLastKeyboard()V

    goto :goto_c

    .line 496
    :sswitch_29
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setSwypeKeytoolTipSuggestion()V

    goto :goto_c

    .line 502
    :sswitch_2d
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    .line 503
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setMultitapOrAmbigMode()V

    goto :goto_c

    .line 469
    :sswitch_data_34
    .sparse-switch
        -0x6e -> :sswitch_c
        0x20 -> :sswitch_d
        0xb54 -> :sswitch_2d
        0xb7c -> :sswitch_12
        0x193f -> :sswitch_1a
        0xaa37 -> :sswitch_29
        0xaa38 -> :sswitch_23
    .end sparse-switch
.end method

.method public handleMultitapToggle()V
    .registers 4

    .prologue
    .line 1070
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v1, :cond_33

    .line 1071
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->toggleAmbigMode()V

    .line 1072
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 1074
    .local v0, "inputMode":Ljava/lang/String;
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setAutoCorrection()V

    .line 1075
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    const-string/jumbo v2, "multitap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setMultitapMode(Z)V

    .line 1079
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Z)V

    .line 1081
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateMultitapDeadkey(Z)V

    .line 1083
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/nuance/swype/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 1085
    .end local v0    # "inputMode":Ljava/lang/String;
    :cond_33
    return-void
.end method

.method public handlePossibleActionAfterUniversalKeyboardResize(Z)V
    .registers 2
    .param p1, "hideSymbolView"    # Z

    .prologue
    .line 1194
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setMultitapOrAmbigMode()V

    .line 1195
    return-void
.end method

.method protected handleScrollLeft()Z
    .registers 2

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1643
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->end()V

    .line 1644
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleKeyboard()V

    .line 1645
    const/4 v0, 0x1

    .line 1647
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected handleScrollRight()Z
    .registers 2

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1653
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->end()V

    .line 1654
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleKeyboard()V

    .line 1655
    const/4 v0, 0x1

    .line 1657
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public handleShiftKey()V
    .registers 3

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->cycleShiftState()V

    .line 1500
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 1501
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->invalidateKeyboardImage()V

    .line 1502
    return-void
.end method

.method public handleSpace(ZI)Z
    .registers 12
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 909
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 911
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v4, :cond_d

    if-nez v3, :cond_11

    .line 913
    :cond_d
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendSpace()V

    .line 975
    :goto_10
    return v7

    .line 917
    :cond_11
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 919
    const/4 v0, 0x1

    .line 921
    .local v0, "addSpace":Z
    iget-boolean v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mNextWordPredictionOn:Z

    .line 922
    .local v2, "displayNWP":Z
    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->isTimeoutBySpaceKey:Z

    if-eqz v4, :cond_41

    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v5, 0x600

    if-eq v4, v5, :cond_33

    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v5, 0x700

    if-eq v4, v5, :cond_33

    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v5, 0x710

    if-eq v4, v5, :cond_33

    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v5, 0x720

    if-ne v4, v5, :cond_41

    :cond_33
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 926
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_41

    .line 927
    iput-boolean v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->isTimeoutBySpaceKey:Z

    .line 928
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_10

    .line 932
    :cond_41
    invoke-direct {p0, v6}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Z)V

    .line 936
    if-eqz p1, :cond_88

    if-ge p2, v8, :cond_88

    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mAutoPunctuationOn:Z

    if-eqz v4, :cond_88

    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mTextInputPredictionOn:Z

    if-eqz v4, :cond_88

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 937
    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v4

    if-nez v4, :cond_88

    .line 938
    invoke-interface {v3, v8, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 944
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    if-eqz v1, :cond_88

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v8, :cond_88

    .line 945
    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 946
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_88

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

    .line 947
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v4

    if-nez v4, :cond_88

    .line 949
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleAutoPunct()V

    .line 950
    const/4 v0, 0x0

    .line 954
    .end local v1    # "cSeqBefore":Ljava/lang/CharSequence;
    :cond_88
    if-eqz v0, :cond_a1

    .line 955
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->processSpaceKeyState(Landroid/view/inputmethod/InputConnection;)V

    .line 956
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->sendKeyChar(C)V

    .line 968
    :goto_92
    if-eqz v2, :cond_9c

    .line 969
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateWordContext()V

    .line 970
    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 973
    :cond_9c
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_10

    .line 958
    :cond_a1
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v4}, Lcom/nuance/swype/input/EditState;->start()V

    goto :goto_92
.end method

.method public handleTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
    .registers 5
    .param p1, "trace"    # Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 785
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_23

    .line 786
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 788
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->processStoredTouch()Z
    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->access$1000(Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 789
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I

    move-result v1

    if-nez v1, :cond_1d

    .line 790
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setNotMatchToolTipSuggestion()V

    .line 794
    :cond_1d
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 795
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->resetShiftState()V

    .line 797
    :cond_23
    return-void
.end method

.method public isInputSessionStarted()Z
    .registers 3

    .prologue
    .line 2353
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

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

.method public isLanguageSwitchableOnSpace()Z
    .registers 2

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    return v0
.end method

.method protected isSupportMultitouchGesture()Z
    .registers 2

    .prologue
    .line 1662
    const/4 v0, 0x1

    return v0
.end method

.method protected isTraceInputEnabled()Z
    .registers 2

    .prologue
    .line 1546
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->isTraceEnabledOnKeyboard:Z

    return v0
.end method

.method public onApplicationUnbind()V
    .registers 1

    .prologue
    .line 1552
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onApplicationUnbind()V

    .line 1554
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->dimissRemoveUdbWordDialog()V

    .line 1557
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 1558
    return-void
.end method

.method public onHandleUdbWordRemoval(Ljava/lang/String;)V
    .registers 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 1831
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentActiveWord()V

    .line 1832
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearComposingTextAndSelection()V

    .line 1834
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v0, :cond_f

    .line 1835
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlmDelete(Ljava/lang/String;)Z

    .line 1837
    :cond_f
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->showNextWordPrediction()V

    .line 1838
    return-void
.end method

.method public onHardKeyText(Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 517
    if-eqz p1, :cond_28

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_28

    .line 518
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isComposingText()Z

    move-result v1

    if-nez v1, :cond_21

    .line 519
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 520
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 521
    const-string/jumbo v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 522
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 524
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_21
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1, v4, v4, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleHardkeyCharKey(I[ILandroid/view/KeyEvent;Z)V

    .line 526
    :cond_28
    return-void
.end method

.method public onMultitapTimeout()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1089
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1090
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_8

    .line 1117
    :goto_7
    return-void

    .line 1095
    :cond_8
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mTextInputPredictionOn:Z

    if-nez v1, :cond_24

    .line 1096
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1097
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1098
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1099
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->clearAllKeys()Z

    .line 1115
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->invalidateKeyboardImage()V

    goto :goto_7

    .line 1101
    :cond_24
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_20

    .line 1102
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1103
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1104
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_20

    .line 1105
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_5c

    .line 1106
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->displayInlineHangul(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Z)V

    .line 1110
    :goto_56
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_20

    .line 1108
    :cond_5c
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->displayInlineHangul(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Z)V

    goto :goto_56
.end method

.method public onPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .registers 5
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 1796
    if-eqz p1, :cond_46

    .line 1801
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/EmojiLoader;->isEmoji(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1802
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->handlePressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v0

    .line 1812
    :goto_14
    return v0

    .line 1803
    :cond_15
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_USER_ADDED:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    .line 1804
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlmFind(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1805
    :cond_2d
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_USER_ADDED:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-eq v0, v1, :cond_46

    .line 1806
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_NEW_WORD:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-eq v0, v1, :cond_46

    .line 1807
    :cond_3d
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->showRemoveUdbWordDialog(Ljava/lang/String;)V

    .line 1808
    const/4 v0, 0x1

    goto :goto_14

    .line 1812
    :cond_46
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public onPressMoveCandidate(FFF)V
    .registers 9
    .param p1, "xPos"    # F
    .param p2, "yPos"    # F
    .param p3, "xOffset"    # F

    .prologue
    .line 1826
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

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

    .line 1827
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->touchMoveHandle(FFF)Z

    .line 1828
    return-void
.end method

.method public onPressReleaseCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .registers 4
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 1817
    if-eqz p1, :cond_a

    .line 1818
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->setCurrentSkinTone()V

    .line 1819
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->dismissEmojiPopup()V

    .line 1820
    const/4 v0, 0x1

    .line 1822
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .registers 8
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 994
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingWordCandidates()Z

    move-result v0

    .line 995
    .local v0, "composingWordList":Z
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 996
    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v3

    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v3, v4, :cond_2f

    move v3, v2

    .line 997
    :goto_15
    if-nez v3, :cond_19

    if-eqz v0, :cond_1e

    :cond_19
    iget-boolean v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mNextWordPredictionOn:Z

    if-eqz v3, :cond_1e

    move v1, v2

    .line 1000
    .local v1, "displayNextWordPrediction":Z
    :cond_1e
    const/4 v3, 0x4

    iput v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mLastInput:I

    .line 1001
    invoke-direct {p0, p1, p2, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->processWordSelection(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;Z)V

    .line 1003
    if-eqz v1, :cond_2b

    .line 1004
    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 1006
    :cond_2b
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->addEmojiInRecentCat(Lcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 1007
    return v2

    .end local v1    # "displayNextWordPrediction":Z
    :cond_2f
    move v3, v1

    .line 996
    goto :goto_15
.end method

.method public onSpeechUpdate(Ljava/lang/CharSequence;ZZ)V
    .registers 13
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

    .line 610
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 611
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_10

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_11

    .line 705
    :cond_10
    :goto_10
    return-void

    .line 615
    :cond_11
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v6, :cond_19

    iget-boolean v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mTextInputPredictionOn:Z

    if-nez v6, :cond_4c

    .line 616
    :cond_19
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 617
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isShifted()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 618
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 620
    :cond_2a
    if-eqz p2, :cond_48

    .line 621
    const-string/jumbo v5, ""

    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 622
    if-eqz p3, :cond_44

    .line 623
    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 624
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 631
    :goto_3a
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 702
    :goto_3d
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateMultitapDeadkey(Z)V

    .line 704
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->resetShiftState()V

    goto :goto_10

    .line 626
    :cond_44
    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_3a

    .line 629
    :cond_48
    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_3a

    .line 635
    :cond_4c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-gt v6, v4, :cond_62

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lcom/nuance/swype/input/korean/KoreanInputView;->isWordAcceptingSymbol(C)Z

    move-result v6

    if-eqz v6, :cond_dc

    .line 636
    :cond_62
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 637
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v6, v4, :cond_c7

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

    .line 638
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lcom/nuance/swype/util/CharacterUtilities;->isWordAcceptingSymbol(I)Z

    move-result v6

    if-eqz v6, :cond_c7

    move v3, v4

    .line 639
    .local v3, "wordAcceptingSymbol":Z
    :goto_78
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_c9

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

    .line 640
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v6

    if-eqz v6, :cond_c9

    move v2, v4

    .line 641
    .local v2, "punctGesture":Z
    :goto_8c
    iget-boolean v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mNextWordPredictionOn:Z

    if-eqz v6, :cond_cb

    if-nez v3, :cond_94

    if-eqz v2, :cond_cb

    :cond_94
    move v0, v4

    .line 643
    .local v0, "displayNWP":Z
    :goto_95
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingState()Z

    move-result v6

    if-eqz v6, :cond_cd

    .line 644
    invoke-direct {p0, v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Z)V

    .line 649
    :goto_9e
    if-eqz p2, :cond_d8

    .line 650
    const-string/jumbo v5, ""

    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 651
    if-eqz p3, :cond_d4

    .line 652
    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 653
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 660
    :goto_ae
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v5}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 662
    if-eqz v0, :cond_c2

    .line 663
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->clearAllKeys()Z

    .line 664
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateWordContext()V

    .line 665
    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 668
    :cond_c2
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_3d

    .end local v0    # "displayNWP":Z
    .end local v2    # "punctGesture":Z
    .end local v3    # "wordAcceptingSymbol":Z
    :cond_c7
    move v3, v5

    .line 638
    goto :goto_78

    .restart local v3    # "wordAcceptingSymbol":Z
    :cond_c9
    move v2, v5

    .line 640
    goto :goto_8c

    .restart local v2    # "punctGesture":Z
    :cond_cb
    move v0, v5

    .line 641
    goto :goto_95

    .line 646
    .restart local v0    # "displayNWP":Z
    :cond_cd
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 647
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    goto :goto_9e

    .line 655
    :cond_d4
    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_ae

    .line 658
    :cond_d8
    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_ae

    .line 669
    .end local v0    # "displayNWP":Z
    .end local v2    # "punctGesture":Z
    .end local v3    # "wordAcceptingSymbol":Z
    :cond_dc
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_11d

    .line 670
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingState()Z

    move-result v5

    if-nez v5, :cond_11d

    .line 672
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 673
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 674
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 675
    if-eqz p2, :cond_119

    .line 676
    const-string/jumbo v5, ""

    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 677
    if-eqz p3, :cond_115

    .line 678
    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 679
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 686
    :goto_10b
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v5}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 687
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_3d

    .line 681
    :cond_115
    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_10b

    .line 684
    :cond_119
    invoke-interface {v1, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_10b

    .line 689
    :cond_11d
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingState()Z

    move-result v5

    if-nez v5, :cond_129

    .line 690
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 691
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 695
    :cond_129
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 696
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 695
    invoke-virtual {v5, v6, v7, v8}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 699
    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_3d
.end method

.method public onSpeechViewDismissed()V
    .registers 2

    .prologue
    .line 2340
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onSpeechViewDismissed()V

    .line 2341
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isEmptyCandidateList()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2342
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->showNextWordPrediction()V

    .line 2344
    :cond_c
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .registers 16
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

    .line 531
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getEmojiInputViewController()Lcom/nuance/swype/input/emoji/EmojiInputController;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->isEmoji(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 532
    .local v8, "isEmoji":Z
    if-eqz p1, :cond_23

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v0, :cond_23

    if-nez v8, :cond_23

    .line 533
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 534
    .local v2, "primaryCode":I
    new-array v3, v0, [I

    aput v2, v3, v1

    .line 537
    .local v3, "keyCodes":[I
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    .line 605
    .end local v2    # "primaryCode":I
    .end local v3    # "keyCodes":[I
    :cond_22
    :goto_22
    return-void

    .line 539
    :cond_23
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v7

    .line 541
    .local v7, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_22

    if-eqz p1, :cond_22

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v4, :cond_22

    .line 545
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v4, :cond_39

    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mTextInputPredictionOn:Z

    if-nez v4, :cond_57

    .line 546
    :cond_39
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 547
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 548
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 550
    :cond_4a
    invoke-interface {v7, p1, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 551
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 601
    :cond_50
    :goto_50
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateMultitapDeadkey(Z)V

    .line 603
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->resetShiftState()V

    goto :goto_22

    .line 555
    :cond_57
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gt v4, v0, :cond_6f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->isWordAcceptingSymbol(C)Z

    move-result v4

    if-nez v4, :cond_6f

    if-eqz v8, :cond_d3

    .line 556
    :cond_6f
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 557
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v0, :cond_c6

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

    .line 558
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/CharacterUtilities;->isWordAcceptingSymbol(I)Z

    move-result v4

    if-eqz v4, :cond_c6

    move v10, v0

    .line 559
    .local v10, "wordAcceptingSymbol":Z
    :goto_85
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c8

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCharUtils:Lcom/nuance/swype/util/CharacterUtilities;

    .line 560
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v4

    if-eqz v4, :cond_c8

    move v9, v0

    .line 561
    .local v9, "punctGesture":Z
    :goto_99
    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mNextWordPredictionOn:Z

    if-eqz v4, :cond_ca

    if-nez v10, :cond_a1

    if-eqz v9, :cond_ca

    :cond_a1
    move v6, v0

    .line 564
    .local v6, "displayNWP":Z
    :goto_a2
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingState()Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 565
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Z)V

    .line 570
    :goto_ab
    invoke-interface {v7, p1, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 571
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 573
    if-eqz v6, :cond_c2

    .line 574
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->clearAllKeys()Z

    .line 575
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateWordContext()V

    .line 576
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 579
    :cond_c2
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_50

    .end local v6    # "displayNWP":Z
    .end local v9    # "punctGesture":Z
    .end local v10    # "wordAcceptingSymbol":Z
    :cond_c6
    move v10, v1

    .line 558
    goto :goto_85

    .restart local v10    # "wordAcceptingSymbol":Z
    :cond_c8
    move v9, v1

    .line 560
    goto :goto_99

    .restart local v9    # "punctGesture":Z
    :cond_ca
    move v6, v1

    .line 561
    goto :goto_a2

    .line 567
    .restart local v6    # "displayNWP":Z
    :cond_cc
    invoke-direct {p0, v7}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 568
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    goto :goto_ab

    .line 580
    .end local v6    # "displayNWP":Z
    .end local v9    # "punctGesture":Z
    .end local v10    # "wordAcceptingSymbol":Z
    :cond_d3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_ff

    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingState()Z

    move-result v1

    if-nez v1, :cond_ff

    .line 582
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 583
    invoke-direct {p0, v7}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 584
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 585
    invoke-interface {v7, p1, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 586
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 587
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_50

    .line 589
    :cond_ff
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->composingState()Z

    move-result v1

    if-nez v1, :cond_10b

    .line 590
    invoke-direct {p0, v7}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 591
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    .line 595
    :cond_10b
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->addExplicitSymbol([CLcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    invoke-static {v1, v4, v5}, Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;->access$900(Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;[CLcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 597
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_50
.end method

.method protected preUpdateSpeechText()V
    .registers 1

    .prologue
    .line 2348
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion()V

    .line 2349
    return-void
.end method

.method protected removeAllMessages()V
    .registers 3

    .prologue
    .line 166
    const/4 v0, 0x1

    .local v0, "msg":I
    :goto_1
    const/16 v1, 0x13

    if-gt v0, v1, :cond_d

    .line 167
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_d
    return-void
.end method

.method protected resetMultiTap()V
    .registers 4

    .prologue
    .line 896
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInMultiTap:Z

    if-eqz v1, :cond_29

    iget v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentKey:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    iget v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentKey:I

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v2, v2

    if-ge v1, v2, :cond_29

    .line 897
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentKey:I

    aget-object v0, v1, v2

    .line 898
    .local v0, "currentKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_29

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v1, v1

    if-lez v1, :cond_29

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, 0x20

    if-ne v1, v2, :cond_29

    .line 900
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->isTimeoutBySpaceKey:Z

    .line 903
    .end local v0    # "currentKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_29
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->resetMultiTap()V

    .line 904
    return-void
.end method

.method public selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V
    .registers 3
    .param p1, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 1764
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1765
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->selectDefaultSuggestion(Z)V

    .line 1766
    return-void
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .registers 5
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    const/4 v0, 0x0

    .line 1581
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1582
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    if-nez v1, :cond_d

    .line 1583
    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->isTraceEnabledOnKeyboard:Z

    .line 1601
    :goto_c
    return-void

    .line 1587
    :cond_d
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mTextInputPredictionOn:Z

    if-eqz v1, :cond_32

    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mTraceInputSuggestionOn:Z

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1588
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-nez v1, :cond_32

    .line 1589
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v1, v2, :cond_32

    const/4 v0, 0x1

    :cond_32
    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->isTraceEnabledOnKeyboard:Z

    .line 1591
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->isTraceEnabledOnKeyboard:Z

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->enableTrace(Z)V

    .line 1598
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setMultitapOrAmbigMode()V

    .line 1599
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setAutoCorrection()V

    .line 1600
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    goto :goto_c
.end method

.method public setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .registers 5
    .param p1, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 1563
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    if-ne v0, p1, :cond_7

    .line 1576
    :goto_6
    return-void

    .line 1566
    :cond_7
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 1567
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->startSession()V

    .line 1568
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->dismissPopupKeyboard()V

    .line 1570
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 1572
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setMultitapOrAmbigMode()V

    .line 1574
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 1575
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto :goto_6
.end method

.method protected setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)V
    .registers 9
    .param p1, "coreInput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .prologue
    const/4 v6, 0x0

    .line 2363
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v0

    .line 2364
    .local v0, "primaryLanguageId":I
    const/4 v1, 0x0

    .line 2367
    .local v1, "secondaryLanguageId":I
    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v5, 0x600

    if-eq v4, v5, :cond_14

    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v5, 0x700

    if-ne v4, v5, :cond_44

    .line 2368
    :cond_14
    const/16 v0, 0x712

    .line 2369
    sget-object v3, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->CHUNJIIN:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .line 2381
    .local v3, "xt9InputMode":Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;
    :cond_18
    :goto_18
    invoke-virtual {p1, v0, v1, v3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setLanguage(IILcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v2

    .line 2382
    .local v2, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    sget-object v4, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v2, v4, :cond_24

    sget-object v4, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v2, v4, :cond_43

    .line 2384
    :cond_24
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v5, v5, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/nuance/swype/input/DatabaseConfig;->removeIncompatibleDBFiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 2386
    invoke-virtual {p1, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setLanguage(II)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v2

    .line 2387
    sget-object v4, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v2, v4, :cond_3b

    sget-object v4, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v2, v4, :cond_43

    .line 2389
    :cond_3b
    iput-boolean v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->isLDBCompatible:Z

    .line 2390
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->promptUserToUpdateLanguage()V

    .line 2391
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/korean/KoreanInputView;->toggleKeyboard(Z)V

    .line 2394
    :cond_43
    return-void

    .line 2370
    .end local v2    # "status":Lcom/nuance/input/swypecorelib/XT9Status;
    .end local v3    # "xt9InputMode":Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;
    :cond_44
    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v5, 0x710

    if-ne v4, v5, :cond_4d

    .line 2371
    sget-object v3, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->VEGA:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .restart local v3    # "xt9InputMode":Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;
    goto :goto_18

    .line 2372
    .end local v3    # "xt9InputMode":Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;
    :cond_4d
    iget v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v5, 0x720

    if-ne v4, v5, :cond_56

    .line 2373
    sget-object v3, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->NARAGATGUL:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .restart local v3    # "xt9InputMode":Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;
    goto :goto_18

    .line 2375
    .end local v3    # "xt9InputMode":Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;
    :cond_56
    sget-object v3, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->DEFAULT:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .line 2376
    .restart local v3    # "xt9InputMode":Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    instance-of v4, v4, Lcom/nuance/swype/input/BilingualLanguage;

    if-eqz v4, :cond_18

    .line 2377
    const/16 v1, 0x109

    goto :goto_18
.end method

.method public setPressDownPreviewEnabled(Z)V
    .registers 4
    .param p1, "previewEnabled"    # Z

    .prologue
    .line 1523
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x600

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x700

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x710

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x720

    if-ne v0, v1, :cond_1d

    .line 1528
    :cond_18
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/nuance/swype/input/InputView;->setPressDownPreviewEnabled(Z)V

    .line 1532
    :goto_1c
    return-void

    .line 1530
    :cond_1d
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setPressDownPreviewEnabled(Z)V

    goto :goto_1c
.end method

.method public setSwypeKeytoolTipSuggestion()V
    .registers 4

    .prologue
    .line 1775
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1776
    .local v0, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-nez v0, :cond_10

    const/4 v1, 0x0

    .line 1777
    .local v1, "selectedText":Ljava/lang/String;
    :goto_7
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_17

    .line 1783
    :goto_f
    return-void

    .line 1776
    .end local v1    # "selectedText":Ljava/lang/String;
    :cond_10
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectedTextInEditor(Lcom/nuance/swype/input/InputFieldInfo;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 1782
    .restart local v1    # "selectedText":Ljava/lang/String;
    :cond_17
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->setSwypeKeytoolTipSuggestion()V

    goto :goto_f
.end method

.method public showHardKeyPopupKeyboard(I)V
    .registers 5
    .param p1, "keyCode"    # I

    .prologue
    .line 2315
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->showHardKeyPopupKeyboard(I)V

    .line 2316
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-nez v1, :cond_8

    .line 2336
    :cond_7
    :goto_7
    return-void

    .line 2319
    :cond_8
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 2320
    if-lez v1, :cond_7

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isComposingText()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2321
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2323
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 2326
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 2327
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2329
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_3c

    .line 2330
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto :goto_7

    .line 2332
    :cond_3c
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    goto :goto_7
.end method

.method public startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V
    .registers 13
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "restarting"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/16 v9, 0x900

    const/16 v8, 0xf

    .line 270
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 272
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v5, :cond_e

    if-nez v3, :cond_f

    .line 345
    :cond_e
    :goto_e
    return-void

    .line 276
    :cond_f
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v5, :cond_18

    .line 277
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/CandidatesListView;->updateCandidatesSize()V

    .line 280
    :cond_18
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v5, :cond_21

    .line 281
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/CandidatesListView;->updateCandidatesSize()V

    .line 287
    :cond_21
    if-eqz p2, :cond_2c

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v5}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_e

    .line 292
    :cond_2c
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->resisterTouchKeyHandler(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;)V

    .line 293
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->flingGestureListener:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->registerFlingGestureHandler(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;)V

    .line 294
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v5, p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->wrapTouchEvent(Landroid/view/View;)V

    .line 295
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-static {}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->getDispatcherInstance()Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/korean/KoreanInputView$InputContextRequestHandler;

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->setHandler(Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;)Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V

    .line 297
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->getEditState()Lcom/nuance/swype/input/EditState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/EditState;->startSession()V

    .line 301
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->dismissPopupKeyboard()V

    .line 302
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    .line 305
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 307
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    .line 309
    .local v4, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 310
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x5

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 312
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$integer;->bilingual_keyboard_id:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 313
    .local v1, "bilingualId":I
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    instance-of v0, v5, Lcom/nuance/swype/input/BilingualLanguage;

    .line 314
    .local v0, "bilingualEnabled":Z
    if-eqz v0, :cond_cf

    iget v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    if-ne v5, v9, :cond_cf

    .line 315
    invoke-virtual {v4, v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->findLayout(I)Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v5

    .line 316
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Layout;->saveAsCurrent()V

    .line 321
    :cond_8d
    :goto_8d
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v2

    .line 322
    .local v2, "currentLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    if-eqz p2, :cond_dd

    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v2, v5, :cond_dd

    .line 325
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5, v2, p1, v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 331
    :goto_9e
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v5}, Lcom/nuance/swype/input/Completions;->clear()V

    .line 332
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateMultitapDeadkey(Z)V

    .line 334
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v5

    if-nez v5, :cond_b6

    .line 335
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v5

    if-nez v5, :cond_b6

    .line 336
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->postDelayShowingStartOfWordCandidate()V

    .line 339
    :cond_b6
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 340
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->triggerPasswordTip()V

    .line 342
    :cond_bf
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->postDelayResumeSpeech()V

    .line 343
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->showUserThemeWclMessage(Landroid/os/Handler;)V

    .line 344
    const-string/jumbo v5, "alphaInput"

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->showTrialExpireWclMessage(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 317
    .end local v2    # "currentLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    :cond_cf
    if-nez v0, :cond_8d

    iget v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    if-ne v5, v1, :cond_8d

    .line 318
    invoke-virtual {v4, v9}, Lcom/nuance/swype/input/InputMethods$InputMode;->findLayout(I)Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v5

    .line 319
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Layout;->saveAsCurrent()V

    goto :goto_8d

    .line 328
    .restart local v2    # "currentLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    :cond_dd
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5, p1, v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    goto :goto_9e
.end method

.method public updateSelection(IIII[I)V
    .registers 15
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesIndices"    # [I

    .prologue
    .line 442
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swype/input/korean/KoreanInputView;->validateComposingText(IIII[ILjava/lang/CharSequence;)Z

    .line 443
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/input/InputView;->updateSelection(IIII[I)V

    .line 446
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v8

    .line 447
    .local v8, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v8, :cond_15

    .line 461
    :cond_14
    :goto_14
    return-void

    .line 451
    :cond_15
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v0, :cond_24

    .line 452
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 453
    .local v7, "charBeforeCusor":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0, v7}, Lcom/nuance/swype/input/EditState;->cursorChanged(Ljava/lang/CharSequence;)V

    .line 456
    .end local v7    # "charBeforeCusor":Ljava/lang/CharSequence;
    :cond_24
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentWordCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_14

    .line 457
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isInsideWord()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    .line 458
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 459
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->clearSuggestions()V

    goto :goto_14
.end method

.method public updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I
    .registers 12
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "noComposingText"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/16 v7, 0x9

    const/16 v8, 0x121

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1394
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1396
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->emojiCandidatesHolder:Landroid/view/View;

    if-eqz v5, :cond_15

    .line 1398
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->emojiCandidatesHolder:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1401
    :cond_15
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v5, :cond_1f

    if-nez v1, :cond_20

    .line 1484
    :cond_1f
    :goto_1f
    return v3

    .line 1405
    :cond_20
    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq p1, v5, :cond_1f

    .line 1409
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1410
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1413
    :cond_31
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v5, p1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 1414
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isValidBuild()Z

    move-result v5

    if-nez v5, :cond_3e

    .line 1415
    const/4 v0, 0x0

    .line 1417
    :cond_3e
    if-eqz v0, :cond_1f

    .line 1421
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleGesture(Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v5

    if-eqz v5, :cond_48

    move v3, v4

    .line 1422
    goto :goto_1f

    .line 1425
    :cond_48
    iget-boolean v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mTextInputPredictionOn:Z

    if-eqz v5, :cond_c8

    .line 1430
    iget-boolean v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mPreferExplicit:Z

    if-eqz v5, :cond_5e

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v5

    sget-object v6, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v5, v6, :cond_5e

    .line 1431
    invoke-virtual {v0, v3}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 1432
    invoke-virtual {v0, v3}, Lcom/nuance/input/swypecorelib/Candidates;->setExactIndex(I)V

    .line 1435
    :cond_5e
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getWordListFormat(Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/swype/input/CandidatesListView$Format;

    move-result-object v5

    invoke-virtual {p0, p0, v0, v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 1437
    if-eqz p2, :cond_a3

    .line 1438
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->hasInputQueue()Z

    move-result v5

    if-nez v5, :cond_9d

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p1, v5, :cond_9d

    .line 1439
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 1440
    .local v2, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 1441
    const-string/jumbo v5, "NWP_HKB"

    invoke-virtual {v2, v5, v3}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_9d

    .line 1442
    const-string/jumbo v5, "NWP_HKB"

    invoke-virtual {v2, v5, v4}, Lcom/nuance/swype/input/UserPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 1443
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 1445
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$string;->hardkeyboard_input_next_word_prediction:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1443
    invoke-static {v4, v5, v3}, Lcom/nuance/swype/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 1451
    .end local v2    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_9d
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v3

    goto/16 :goto_1f

    .line 1454
    :cond_a3
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v5

    if-lez v5, :cond_124

    .line 1455
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_ce

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p1, v5, :cond_ce

    .line 1456
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1457
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1458
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->activeHangul:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v4, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->displayInlineHangul(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Z)V

    .line 1484
    :cond_c8
    :goto_c8
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v3

    goto/16 :goto_1f

    .line 1459
    :cond_ce
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isMultitapping()Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 1461
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1462
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1463
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1464
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1467
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 1468
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 1467
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1471
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 1472
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 1471
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1475
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v3, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_c8

    .line 1480
    :cond_124
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    goto :goto_c8
.end method

.method protected useShiftAsAlt(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 5
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$integer;->bilingual_keyboard_id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 351
    .local v0, "bilingualId":I
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    instance-of v1, v1, Lcom/nuance/swype/input/BilingualLanguage;

    .line 352
    if-eqz v1, :cond_1a

    iget v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    if-eq v1, v0, :cond_22

    iget v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardLayoutId:I

    const/16 v2, 0x900

    if-eq v1, v2, :cond_22

    .line 355
    :cond_1a
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->useShiftAsAlt(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method
