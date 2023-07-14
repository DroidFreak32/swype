.class public Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;
.super Lcom/nuance/swype/input/InputView;
.source "ChineseHandWritingInputView.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;
.implements Lcom/nuance/swype/input/HandWritingView$OnWritingAction;
.implements Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;


# static fields
.field private static ALPHA_CATEGORY:I = 0x0

.field private static CHINESE_CATEGORY:I = 0x0

.field private static final INPUT_MODE_PINYIN:I = 0x0

.field static final MSG_DELAY_RECOGNIZER:I = 0x1

.field static final MSG_DELAY_RECOGNIZER_ADD_STROKE:I = 0x2

.field private static final MSG_HANDLE_CHAR:I = 0x3

.field private static final MSG_HANDLE_SUGGESTION_CANDIDATES:I = 0x2

.field private static final MSG_HANDLE_TEXT:I = 0x4

.field static final MSG_SHOW_HOW_TO_TOAST:I = 0x1f7

.field private static SYMBOL_CATEGORY:I

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private candidatesPopup:Landroid/view/View;

.field private candidatesPopupDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

.field private candidatesPopupScrollView:Landroid/widget/ScrollView;

.field private final delayRecognizeHandlerCallback:Landroid/os/Handler$Callback;

.field private gridViewFunctionButtonPressed:Z

.field private final hwrInputViewCallback:Landroid/os/Handler$Callback;

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

.field private mCandidatesToShow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

.field protected mComposition:Lcom/nuance/swype/input/Composition;

.field private mContextCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field protected mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

.field private mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

.field mDelayRecognizeHandler:Landroid/os/Handler;

.field private mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

.field protected mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

.field mHwrInputViewHandler:Landroid/os/Handler;

.field private mInitiativeAccept:Z

.field protected mIsIMEActive:Z

.field private mPopupCandidateListShowable:Z

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

.field private mShownFuntionBar:Z

.field public mStringHandWriting123Mode:Ljava/lang/String;

.field public mStringHandWritingABCMode:Ljava/lang/String;

.field private mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

.field private mWritingOrRecognizing:Z

.field private final popupHandlerCallback:Landroid/os/Handler$Callback;

.field private symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string/jumbo v0, "ChineseHandWritingInputView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 92
    const/16 v0, 0x64

    sput v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->CHINESE_CATEGORY:I

    .line 93
    const/16 v0, 0x65

    sput v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->ALPHA_CATEGORY:I

    .line 94
    const/16 v0, 0x66

    sput v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->SYMBOL_CATEGORY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCandidatesToShow:Ljava/util/List;

    .line 91
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mShownFuntionBar:Z

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRows:Ljava/util/List;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupCandidateListShowable:Z

    .line 114
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInitiativeAccept:Z

    .line 117
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWritingOrRecognizing:Z

    .line 724
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;-><init>(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->popupHandlerCallback:Landroid/os/Handler$Callback;

    .line 743
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->popupHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    .line 1223
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;-><init>(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->hwrInputViewCallback:Landroid/os/Handler$Callback;

    .line 1305
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->hwrInputViewCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    .line 1311
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$3;-><init>(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->delayRecognizeHandlerCallback:Landroid/os/Handler$Callback;

    .line 1331
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->delayRecognizeHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/nuance/swype/input/Composition;

    invoke-direct {v0}, Lcom/nuance/swype/input/Composition;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 127
    return-void
.end method

.method private acceptCurrentDefaultWord()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 747
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 748
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v1, :cond_0

    .line 749
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v1, v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->noteSelectedCandidate(I)Z

    .line 750
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 751
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 752
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 753
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 754
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 756
    :cond_0
    const/4 v0, 0x1

    .line 759
    :goto_0
    return v0

    .line 758
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->flushCurrentActiveWord()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setSpeechViewHost()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->resumeSpeech()V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateCandidatesList()V

    return-void
.end method

.method static synthetic access$1202(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupCandidateListShowable:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->loadKeyboardGesture()V

    return-void
.end method

.method static synthetic access$1500(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->performDelayRecognition()V

    return-void
.end method

.method static synthetic access$1600(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->performDelayRecognitionStroke()V

    return-void
.end method

.method static synthetic access$1700(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridViewFunctionButtonPressed:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridViewFunctionButtonPressed:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopupDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;C)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;
    .param p1, "x1"    # C

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->handleChar(C)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->handleText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/chinese/ChineseHandWritingView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->clearArcs()V

    return-void
.end method

.method private addDigitOnlyCategory()V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addNumberOnlyCategory()V

    .line 535
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    .line 536
    return-void
.end method

.method private addFunctionBarItem()V
    .locals 3

    .prologue
    .line 1857
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 1858
    .local v0, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getLanguageOption()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mLanguageOptionOn:Z

    .line 1859
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getSettings()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mSettingsOn:Z

    .line 1860
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getInputMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInputModeOn:Z

    .line 1861
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getQuickToggle()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mQuickToggleOn:Z

    .line 1862
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getEditKeyboard()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mEditKeyboardOn:Z

    .line 1863
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getNumberKeyboard()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mNumberKeyboardOn:Z

    .line 1864
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getThemes()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mThemesOn:Z

    .line 1865
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getAddOnDictionaries()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mAddOnDictionariesOn:Z

    .line 1866
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getChineseSettings()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseSettingsOn:Z

    .line 1867
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getEmojiOnFunctionBar()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mEmojiFunctionBarOn:Z

    .line 1869
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mSettingsOn:Z

    if-eqz v1, :cond_0

    .line 1870
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 1873
    :cond_0
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mLanguageOptionOn:Z

    if-eqz v1, :cond_1

    .line 1874
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 1877
    :cond_1
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInputModeOn:Z

    if-eqz v1, :cond_2

    .line 1878
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 1882
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1883
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mEditKeyboardOn:Z

    if-eqz v1, :cond_3

    .line 1884
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 1887
    :cond_3
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mNumberKeyboardOn:Z

    if-eqz v1, :cond_4

    .line 1888
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 1892
    :cond_4
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mThemesOn:Z

    if-eqz v1, :cond_5

    .line 1893
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 1896
    :cond_5
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mEmojiFunctionBarOn:Z

    if-eqz v1, :cond_6

    .line 1897
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x76

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 1900
    :cond_6
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseSettingsOn:Z

    if-eqz v1, :cond_7

    .line 1901
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x71

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 1903
    :cond_7
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mAddOnDictionariesOn:Z

    if-eqz v1, :cond_8

    .line 1904
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x70

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 1907
    :cond_8
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x73

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 1908
    return-void
.end method

.method private cancelCurrentDefaultWord()Z
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 709
    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->clearCurrentInline()V

    .line 711
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 716
    const/4 v0, 0x1

    .line 719
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearArcs()V
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->clearArcs()V

    .line 1168
    :cond_0
    return-void
.end method

.method private clearLinePath()V
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->clearLinePath()V

    .line 1174
    :cond_0
    return-void
.end method

.method private getContextCandidates()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    .line 764
    const/4 v0, 0x0

    .line 765
    .local v0, "i":I
    const/4 v1, 0x1

    .line 766
    .local v1, "success":Z
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 767
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 769
    :cond_0
    :goto_0
    const/16 v3, 0x14

    if-ge v0, v3, :cond_2

    if-eqz v1, :cond_2

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 771
    .local v2, "word":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v0, v2, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->getWord(ILjava/lang/StringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v1

    .line 772
    if-eqz v1, :cond_0

    .line 774
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 776
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v3, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 781
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 778
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v3, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 784
    .end local v2    # "word":Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method private getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "candidate"    # Ljava/lang/CharSequence;

    .prologue
    .line 1986
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1987
    .local v0, "cand":Ljava/lang/String;
    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1988
    .local v1, "index":I
    if-gtz v1, :cond_0

    .line 1990
    .end local p1    # "candidate":Ljava/lang/CharSequence;
    :goto_0
    return-object p1

    .restart local p1    # "candidate":Ljava/lang/CharSequence;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private handleAutoPunct()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1462
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1463
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 1472
    :goto_0
    return-void

    .line 1467
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1469
    const-string/jumbo v0, "\u3002"

    .line 1471
    .local v0, "autopunct":Ljava/lang/CharSequence;
    invoke-interface {v1, v0, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method private handleBackspace()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 608
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->cancelCurrentDefaultWord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->isFunctionBarDisabledOrZeroItem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 624
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->hideChineseListAndShowFunctionBar()V

    .line 625
    const/4 v0, 0x1

    return v0

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isCandidateListEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    goto :goto_0
.end method

.method private handleChar(C)V
    .locals 2
    .param p1, "ch"    # C

    .prologue
    const/16 v1, 0x8

    .line 1176
    const/16 v0, 0xd

    if-ne p1, v0, :cond_3

    .line 1177
    const/16 p1, 0xa

    .line 1182
    :cond_0
    :goto_0
    if-ne p1, v1, :cond_4

    .line 1183
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->handleBackspace()Z

    .line 1190
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1191
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 1195
    :cond_1
    if-eq p1, v1, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1196
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1197
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 1199
    :cond_2
    return-void

    .line 1178
    :cond_3
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 1179
    const/16 p1, 0x20

    goto :goto_0

    .line 1184
    :cond_4
    const/16 v0, 0x20

    if-ne p1, v0, :cond_5

    .line 1185
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->handleSpace()V

    goto :goto_1

    .line 1187
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 1188
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->sendKeyChar(C)V

    goto :goto_1
.end method

.method private handleSpace()V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 550
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->sendSpace()V

    .line 551
    return-void
.end method

.method private handleText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 495
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 496
    return-void
.end method

.method private hideChineseListAndShowFunctionBar()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->clearCharacterList()V

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 639
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hidePhraseListView()V

    .line 640
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mShowFunctionBar:Z

    .line 642
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showFunctionBarListView()V

    .line 644
    :cond_2
    return-void
.end method

.method private hideHowToUseToast()V
    .locals 0

    .prologue
    .line 361
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 362
    return-void
.end method

.method private isIntegratedHandwriting()Z
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 1456
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndIntegratedEnabled()Z

    move-result v0

    .line 1457
    return v0
.end method

.method private isPendingRecognizeMessage()Z
    .locals 2

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private isPendingRecognizeStrokeMessage()Z
    .locals 2

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private performDelayRecognition()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1379
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v6, :cond_e

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v6

    if-nez v6, :cond_e

    .line 1380
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isIntegratedHandwriting()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1381
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCharacterListWidth()I

    move-result v7

    sub-int v5, v6, v7

    .line 1383
    .local v5, "writingPadWidth":I
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    .line 1384
    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCharacterListWidth()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1388
    div-int/lit8 v7, v5, 0x2

    if-ge v6, v7, :cond_8

    .line 1389
    sget v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->ALPHA_CATEGORY:I

    .line 1395
    .local v0, "category":I
    :goto_0
    sget v6, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->CHINESE_CATEGORY:I

    if-eq v0, v6, :cond_3

    .line 1396
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 1397
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 1398
    .local v3, "pt":Landroid/graphics/Point;
    iget v6, v3, Landroid/graphics/Point;->x:I

    if-nez v6, :cond_0

    iget v6, v3, Landroid/graphics/Point;->y:I

    if-eqz v6, :cond_9

    .line 1401
    :cond_0
    iget v6, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCharacterListWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v7, v5, 0x2

    if-le v6, v7, :cond_1

    sget v6, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->ALPHA_CATEGORY:I

    if-eq v0, v6, :cond_2

    :cond_1
    iget v6, v3, Landroid/graphics/Point;->x:I

    .line 1402
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCharacterListWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v7, v5, 0x2

    if-ge v6, v7, :cond_9

    sget v6, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->SYMBOL_CATEGORY:I

    if-ne v0, v6, :cond_9

    .line 1403
    :cond_2
    sget v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->CHINESE_CATEGORY:I

    .line 1409
    .end local v2    # "i":I
    .end local v3    # "pt":Landroid/graphics/Point;
    :cond_3
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v6, :cond_5

    .line 1410
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->clearCategory()V

    .line 1411
    sget v6, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->CHINESE_CATEGORY:I

    if-ne v0, v6, :cond_a

    .line 1412
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addOnlyTextCategory()V

    .line 1413
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    .line 1422
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->applyChangedSettings()V

    .line 1426
    .end local v0    # "category":I
    .end local v5    # "writingPadWidth":I
    :cond_5
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v6, :cond_e

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v6

    if-nez v6, :cond_e

    .line 1427
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isIntegratedHandwriting()Z

    move-result v6

    if-nez v6, :cond_d

    .line 1428
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->startArcsAddingSequence()V

    .line 1429
    const/4 v4, 0x0

    .line 1430
    .local v4, "start":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_c

    .line 1431
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-nez v6, :cond_7

    .line 1433
    add-int/lit8 v1, v2, -0x1

    .line 1434
    .local v1, "end":I
    if-ltz v4, :cond_6

    if-ge v4, v1, :cond_6

    .line 1435
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v7, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7, v8, v8}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 1437
    :cond_6
    add-int/lit8 v4, v2, 0x1

    .line 1430
    .end local v1    # "end":I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1391
    .end local v2    # "i":I
    .end local v4    # "start":I
    .restart local v5    # "writingPadWidth":I
    :cond_8
    sget v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->SYMBOL_CATEGORY:I

    .restart local v0    # "category":I
    goto/16 :goto_0

    .line 1396
    .restart local v2    # "i":I
    .restart local v3    # "pt":Landroid/graphics/Point;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1414
    .end local v2    # "i":I
    .end local v3    # "pt":Landroid/graphics/Point;
    :cond_a
    sget v6, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->ALPHA_CATEGORY:I

    if-ne v0, v6, :cond_b

    .line 1415
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addOnlyLatinLetterCategory()V

    .line 1416
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    goto :goto_2

    .line 1417
    :cond_b
    sget v6, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->SYMBOL_CATEGORY:I

    if-ne v0, v6, :cond_4

    .line 1418
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addDigitsAndSymbolsOnlyCategory()V

    .line 1419
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addPunctuationCategory()V

    .line 1420
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    goto :goto_2

    .line 1440
    .end local v0    # "category":I
    .end local v5    # "writingPadWidth":I
    .restart local v2    # "i":I
    .restart local v4    # "start":I
    :cond_c
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6, v8}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 1442
    .end local v2    # "i":I
    .end local v4    # "start":I
    :cond_d
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->endArcsAddingSequence()V

    .line 1445
    :cond_e
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1446
    iput-boolean v9, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWritingOrRecognizing:Z

    .line 1447
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iget-object v6, v6, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v6}, Lcom/nuance/swype/input/FaddingStrokeQueue;->stopFading()V

    .line 1448
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1449
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->clearArcs()V

    .line 1451
    :cond_f
    return-void
.end method

.method private performDelayRecognitionStroke()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1356
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isIntegratedHandwriting()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1376
    :goto_0
    return-void

    .line 1359
    :cond_0
    const/4 v2, 0x0

    .line 1360
    .local v2, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1361
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-nez v3, :cond_2

    .line 1363
    add-int/lit8 v0, v1, -0x1

    .line 1364
    .local v0, "end":I
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v3, :cond_1

    if-ltz v2, :cond_1

    if-ge v2, v0, :cond_1

    .line 1365
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v4, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 1367
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 1360
    .end local v0    # "end":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1371
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v3, :cond_4

    .line 1372
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 1375
    :cond_4
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private postDelayResumeSpeech()V
    .locals 4

    .prologue
    const/16 v1, 0xb

    .line 338
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 342
    return-void
.end method

.method private postHowToUseToastMsg()V
    .locals 4

    .prologue
    .line 357
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 358
    return-void
.end method

.method private processPendingRecognizing()V
    .locals 2

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1343
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->performDelayRecognition()V

    .line 1344
    return-void
.end method

.method private removeDelayRecognitionMsg()V
    .locals 2

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1335
    return-void
.end method

.method private removeDelayRecognitionStroke()V
    .locals 2

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1348
    return-void
.end method

.method private removeHowToUseToastMsg()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    return-void
.end method

.method private resetWrite()V
    .locals 2

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1616
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1618
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->clearArcs()V

    .line 1619
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_1

    .line 1620
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setNewSession(Z)V

    .line 1622
    :cond_1
    return-void
.end method

.method private setKeyboardForTextEntry(Lcom/nuance/swype/input/InputFieldInfo;)V
    .locals 6
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    const/16 v5, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 369
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 370
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 369
    :goto_0
    invoke-virtual {v3, p1, v4, v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;Z)Lcom/nuance/swype/input/XT9Keyboard;

    .line 372
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNameField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, v5, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setAttribute(II)Z

    .line 380
    :goto_1
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 382
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->addDigitOnlyCategory()V

    .line 388
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 370
    goto :goto_0

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, v5, v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setAttribute(II)Z

    goto :goto_1

    .line 384
    :cond_2
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 385
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/InputMethods;->addTextCategory(Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 386
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    goto :goto_2
.end method

.method private showCandidatesView(Ljava/util/List;Ljava/util/List;)V
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "ClickableViewAccessibility",
            "PrivateResource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1480
    .local p1, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p2, "aWordSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1594
    :cond_0
    :goto_0
    return-void

    .line 1484
    :cond_1
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopupDataList:Ljava/util/List;

    .line 1486
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getHeight()I

    move-result v3

    add-int v6, v2, v3

    .line 1487
    .local v6, "height":I
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getWidth()I

    move-result v13

    .line 1488
    .local v13, "width":I
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v2, v6}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->setMinimumHeight(I)V

    .line 1489
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1490
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eq v2, v13, :cond_2

    .line 1491
    sget-object v2, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "recreate candidatesPopup....candidatesPopup.getMeasuredWidth(): "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 1492
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "keyboard width: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1491
    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1493
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 1495
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    if-nez v2, :cond_3

    .line 1497
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 1498
    .local v10, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 1499
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 1500
    sget v2, Lcom/nuance/swype/input/R$layout;->candidates_popup:I

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 1501
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 1504
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v12, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1507
    .local v12, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v2, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1508
    const/high16 v2, -0x80000000

    invoke-static {v13, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 1509
    .local v14, "widthMeasureSpec":I
    const/high16 v2, -0x80000000

    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1510
    .local v9, "heightMeasureSpec":I
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v2, v14, v9}, Landroid/view/View;->measure(II)V

    .line 1512
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v3, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    .line 1513
    .local v8, "closeButton":Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$drawable;->keyboard_popup_btn_close_cjk:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1514
    new-instance v2, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$4;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$4;-><init>(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    invoke-virtual {v8, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1527
    new-instance v2, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$5;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$5;-><init>(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    invoke-virtual {v8, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1548
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v3, Lcom/nuance/swype/input/R$id;->scroll_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    .line 1549
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v3, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    .line 1553
    .end local v8    # "closeButton":Landroid/widget/ImageButton;
    .end local v9    # "heightMeasureSpec":I
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14    # "widthMeasureSpec":I
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1554
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 1555
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setWordSource(Ljava/util/List;)V

    .line 1556
    move-object/from16 v11, p1

    .line 1557
    .local v11, "keyboardDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRows:Ljava/util/List;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2, v3, v11, v4}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setGridCandidates(Ljava/util/List;Ljava/util/List;I)V

    .line 1559
    new-instance v1, Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$xml;->kbd_chinese_popup_template:I

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRows:Ljava/util/List;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    .line 1560
    invoke-virtual {v5}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/util/List;IILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 1561
    .local v1, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1562
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setIme(Lcom/nuance/swype/input/IME;)V

    .line 1563
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1566
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    new-instance v3, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$6;

    invoke-direct {v3, p0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$6;-><init>(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Lcom/nuance/swype/input/KeyboardEx;)V

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 1591
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getWidth()I

    move-result v2

    invoke-direct {v12, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1592
    .local v12, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v2, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1593
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->showCandidatesGridView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private showContextCandidatesView()V
    .locals 2

    .prologue
    .line 982
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCandidatesToShow:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCandidatesToShow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 986
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCandidatesToShow:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showCandidatesView(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method private updateCandidatesList()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 796
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIsIMEActive:Z

    if-nez v1, :cond_1

    .line 798
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 799
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 800
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v1, :cond_0

    .line 807
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    if-nez v1, :cond_0

    .line 810
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 812
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isValidBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 819
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCandidatesToShow:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 822
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 823
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 824
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCandidatesToShow:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 823
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 830
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_4

    .line 855
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCandidatesToShow:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-virtual {v1, v2, v4, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;ILjava/util/List;)V

    .line 860
    .end local v0    # "i":I
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->clearCommonChar()I

    .line 861
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    :cond_5
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCandidatesToShow:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 862
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 863
    :cond_6
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/FunctionBarListView;->clear()V

    .line 864
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 865
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 878
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    goto/16 :goto_0

    .line 834
    :cond_8
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isCandidateListEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    .line 836
    invoke-virtual {v1}, Lcom/nuance/swype/input/FunctionBarListView;->isFunctionBarDisabledOrZeroItem()Z

    move-result v1

    if-nez v1, :cond_9

    .line 837
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setContext(Ljava/lang/CharSequence;)Z

    .line 838
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 839
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 840
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCandidatesToShow:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 842
    :cond_9
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCandidatesToShow:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 843
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setContext(Ljava/lang/CharSequence;)Z

    .line 844
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/Composition;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setContext(Ljava/lang/CharSequence;)Z

    .line 845
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContextCandidates()V

    .line 847
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 848
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCandidatesToShow:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 849
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 850
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCandidatesToShow:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_a

    .line 852
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 849
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 867
    .end local v0    # "i":I
    :cond_b
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_c

    .line 868
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 870
    :cond_c
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v1, :cond_7

    .line 871
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 872
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hidePhraseListView()V

    .line 873
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 874
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mShowFunctionBar:Z

    .line 875
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showFunctionBarListView()V

    goto/16 :goto_3
.end method


# virtual methods
.method public changeAltIconOfSwitchingLayout(Z)V
    .locals 6
    .param p1, "aFullScreen"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 1917
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    .line 1918
    if-eqz v4, :cond_3

    .line 1919
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 1920
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1921
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1922
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const v5, 0xaa3b

    if-ne v4, v5, :cond_1

    .line 1923
    if-eqz p1, :cond_2

    .line 1924
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1925
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1926
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltIconMinHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 1928
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltPreMinHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 1940
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 1920
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1932
    :cond_2
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1933
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1934
    .restart local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltIconMaxHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 1936
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltPreMaxHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1950
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v1    # "i":I
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_3
    return-void
.end method

.method protected clearAllKeys()V
    .locals 0

    .prologue
    .line 703
    return-void
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 3
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "t9write"    # Lcom/nuance/input/swypecorelib/T9Write;
    .param p4, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 183
    check-cast p2, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .end local p2    # "xt9coreinput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    iput-object p2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .line 184
    check-cast p3, Lcom/nuance/input/swypecorelib/T9WriteChinese;

    .end local p3    # "t9write":Lcom/nuance/input/swypecorelib/T9Write;
    iput-object p3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    .line 185
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 186
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 187
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 188
    return-void
.end method

.method public createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;
    .locals 5
    .param p1, "onSelectListener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-nez v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 152
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 153
    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 152
    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 154
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 155
    sget v2, Lcom/nuance/swype/input/R$layout;->chinese_hs_candidates:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    .line 157
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 159
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->setKeyboardViewEx(Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 160
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->initViews()V

    .line 161
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getCJKCandidatesListView()Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 162
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    sget v3, Lcom/nuance/swype/input/R$id;->functionbar:I

    .line 163
    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/FunctionBarListView;

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    .line 164
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isValidBuild()Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showLeftArrow(Z)V

    .line 168
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V

    .line 170
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    .line 171
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    new-instance v3, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v3, v4, p0}, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;)V

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->setOnFunctionBarListener(Lcom/nuance/swype/input/FunctionBarListView$OnFunctionBarListener;)V

    .line 172
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    return-object v2
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->hide()V

    .line 194
    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    .line 196
    :cond_0
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->destroy()V

    .line 197
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 198
    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 199
    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .line 200
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->cancelQueryTask()V

    .line 201
    return-void
.end method

.method public finishInput()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 392
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 393
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->removeHowToUseToastMsg()V

    .line 394
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->hideHowToUseToast()V

    .line 395
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIsIMEActive:Z

    .line 396
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWritingOrRecognizing:Z

    .line 398
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->recycleBitmap()V

    .line 399
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 400
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->dismissPopupKeyboard()V

    .line 402
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->clearCharacterList()V

    .line 403
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 404
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->resetWrite()V

    .line 406
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 407
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->finishSession()V

    .line 408
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 410
    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 413
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 414
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->requestLayout()V

    .line 416
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v0, :cond_1

    .line 424
    :goto_0
    return-void

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->finishSession()V

    .line 420
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->dimissRemoveUdbWordDialog()V

    .line 422
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->unwrapTouchEvent(Landroid/view/View;)V

    .line 423
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V

    goto :goto_0
.end method

.method public flushCurrentActiveWord()V
    .locals 1

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isValidBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    :goto_0
    return-void

    .line 677
    :cond_0
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->cancelQueryTask()V

    .line 678
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys()Z

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_2

    .line 682
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 684
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 685
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 686
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 688
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 689
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 691
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 692
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_5

    .line 693
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 695
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInitiativeAccept:Z

    .line 696
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->dimissRemoveUdbWordDialog()V

    .line 697
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->clearArcs()V

    goto :goto_0
.end method

.method public getCandidateHeight()I
    .locals 1

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v0, :cond_0

    .line 1815
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getHeight()I

    move-result v0

    .line 1817
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCharacterListWidth()I
    .locals 1

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    if-eqz v0, :cond_0

    .line 1851
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getCharacterListWidth()I

    move-result v0

    .line 1853
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWordCandidateListContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    return-object v0
.end method

.method protected handleBackspace(I)Z
    .locals 2
    .param p1, "repeatedCount"    # I

    .prologue
    const/16 v1, 0x8

    .line 649
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->processPendingRecognizing()V

    .line 652
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueChar(C)V

    .line 667
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 657
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 661
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueChar(C)V

    goto :goto_0

    .line 665
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->handleBackspace()Z

    goto :goto_0
.end method

.method public handleCharKey(Landroid/graphics/Point;I[IJ)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "eventTime"    # J

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->processPendingRecognizing()V

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueChar(C)V

    .line 546
    return-void
.end method

.method public handleClose()V
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIsIMEActive:Z

    .line 429
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->resetWrite()V

    .line 430
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->dimissRemoveUdbWordDialog()V

    .line 431
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->recycleBitmap()V

    .line 432
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 433
    return-void
.end method

.method public handleKey(IZI)Z
    .locals 2
    .param p1, "primaryCode"    # I
    .param p2, "quickPressed"    # Z
    .param p3, "repeatedCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 446
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->hideHowToUseToast()V

    .line 450
    sparse-switch p1, :sswitch_data_0

    .line 479
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 452
    :sswitch_0
    if-nez p2, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->flushCurrentActiveWord()V

    .line 454
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->startSpeech()V

    goto :goto_0

    .line 458
    :sswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->clearCharacterList()V

    .line 459
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 460
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    goto :goto_0

    .line 463
    :sswitch_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->toggleLastKeyboard()V

    goto :goto_0

    .line 466
    :sswitch_3
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->hideCandidatesGridView(Landroid/view/View;)V

    .line 469
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 471
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->flushCurrentActiveWord()V

    .line 472
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mShowFunctionBar:Z

    if-eqz v0, :cond_2

    .line 473
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->hideChineseListAndShowFunctionBar()V

    .line 475
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->clearLinePath()V

    .line 476
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    goto :goto_0

    .line 450
    nop

    :sswitch_data_0
    .sparse-switch
        0xb54 -> :sswitch_3
        0xb7b -> :sswitch_1
        0x193f -> :sswitch_0
        0xaa38 -> :sswitch_2
    .end sparse-switch
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 438
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

    :cond_0
    const/4 v0, 0x1

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
    .line 486
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 487
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

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 2
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 1657
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v0, v0

    if-nez v0, :cond_1

    .line 1658
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 1666
    :goto_0
    return v0

    .line 1660
    :cond_1
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const v1, 0xaa3b

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v1, 0xff5

    if-ne v0, v1, :cond_3

    .line 1662
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->clearCharacterList()V

    .line 1663
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 1666
    :cond_3
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_0
.end method

.method protected handleScrollDown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1713
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_0

    .line 1714
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->finishInput()V

    .line 1715
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 1716
    const/4 v0, 0x1

    .line 1718
    :cond_0
    return v0
.end method

.method protected handleScrollUp()Z
    .locals 1

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleFullScreenHW()V

    .line 1725
    const/4 v0, 0x1

    .line 1727
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleShiftKey()V
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->cycleShiftState()V

    .line 1216
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->invalidateKeyboardImage()V

    .line 1217
    return-void
.end method

.method protected handleSpace(ZI)Z
    .locals 8
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 555
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 557
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->processPendingRecognizing()V

    .line 558
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v4, :cond_0

    .line 559
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueChar(C)V

    .line 604
    :cond_0
    :goto_0
    return v7

    .line 562
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 563
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 566
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v4, :cond_0

    .line 567
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 568
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateCandidatesList()V

    goto :goto_0

    .line 571
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 572
    const/4 v0, 0x1

    .line 576
    .local v0, "addSpace":Z
    if-eqz p1, :cond_4

    if-ge p2, v6, :cond_4

    iget-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mAutoPunctuationOn:Z

    if-eqz v4, :cond_4

    .line 577
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 579
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 580
    invoke-interface {v3, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 586
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v2

    .line 587
    .local v2, "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    if-eqz v1, :cond_3

    .line 588
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 589
    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 590
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 591
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 593
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->handleAutoPunct()V

    .line 594
    const/4 v0, 0x0

    .line 597
    :cond_3
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 600
    .end local v1    # "cSeqBefore":Ljava/lang/CharSequence;
    .end local v2    # "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->sendSpace()V

    goto :goto_0
.end method

.method public isHandWritingInputView()Z
    .locals 1

    .prologue
    .line 1982
    const/4 v0, 0x1

    return v0
.end method

.method public isLanguageSwitchableOnSpace()Z
    .locals 1

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1733
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isNormalTextInputMode()Z
    .locals 1

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    return v0
.end method

.method public isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z
    .locals 1
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1652
    const/4 v0, 0x0

    return v0
.end method

.method public moveCursorToMiddle(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .locals 8
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "text"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1995
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/nuance/swype/input/R$string;->mappings_symbol:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1996
    .local v3, "mapping":[C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1997
    .local v2, "map":Ljava/lang/StringBuilder;
    array-length v7, v3

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-char v0, v3, v5

    .line 1998
    .local v0, "c":C
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1997
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2000
    .end local v0    # "c":C
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 2001
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    .line 2002
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x7d0

    invoke-interface {p1, v7, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2003
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 2004
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {p1, v5, v6}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 2009
    .end local v4    # "s":Ljava/lang/String;
    :cond_1
    return-void

    .line 2000
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 5
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    const/4 v4, 0x1

    .line 1625
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    if-eqz v0, :cond_0

    .line 1638
    :goto_0
    return-void

    .line 1628
    :cond_0
    instance-of v0, p1, Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-eqz v0, :cond_1

    .line 1629
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showCharacterCandidatesView()V

    goto :goto_0

    .line 1631
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupCandidateListShowable:Z

    if-eqz v0, :cond_2

    .line 1632
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "showinline nextButtnPressed"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1633
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1634
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showContextCandidatesView()V

    .line 1636
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->dismissPopupKeyboard()V

    goto :goto_0
.end method

.method public onApplicationUnbind()V
    .locals 0

    .prologue
    .line 1671
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->dimissRemoveUdbWordDialog()V

    .line 1672
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onApplicationUnbind()V

    .line 1673
    return-void
.end method

.method public onBack(Landroid/view/View;)V
    .locals 3
    .param p1, "aContainer"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1597
    if-nez p1, :cond_1

    .line 1608
    :cond_0
    :goto_0
    return-void

    .line 1600
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    if-eqz v0, :cond_2

    .line 1602
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->hideCandidatesGridView(Landroid/view/View;)V

    .line 1603
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1604
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->setMinimumHeight(I)V

    .line 1606
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method public onCandidateLongPressed(ILjava/lang/String;ILcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "wdSource"    # I
    .param p4, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1770
    packed-switch p3, :pswitch_data_0

    .line 1794
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1774
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showRemoveUdbWordDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 1777
    :pswitch_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v2, p2, v3}, Lcom/nuance/swype/util/ContactUtils;->getContactNumberFromPhoneBook(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1782
    :pswitch_3
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/EmojiLoader;->isEmoji(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1783
    invoke-virtual {p4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getEmojiInfoList()Ljava/util/List;

    move-result-object v2

    .line 1784
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiInfo;

    .line 1785
    .local v0, "emojiInfo":Lcom/nuance/swype/input/emoji/EmojiInfo;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getEmojis()Ljava/util/Map;

    move-result-object v2

    .line 1786
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1787
    .local v1, "selected_emoji":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v0, v1, v2}, Lcom/nuance/swype/input/InputView;->showSkinTonePopupForCJK(Lcom/nuance/swype/input/emoji/EmojiInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1770
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onHandleUdbWordRemoval(Ljava/lang/String;)V
    .locals 6
    .param p1, "word"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1739
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v2, :cond_1

    .line 1740
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->dlmDelete(Ljava/lang/String;)Z

    move-result v0

    .line 1741
    .local v0, "deleteStatus":Z
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v2, :cond_1

    .line 1742
    if-eqz v0, :cond_2

    .line 1743
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1744
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->delete_success:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1745
    .local v1, "removeMgs":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .line 1746
    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 1745
    invoke-static {v2, v1, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 1747
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v2}, Lcom/nuance/swype/input/Composition;->clearCurrentInline()V

    .line 1748
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1749
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1750
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 1752
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1753
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1754
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 1756
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->hideCandidatesGridView(Landroid/view/View;)V

    .line 1757
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1767
    .end local v0    # "deleteStatus":Z
    .end local v1    # "removeMgs":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1759
    .restart local v0    # "deleteStatus":Z
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1760
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->delete_failed:I

    .line 1761
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1762
    .restart local v1    # "removeMgs":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .line 1763
    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 1762
    invoke-static {v2, v1, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method

.method public onHandleWriteEvent(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;

    .prologue
    const-wide/16 v4, 0x5

    .line 1137
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 1138
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isValidBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1162
    :goto_0
    return-void

    .line 1142
    :cond_0
    iget v0, p1, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;->mType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1144
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    .line 1145
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1144
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1148
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    .line 1149
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1148
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1154
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    .line 1155
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1154
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPressMoveCandidate(FFF)V
    .locals 5
    .param p1, "xPos"    # F
    .param p2, "yPos"    # F
    .param p3, "xOffset"    # F

    .prologue
    .line 1805
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

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

    .line 1806
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->touchMoveHandle(FFF)Z

    .line 1807
    return-void
.end method

.method public onPressReleaseCandidate(ILjava/lang/String;I)Z
    .locals 6
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "wdSource"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1796
    sget-object v2, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

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

    .line 1797
    if-eqz p2, :cond_0

    .line 1798
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->setCurrentSkinTone()V

    .line 1799
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->dismissEmojiPopup()V

    .line 1802
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onScrollContentChanged()V
    .locals 1

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v0, :cond_0

    .line 1976
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->updateScrollArrowVisibility()V

    .line 1978
    :cond_0
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 502
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->processPendingRecognizing()V

    .line 506
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 508
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 509
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 510
    invoke-interface {v1, p1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 511
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 530
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return-void

    .line 515
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isShifted()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v2, :cond_3

    .line 516
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 517
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v0

    .line 518
    .local v0, "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 519
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 520
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 521
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Lcom/nuance/swype/util/CharacterUtilities;->endsWithSurrogatePair(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 523
    invoke-interface {p1, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 525
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, p1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 527
    .end local v0    # "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, p1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public penDown(Landroid/view/View;)V
    .locals 2
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 912
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->dismissPopupKeyboard()V

    .line 913
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 914
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->removeDelayRecognitionStroke()V

    .line 916
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FaddingStrokeQueue;->startActionFadingPenDown()V

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eq v0, p1, :cond_1

    instance-of v0, p1, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_1

    .line 922
    check-cast p1, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .end local p1    # "src":Landroid/view/View;
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .line 923
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isIntegratedHandwriting()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setWidth(I)V

    .line 925
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setWidth(I)V

    .line 926
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->applyChangedSettings()V

    .line 930
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWritingOrRecognizing:Z

    if-nez v0, :cond_2

    .line 931
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 932
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_2

    .line 933
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 934
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 935
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 936
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 941
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWritingOrRecognizing:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isIntegratedHandwriting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 942
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->startArcsAddingSequence()V

    .line 945
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWritingOrRecognizing:Z

    .line 946
    return-void
.end method

.method public penUp(Ljava/util/List;Landroid/view/View;)V
    .locals 5
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

    .line 949
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FaddingStrokeQueue;->startActionFading()V

    .line 951
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FaddingStrokeQueue;->startFading()V

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 955
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_1

    .line 956
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isPendingRecognizeStrokeMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 957
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->removeDelayRecognitionStroke()V

    .line 958
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 967
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_2

    .line 968
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 969
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 970
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    .line 971
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->getRecognizerDelay()I

    move-result v1

    int-to-long v2, v1

    .line 970
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 977
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupCandidateListShowable:Z

    .line 978
    return-void

    .line 962
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 973
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    .line 974
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->getRecognizerDelay()I

    move-result v1

    int-to-long v2, v1

    .line 973
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public penUp([Lcom/nuance/swype/input/Stroke$Arc;Landroid/view/View;)V
    .locals 1
    .param p1, "arcs"    # [Lcom/nuance/swype/input/Stroke$Arc;
    .param p2, "Src"    # Landroid/view/View;

    .prologue
    .line 1611
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->penUp(Ljava/util/List;Landroid/view/View;)V

    .line 1612
    return-void
.end method

.method public prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 1
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1641
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    if-eqz v0, :cond_0

    .line 1649
    :goto_0
    return-void

    .line 1644
    :cond_0
    instance-of v0, p1, Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-eqz v0, :cond_1

    .line 1645
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showCharacterCandidatesView()V

    goto :goto_0

    .line 1647
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    goto :goto_0
.end method

.method protected removeAllMessages()V
    .locals 3

    .prologue
    .line 1203
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1204
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1205
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1206
    const/4 v0, 0x1

    .local v0, "msg":I
    :goto_0
    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 1207
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1209
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 1210
    return-void
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/CharSequence;
    .param p3, "source"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 994
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 995
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 996
    .local v1, "wordIndex":I
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v2, :cond_0

    .line 997
    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 998
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->noteSelectedCandidate(I)Z

    .line 1005
    .end local v1    # "wordIndex":I
    :cond_0
    :goto_0
    sget-object v2, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "selectWord showInline: select word:"

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1006
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, "selected_emoji":Ljava/lang/String;
    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/EmojiLoader;->isEmoji(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1008
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getEmojis()Ljava/util/Map;

    move-result-object v2

    .line 1009
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "selected_emoji":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1010
    .restart local v0    # "selected_emoji":Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1011
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 1021
    :goto_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1022
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 1023
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1024
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 1025
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->endArcsAddingSequence()V

    .line 1027
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1028
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWritingOrRecognizing:Z

    .line 1029
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iget-object v2, v2, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v2}, Lcom/nuance/swype/input/FaddingStrokeQueue;->stopFading()V

    .line 1030
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1031
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->clearArcs()V

    .line 1033
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v2, :cond_3

    .line 1034
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v2, v6}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setNewSession(Z)V

    .line 1038
    :cond_3
    iput-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 1039
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCandidatesToShow:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1040
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1041
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1042
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 1043
    if-eqz v0, :cond_4

    .line 1044
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v0, v2}, Lcom/nuance/swype/input/InputView;->addEmojiInRecentCat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :cond_4
    return-void

    .line 1000
    .end local v0    # "selected_emoji":Ljava/lang/String;
    .restart local v1    # "wordIndex":I
    :cond_5
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->noteSelectedCandidate(I)Z

    goto/16 :goto_0

    .line 1013
    .end local v1    # "wordIndex":I
    .restart local v0    # "selected_emoji":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v2, p2}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1017
    :cond_7
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v2, p2}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setActiveCandidate(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 787
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCandidatesToShow:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCandidatesToShow:Ljava/util/List;

    .line 788
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 790
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCandidatesToShow:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 792
    :cond_0
    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setCandidatesViewShown(Z)V

    .line 136
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 139
    :cond_0
    if-eqz p1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->setVisibility(I)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHWContainer(Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;)V
    .locals 0
    .param p1, "aContainer"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    .line 131
    return-void
.end method

.method public setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V
    .locals 2
    .param p1, "view"    # Lcom/nuance/swype/input/HandWritingView;

    .prologue
    .line 892
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->clearCurrentInline()V

    .line 895
    :cond_0
    instance-of v0, p1, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_2

    .line 896
    check-cast p1, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .end local p1    # "view":Lcom/nuance/swype/input/HandWritingView;
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .line 901
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setFullScreen(Z)V

    .line 903
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v0, :cond_1

    .line 904
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isIntegratedHandwriting()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setIntegratedEnabled(Z)V

    .line 908
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->clearArcs()V

    .line 909
    return-void

    .line 898
    .restart local p1    # "view":Lcom/nuance/swype/input/HandWritingView;
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    goto :goto_0
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 0
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    .line 1955
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateDockModeForHandwriting(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1956
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1957
    return-void
.end method

.method public setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .locals 3
    .param p1, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 1678
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1709
    :goto_0
    return-void

    .line 1682
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 1683
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->dismissPopupKeyboard()V

    .line 1684
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->flushCurrentActiveWord()V

    .line 1686
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v1, :cond_2

    .line 1687
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    if-nez v1, :cond_1

    .line 1688
    new-instance v1, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-direct {v1}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    .line 1690
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->setContext(Landroid/content/Context;)V

    .line 1691
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->show()V

    goto :goto_0

    .line 1695
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 1696
    .local v0, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v1, p1, v2, v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 1697
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1698
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1699
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->hideHWFrameAndCharacterList()V

    .line 1700
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->hideChineseListAndShowFunctionBar()V

    .line 1708
    :goto_1
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_0

    .line 1702
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->showHWFrameList()V

    .line 1703
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 1704
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/nuance/swype/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardViewEx;)V

    goto :goto_1
.end method

.method public setNotMatchToolTipSuggestion()V
    .locals 1

    .prologue
    .line 1836
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getShowFunctionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1846
    :goto_0
    return-void

    .line 1839
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v0, :cond_1

    .line 1840
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 1841
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 1843
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showNotMatchTootip()V

    .line 1844
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 1845
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method protected setSwypeKeytoolTipSuggestion()V
    .locals 1

    .prologue
    .line 1822
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getShowFunctionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1832
    :goto_0
    return-void

    .line 1825
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v0, :cond_1

    .line 1826
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 1827
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 1829
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showSwypeTooltip()V

    .line 1830
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 1831
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method public shouldDisableInput(I)Z
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 1961
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isValidBuild()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xff7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showCharacterCandidatesView()V
    .locals 0

    .prologue
    .line 991
    return-void
.end method

.method public showHWFrameAndCharacterList()V
    .locals 1

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->showHWFrameAndCharacterList()V

    .line 1811
    return-void
.end method

.method showHowToUseToast()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 346
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 348
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    const-string/jumbo v1, "show_how_to_toggle_full_screen_mode_chn"

    invoke-virtual {v0, v1, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    const-string/jumbo v1, "show_how_to_toggle_full_screen_mode_chn"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 350
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->how_to_toggle_full_screen_mode:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 350
    invoke-static {v1, v2, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 354
    :cond_0
    return-void
.end method

.method public showInline()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 885
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "showInline"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 887
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 889
    :cond_0
    return-void
.end method

.method public startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V
    .locals 9
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "restarting"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/16 v8, 0xf

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 206
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v2, :cond_0

    .line 335
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateCandidatesSize()V

    .line 212
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    if-eqz v2, :cond_3

    .line 213
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getVerContainer()Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 214
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getVerContainer()Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->updateCandidatesSize()V

    .line 216
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->updateHandwritingPadSize()V

    .line 218
    :cond_3
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIsIMEActive:Z

    .line 219
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupCandidateListShowable:Z

    .line 220
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 222
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCompletionOn:Z

    .line 224
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->dismissPopupKeyboard()V

    .line 226
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    if-eqz v2, :cond_4

    .line 227
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->hide()V

    .line 230
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getShowFunctionBar()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mShowFunctionBar:Z

    .line 231
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mShowFunctionBar:Z

    if-eqz v2, :cond_5

    .line 232
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/FunctionBarListView;->recycleBitmap()V

    .line 233
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->addFunctionBarItem()V

    .line 235
    :cond_5
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->startSession()V

    .line 236
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    .line 237
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2, v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setInputMode(I)Z

    .line 238
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    const/16 v5, 0x65

    iget v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFuzzyPinyin:I

    invoke-virtual {v2, v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setAttribute(II)V

    .line 240
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearCommonChar()I

    .line 241
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V

    .line 242
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->showHWFrameAndCharacterList()V

    .line 243
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->cancelCurrentDefaultWord()Z

    .line 244
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->removeAllRecognizeListener()V

    .line 245
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, p0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 246
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/nuance/swype/input/Composition;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 247
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v2

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2, v5, v6}, Lcom/nuance/swype/input/InputMethods;->addTextCategory(Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 248
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    .line 249
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->startSession(I)V

    .line 251
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_9

    .line 253
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setWritingDirection(I)V

    .line 257
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->applyChangedSettings()V

    .line 259
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 260
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 261
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v2, :cond_6

    .line 262
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 265
    :cond_6
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->onBack(Landroid/view/View;)V

    .line 267
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setKeyboardForTextEntry(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 268
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 270
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    const/16 v5, 0xe1

    if-ne v2, v5, :cond_a

    .line 271
    sget v2, Lcom/nuance/swype/input/R$string;->handwriting_123_mode_simp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 272
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    .line 277
    :goto_2
    sget v2, Lcom/nuance/swype/input/R$string;->handwriting_abc_mode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 278
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    .line 281
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    const-string/jumbo v5, "hwr_auto_recpgnize_delay"

    sget v6, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_default_ms:I

    .line 282
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 281
    invoke-static {v2, v5, v6}, Lcom/nuance/swype/input/settings/InputPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 283
    .local v0, "delayMS":I
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setRecognizerDelay(I)V

    .line 285
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->clearArcs()V

    .line 286
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->changeAltIconOfSwitchingLayout(Z)V

    .line 287
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 288
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v2, v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 289
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->removeHowToUseToastMsg()V

    .line 290
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->postHowToUseToastMsg()V

    .line 291
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->enableUsageLogging(Z)I

    .line 292
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->postDelayResumeSpeech()V

    .line 293
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v2, :cond_7

    .line 294
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setWidth(I)V

    .line 295
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setHeight(I)V

    .line 296
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isHwrScrmodeEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 297
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setRecognitionMode(I)V

    .line 301
    :goto_3
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->applyChangedSettings()V

    .line 304
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isHwrRotationEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 305
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->updateRotationSetting(Z)V

    .line 310
    :goto_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isAttachingCommonWordsLDBAllowed()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 311
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->updateAttachingCommonWordsLDB(Z)V

    .line 316
    :goto_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isHwrAlternativeDirectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 317
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->updateAlternativeDirection(Z)V

    .line 321
    :goto_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isValidBuild()Z

    move-result v2

    if-nez v2, :cond_8

    .line 322
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 323
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 325
    :cond_8
    const-string/jumbo v2, "CJK"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showTrialExpireWclMessage(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    .line 329
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNameField()Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v3

    :goto_7
    iget-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isKeepingKeyboard:Z

    if-eqz v7, :cond_10

    .line 328
    :goto_8
    invoke-virtual {v6, v8, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v6, 0x5

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 331
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    new-instance v3, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getDefaultKeyUIStateHandler()Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;

    move-result-object v6

    invoke-direct {v3, v4, p0, v5, v6}, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;)V

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->resisterTouchKeyHandler(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;)V

    .line 332
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->flingGestureListener:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->registerFlingGestureHandler(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;)V

    .line 333
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->wrapTouchEvent(Landroid/view/View;)V

    .line 334
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-static {}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->getDispatcherInstance()Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getDefaultInputContextHandler()Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->setHandler(Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;)Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V

    goto/16 :goto_0

    .line 255
    .end local v0    # "delayMS":I
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_9
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setWritingDirection(I)V

    goto/16 :goto_1

    .line 274
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_a
    sget v2, Lcom/nuance/swype/input/R$string;->handwriting_123_mode_trad:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 275
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    goto/16 :goto_2

    .line 299
    .restart local v0    # "delayMS":I
    :cond_b
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setRecognitionMode(I)V

    goto/16 :goto_3

    .line 307
    :cond_c
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->updateRotationSetting(Z)V

    goto/16 :goto_4

    .line 313
    :cond_d
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->updateAttachingCommonWordsLDB(Z)V

    goto/16 :goto_5

    .line 319
    :cond_e
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->updateAlternativeDirection(Z)V

    goto/16 :goto_6

    :cond_f
    move v2, v4

    .line 329
    goto :goto_7

    :cond_10
    move v3, v4

    goto :goto_8
.end method

.method public updateSelection(IIII[I)V
    .locals 8
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesIndices"    # [I

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1052
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/input/InputView;->updateSelection(IIII[I)V

    .line 1054
    aget v5, p5, v4

    if-ne p3, v5, :cond_0

    aget v5, p5, v4

    if-eq p4, v5, :cond_1

    :cond_0
    aget v5, p5, v4

    if-ne v5, v6, :cond_2

    :cond_1
    aget v5, p5, v4

    if-ne v5, v6, :cond_a

    if-nez p4, :cond_a

    :cond_2
    move v0, v4

    .line 1057
    .local v0, "cursorChanged":Z
    :goto_0
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_3
    if-nez v0, :cond_c

    .line 1059
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 1060
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v2

    .line 1061
    .local v2, "spw":Lcom/nuance/swype/input/SpeechWrapper;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/nuance/swype/input/SpeechWrapper;->isStreamingDictation()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1062
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v4}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 1063
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v4}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 1072
    :cond_5
    :goto_1
    iget-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInitiativeAccept:Z

    if-eqz v4, :cond_6

    .line 1073
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInitiativeAccept:Z

    .line 1102
    .end local v2    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isEmojiKeyboardShown()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1103
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->dismissPopupKeyboard()V

    .line 1105
    :cond_7
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1106
    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1107
    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1108
    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isEditMode()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1109
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->hideCandidatesGridView(Landroid/view/View;)V

    .line 1110
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1113
    :cond_8
    iget-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mShownFuntionBar:Z

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/FunctionBarListView;->isFunctionBarShowing()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1118
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mShownFuntionBar:Z

    .line 1131
    :cond_9
    :goto_3
    return-void

    .end local v0    # "cursorChanged":Z
    :cond_a
    move v0, v3

    .line 1054
    goto :goto_0

    .line 1065
    .restart local v0    # "cursorChanged":Z
    .restart local v2    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    :cond_b
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1066
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_5

    .line 1067
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_1

    .line 1075
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    :cond_c
    if-nez v0, :cond_e

    aget v5, p5, v3

    aget v4, p5, v4

    if-ne v5, v4, :cond_e

    aget v4, p5, v3

    if-ne v4, v6, :cond_e

    .line 1077
    iget-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInitiativeAccept:Z

    if-eqz v4, :cond_d

    .line 1078
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInitiativeAccept:Z

    goto :goto_2

    .line 1080
    :cond_d
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->clearArcs()V

    .line 1081
    iput-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    goto :goto_2

    .line 1085
    :cond_e
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    .line 1086
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 1087
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v2

    .line 1088
    .restart local v2    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/nuance/swype/input/SpeechWrapper;->isStreamingDictation()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1089
    :cond_f
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v4}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v4

    if-lez v4, :cond_11

    .line 1090
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v4}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 1097
    :cond_10
    :goto_4
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->clearArcs()V

    .line 1098
    iput-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    goto/16 :goto_2

    .line 1092
    :cond_11
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1093
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_10

    .line 1094
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_4

    .line 1122
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    :cond_12
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1123
    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v4

    if-nez v4, :cond_13

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1124
    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v4

    if-nez v4, :cond_13

    .line 1125
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 1128
    :cond_13
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    if-eqz v4, :cond_9

    .line 1129
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v4, v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->setMinimumHeight(I)V

    goto :goto_3
.end method
