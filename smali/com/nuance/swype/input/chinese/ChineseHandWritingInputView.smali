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

.field public static final HWR_123_MODE:I = 0x1

.field public static final HWR_ABC_MODE:I = 0x2

.field public static final HWR_CHN_MODE:I = 0x0

.field private static final INPUT_MODE_PINYIN:I = 0x0

.field public static LOG:Ljava/lang/String; = null

.field static final MSG_DELAY_RECOGNIZER:I = 0x1

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

.field protected mFullScreenHandWriting:Z

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

.field private mShownFuntionBar:Z

.field public mStringHandWriting123Mode:Ljava/lang/String;

.field public mStringHandWritingABCMode:Ljava/lang/String;

.field public mStringHandWritingChnMode:Ljava/lang/String;

.field private mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

.field private final popupHandlerCallback:Landroid/os/Handler$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "ChineseHandWritingInputView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 93
    const/16 v0, 0x64

    sput v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->CHINESE_CATEGORY:I

    .line 94
    const/16 v0, 0x65

    sput v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->ALPHA_CATEGORY:I

    .line 95
    const/16 v0, 0x66

    sput v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->SYMBOL_CATEGORY:I

    .line 1568
    const-string v0, "ChineseHandWritingInputView"

    sput-object v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->LOG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    .line 92
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mShownFuntionBar:Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupCandidateListShowable:Z

    .line 111
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInitiativeAccept:Z

    .line 660
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;-><init>(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->popupHandlerCallback:Landroid/os/Handler$Callback;

    .line 688
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->popupHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    .line 1082
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;-><init>(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->hwrInputViewCallback:Landroid/os/Handler$Callback;

    .line 1154
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->hwrInputViewCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    .line 1159
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$3;-><init>(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->delayRecognizeHandlerCallback:Landroid/os/Handler$Callback;

    .line 1176
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->delayRecognizeHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/nuance/swype/input/Composition;

    invoke-direct {v0}, Lcom/nuance/swype/input/Composition;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 121
    return-void
.end method

.method private acceptCurrentDefaultWord()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 691
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 692
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->flushCurrentActiveWord()V

    .line 693
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v1, :cond_0

    .line 694
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v1, v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->noteSelectedCandidate(I)Z

    .line 696
    :cond_0
    const/4 v0, 0x1

    .line 699
    :cond_1
    return v0
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setSpeechViewHost()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->resumeSpeech()V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->clearArcs()V

    return-void
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateCandidatesList()V

    return-void
.end method

.method static synthetic access$1302(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupCandidateListShowable:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->performDelayRecognition()V

    return-void
.end method

.method static synthetic access$1500(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridViewFunctionButtonPressed:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridViewFunctionButtonPressed:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopupDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->launchAddOnDictionary()V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;C)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;
    .param p1, "x1"    # C

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->handleChar(C)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->handleText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/chinese/ChineseHandWritingView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    return-object p1
.end method

.method private addDigitOnlyCategory()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addNumberOnlyCategory()V

    .line 482
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    .line 483
    return-void
.end method

.method private addFunctionBarItem()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 1685
    const/4 v0, 0x0

    .line 1687
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 1688
    .local v1, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getLanguageOption()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mLanguageOptionOn:Z

    .line 1689
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getSettings()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mSettingsOn:Z

    .line 1690
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getInputMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInputModeOn:Z

    .line 1691
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getQuickToggle()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mQuickToggleOn:Z

    .line 1692
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getEditKeyboard()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mEditKeyboardOn:Z

    .line 1693
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getNumberKeyboard()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mNumberKeyboardOn:Z

    .line 1694
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getThemes()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mThemesOn:Z

    .line 1695
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getAddOnDictionaries()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mAddOnDictionariesOn:Z

    .line 1696
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getChineseSettings()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseSettingsOn:Z

    .line 1698
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mSettingsOn:Z

    if-eqz v2, :cond_0

    .line 1699
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 1700
    add-int/lit8 v0, v0, 0x1

    .line 1703
    :cond_0
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mLanguageOptionOn:Z

    if-eqz v2, :cond_1

    .line 1704
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 1705
    add-int/lit8 v0, v0, 0x1

    .line 1708
    :cond_1
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInputModeOn:Z

    if-eqz v2, :cond_2

    .line 1709
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 1710
    add-int/lit8 v0, v0, 0x1

    .line 1714
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1715
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mEditKeyboardOn:Z

    if-eqz v2, :cond_3

    if-ge v0, v4, :cond_3

    .line 1716
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x6e

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 1717
    add-int/lit8 v0, v0, 0x1

    .line 1720
    :cond_3
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mNumberKeyboardOn:Z

    if-eqz v2, :cond_4

    if-ge v0, v4, :cond_4

    .line 1721
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 1722
    add-int/lit8 v0, v0, 0x1

    .line 1726
    :cond_4
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mThemesOn:Z

    if-eqz v2, :cond_5

    if-ge v0, v4, :cond_5

    .line 1727
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x6f

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 1728
    add-int/lit8 v0, v0, 0x1

    .line 1731
    :cond_5
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mAddOnDictionariesOn:Z

    if-eqz v2, :cond_6

    if-ge v0, v4, :cond_6

    .line 1732
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x70

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 1733
    add-int/lit8 v0, v0, 0x1

    .line 1736
    :cond_6
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseSettingsOn:Z

    if-eqz v2, :cond_7

    if-ge v0, v4, :cond_7

    .line 1737
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x71

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 1738
    :cond_7
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x73

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 1742
    return-void
.end method

.method private cancelCurrentDefaultWord()Z
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->clearCurrentInline()V

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 651
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 652
    const/4 v0, 0x1

    .line 655
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearArcs()V
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->clearArcs()V

    .line 1031
    :cond_0
    return-void
.end method

.method private clearLinePath()V
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->clearLinePath()V

    .line 1037
    :cond_0
    return-void
.end method

.method private getContextAssociations()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 721
    const/4 v0, 0x0

    .line 722
    .local v0, "i":I
    const/4 v2, 0x1

    .line 723
    .local v2, "success":Z
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 724
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 726
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->clearCommonChar()I

    .line 727
    :cond_0
    :goto_0
    const/16 v4, 0x14

    if-ge v0, v4, :cond_1

    if-eqz v2, :cond_1

    .line 728
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 729
    .local v3, "word":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v0, v3, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->getWord(ILjava/lang/StringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v2

    .line 730
    if-eqz v2, :cond_0

    .line 731
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v7}, Lcom/nuance/swype/input/Composition;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 732
    .local v1, "recognizeWord":Ljava/lang/CharSequence;
    invoke-virtual {v3, v7, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 733
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v4, v0, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 735
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 738
    .end local v1    # "recognizeWord":Ljava/lang/CharSequence;
    .end local v3    # "word":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private getContextCandidates()V
    .locals 6

    .prologue
    .line 703
    const/4 v0, 0x0

    .line 704
    .local v0, "i":I
    const/4 v1, 0x1

    .line 705
    .local v1, "success":Z
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 706
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 708
    :cond_0
    :goto_0
    const/16 v3, 0x14

    if-ge v0, v3, :cond_1

    if-eqz v1, :cond_1

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 710
    .local v2, "word":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v0, v2, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->getWord(ILjava/lang/StringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v1

    .line 711
    if-eqz v1, :cond_0

    .line 713
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v3, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 715
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    .end local v2    # "word":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private getMinSpeechPopupViewHeight()I
    .locals 2

    .prologue
    .line 1557
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1558
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1565
    :cond_0
    :goto_0
    return v0

    .line 1560
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getHeight()I

    move-result v0

    .line 1561
    .local v0, "height":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1562
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private handleAutoPunct()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1283
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1284
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 1293
    :goto_0
    return-void

    .line 1288
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1290
    const-string v0, "\u3002"

    .line 1292
    .local v0, "autopunct":Ljava/lang/CharSequence;
    invoke-interface {v1, v0, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method private handleBackspace()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 554
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->cancelCurrentDefaultWord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->isFunctionBarDisabledOrZeroItem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 570
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->hideChineseListAndShowFunctionBar()V

    .line 571
    const/4 v0, 0x1

    return v0

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isCandidateListEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    goto :goto_0
.end method

.method private handleChar(C)V
    .locals 2
    .param p1, "ch"    # C

    .prologue
    const/16 v1, 0x8

    .line 1039
    const/16 v0, 0xd

    if-ne p1, v0, :cond_2

    .line 1040
    const/16 p1, 0xa

    .line 1045
    :cond_0
    :goto_0
    if-ne p1, v1, :cond_3

    .line 1046
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->handleBackspace()Z

    .line 1053
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 1055
    if-eq p1, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1057
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 1059
    :cond_1
    return-void

    .line 1041
    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 1042
    const/16 p1, 0x20

    goto :goto_0

    .line 1047
    :cond_3
    const/16 v0, 0x20

    if-ne p1, v0, :cond_4

    .line 1048
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->handleSpace()V

    goto :goto_1

    .line 1050
    :cond_4
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 1051
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->sendKeyChar(C)V

    goto :goto_1
.end method

.method private handleSpace()V
    .locals 0

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 497
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->sendSpace()V

    .line 498
    return-void
.end method

.method private handleText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 453
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 454
    return-void
.end method

.method private hideChineseListAndShowFunctionBar()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->clearCharacterList()V

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v0, :cond_2

    .line 584
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 585
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hidePhraseListView()V

    .line 586
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mShowFunctionBar:Z

    .line 588
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showFunctionBarListView()V

    .line 590
    :cond_2
    return-void
.end method

.method private hideHowToUseToast()V
    .locals 0

    .prologue
    .line 317
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 318
    return-void
.end method

.method private isPendingRecognizeMessage()Z
    .locals 2

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private launchAddOnDictionary()V
    .locals 2

    .prologue
    .line 1774
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->handleClose()V

    .line 1775
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 1776
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showAddonDictionaries()V

    .line 1777
    return-void
.end method

.method private performDelayRecognition()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1192
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v7, :cond_d

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v7

    if-nez v7, :cond_d

    .line 1193
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v7

    .line 1194
    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndIntegratedEnabled()Z

    move-result v7

    .line 1196
    if-nez v7, :cond_5

    .line 1197
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCharacterListWidth()I

    move-result v8

    sub-int v6, v7, v8

    .line 1199
    .local v6, "writingPadWidth":I
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    .line 1200
    const/4 v3, 0x0

    .local v3, "pt":Landroid/graphics/Point;
    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCharacterListWidth()I

    move-result v8

    sub-int v5, v7, v8

    .line 1201
    .local v5, "startX":I
    sget v7, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->CHINESE_CATEGORY:I

    .line 1204
    div-int/lit8 v7, v6, 0x2

    if-ge v5, v7, :cond_9

    .line 1205
    sget v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->ALPHA_CATEGORY:I

    .line 1211
    .local v0, "category":I
    :goto_0
    sget v7, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->CHINESE_CATEGORY:I

    if-eq v0, v7, :cond_3

    .line 1212
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 1213
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "pt":Landroid/graphics/Point;
    check-cast v3, Landroid/graphics/Point;

    .line 1214
    .restart local v3    # "pt":Landroid/graphics/Point;
    iget v7, v3, Landroid/graphics/Point;->x:I

    if-nez v7, :cond_0

    iget v7, v3, Landroid/graphics/Point;->y:I

    if-eqz v7, :cond_a

    .line 1215
    :cond_0
    iget v7, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCharacterListWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v8, v6, 0x2

    if-le v7, v8, :cond_1

    sget v7, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->ALPHA_CATEGORY:I

    if-eq v0, v7, :cond_2

    :cond_1
    iget v7, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCharacterListWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v8, v6, 0x2

    if-ge v7, v8, :cond_a

    sget v7, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->SYMBOL_CATEGORY:I

    if-ne v0, v7, :cond_a

    .line 1219
    :cond_2
    sget v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->CHINESE_CATEGORY:I

    .line 1225
    .end local v2    # "i":I
    :cond_3
    sget v7, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->CHINESE_CATEGORY:I

    if-ne v0, v7, :cond_b

    .line 1226
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addOnlyTextCategory()V

    .line 1227
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    .line 1236
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v7, :cond_5

    .line 1237
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->applyChangedSettings()V

    .line 1240
    .end local v0    # "category":I
    .end local v3    # "pt":Landroid/graphics/Point;
    .end local v5    # "startX":I
    .end local v6    # "writingPadWidth":I
    :cond_5
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v7, :cond_6

    .line 1241
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->startArcsAddingSequence()V

    .line 1244
    :cond_6
    const/4 v4, 0x0

    .line 1245
    .local v4, "start":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_d

    .line 1246
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-nez v7, :cond_8

    .line 1248
    add-int/lit8 v1, v2, -0x1

    .line 1249
    .local v1, "end":I
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v7, :cond_7

    if-ltz v4, :cond_7

    if-ge v4, v1, :cond_7

    .line 1250
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v8, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8, v9, v9}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 1252
    :cond_7
    add-int/lit8 v4, v2, 0x1

    .line 1245
    .end local v1    # "end":I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1207
    .end local v2    # "i":I
    .end local v4    # "start":I
    .restart local v3    # "pt":Landroid/graphics/Point;
    .restart local v5    # "startX":I
    .restart local v6    # "writingPadWidth":I
    :cond_9
    sget v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->SYMBOL_CATEGORY:I

    .restart local v0    # "category":I
    goto/16 :goto_0

    .line 1212
    .restart local v2    # "i":I
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1228
    .end local v2    # "i":I
    :cond_b
    sget v7, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->ALPHA_CATEGORY:I

    if-ne v0, v7, :cond_c

    .line 1229
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addOnlyLatinLetterCategory()V

    .line 1230
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    goto :goto_2

    .line 1231
    :cond_c
    sget v7, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->SYMBOL_CATEGORY:I

    if-ne v0, v7, :cond_4

    .line 1232
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addDigitsAndSymbolsOnlyCategory()V

    .line 1233
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addPunctuationCategory()V

    .line 1234
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    goto :goto_2

    .line 1256
    .end local v0    # "category":I
    .end local v3    # "pt":Landroid/graphics/Point;
    .end local v5    # "startX":I
    .end local v6    # "writingPadWidth":I
    :cond_d
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v7, :cond_e

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v7

    if-nez v7, :cond_e

    .line 1257
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v7, v9}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 1259
    :cond_e
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1260
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1261
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->clearArcs()V

    .line 1263
    :cond_f
    return-void
.end method

.method private postDelayResumeSpeech()V
    .locals 4

    .prologue
    const/16 v1, 0xb

    .line 295
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 299
    return-void
.end method

.method private postHowToUseToastMsg()V
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 314
    return-void
.end method

.method private processPendingRecognizing()V
    .locals 2

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1188
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->performDelayRecognition()V

    .line 1189
    return-void
.end method

.method private removeAllPendingMsg()V
    .locals 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1063
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1064
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1065
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1066
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1067
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1068
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 1069
    return-void
.end method

.method private removeDelayRecognitionMsg()V
    .locals 2

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1180
    return-void
.end method

.method private removeHowToUseToastMsg()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    return-void
.end method

.method private resetWrite()V
    .locals 2

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1459
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->clearArcs()V

    .line 1460
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_1

    .line 1461
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setNewSession(Z)V

    .line 1463
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

    .line 325
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, p1, v4, v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;Z)Lcom/nuance/swype/input/XT9Keyboard;

    .line 328
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNameField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, v5, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setAttribute(II)Z

    .line 336
    :goto_1
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 338
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->addDigitOnlyCategory()V

    .line 344
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 325
    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, v5, v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setAttribute(II)Z

    goto :goto_1

    .line 340
    :cond_2
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 341
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/InputMethods;->addTextCategory(Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 342
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    goto :goto_2
.end method

.method private showAddOnDictionary()V
    .locals 4

    .prologue
    .line 1746
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1747
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 1748
    .local v1, "userPref":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreement()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreementNotAsk()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1749
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    new-instance v3, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$7;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$7;-><init>(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    invoke-static {v2, v3}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 1764
    .local v0, "cndlg":Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/IME;->attachDialog(Landroid/app/Dialog;)V

    .line 1765
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1771
    .end local v0    # "cndlg":Landroid/app/AlertDialog;
    .end local v1    # "userPref":Lcom/nuance/swype/input/UserPreferences;
    :goto_0
    return-void

    .line 1770
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->launchAddOnDictionary()V

    goto :goto_0
.end method

.method private showCandidatesView(Ljava/util/List;)V
    .locals 1
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
    .line 1296
    .local p1, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showCandidatesView(Ljava/util/List;Ljava/util/List;)V

    .line 1297
    return-void
.end method

.method private showCandidatesView(Ljava/util/List;Ljava/util/List;)V
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "ClickableViewAccessibility"
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
    .line 1305
    .local p1, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p2, "aWordSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return-void

    .line 1309
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopupDataList:Ljava/util/List;

    .line 1311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getHeight()I

    move-result v4

    add-int v8, v3, v4

    .line 1312
    .local v8, "height":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getWidth()I

    move-result v17

    .line 1313
    .local v17, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v3, v8}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->setMinimumHeight(I)V

    .line 1314
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move/from16 v0, v17

    if-eq v3, v0, :cond_2

    .line 1316
    sget-object v3, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "recreate candidatesPopup....candidatesPopup.getMeasuredWidth(): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "keyboard width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1318
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 1320
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    if-nez v3, :cond_3

    .line 1322
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 1323
    .local v13, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 1325
    sget v3, Lcom/nuance/swype/input/R$layout;->candidates_popup:I

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 1328
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v15, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1331
    .local v15, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v3, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1332
    const/high16 v3, -0x80000000

    move/from16 v0, v17

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 1333
    .local v18, "widthMeasureSpec":I
    const/high16 v3, -0x80000000

    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1334
    .local v12, "heightMeasureSpec":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    move/from16 v0, v18

    invoke-virtual {v3, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    .line 1338
    .local v14, "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 1339
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setWordSource(Ljava/util/List;)V

    .line 1340
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setDoubleBuffered(Z)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1343
    .local v11, "closeButton":Landroid/view/View;
    new-instance v3, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$4;-><init>(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    invoke-virtual {v11, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1353
    new-instance v3, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$5;-><init>(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    invoke-virtual {v11, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1372
    .end local v11    # "closeButton":Landroid/view/View;
    .end local v12    # "heightMeasureSpec":I
    .end local v13    # "inflater":Landroid/view/LayoutInflater;
    .end local v14    # "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    .end local v15    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v18    # "widthMeasureSpec":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->scroll_view:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ScrollView;

    .line 1373
    .local v16, "scrollView":Landroid/widget/ScrollView;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    .line 1376
    .restart local v14    # "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    new-instance v2, Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$xml;->kbd_chinese_popup_template:I

    const/4 v6, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getPaddingRight()I

    move-result v9

    add-int/2addr v9, v5

    sget-object v10, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v10}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/util/List;IIIILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 1379
    .local v2, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1380
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 1381
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setWordSource(Ljava/util/List;)V

    .line 1382
    invoke-virtual {v14, v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1383
    new-instance v3, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$6;-><init>(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Lcom/nuance/swype/input/KeyboardEx;)V

    invoke-virtual {v14, v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 1407
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getWidth()I

    move-result v3

    invoke-direct {v15, v3, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1408
    .local v15, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v3, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->showCandidatesGridView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private showContextCandidatesView()V
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showCandidatesView(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method private updateCandidatesList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 750
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIsIMEActive:Z

    if-nez v0, :cond_1

    .line 752
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 759
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 760
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->setCandidates(Ljava/util/List;)V

    .line 762
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setContext(Ljava/lang/CharSequence;)Z

    .line 763
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContextAssociations()V

    .line 764
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_2

    .line 765
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-virtual {v0, v1, v3, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;ILjava/util/List;)V

    .line 784
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->clearCommonChar()I

    .line 785
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 787
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->clear()V

    .line 788
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 789
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 802
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    goto :goto_0

    .line 768
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->clearCharacterList()V

    .line 769
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isCandidateListEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->isFunctionBarDisabledOrZeroItem()Z

    move-result v0

    if-nez v0, :cond_6

    .line 772
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setContext(Ljava/lang/CharSequence;)Z

    .line 773
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 774
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 776
    :cond_6
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/Composition;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setContext(Ljava/lang/CharSequence;)Z

    .line 777
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContextCandidates()V

    .line 778
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_2

    .line 779
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-virtual {v0, v1, v3, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;ILjava/util/List;)V

    goto/16 :goto_1

    .line 791
    :cond_7
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_8

    .line 792
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 794
    :cond_8
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v0, :cond_4

    .line 795
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 796
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hidePhraseListView()V

    .line 797
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 798
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mShowFunctionBar:Z

    .line 799
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showFunctionBarListView()V

    goto :goto_2
.end method


# virtual methods
.method public changeAltIconOfSwitchingLayout(Z)V
    .locals 6
    .param p1, "aFullScreen"    # Z

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    .line 1786
    if-eqz v4, :cond_3

    .line 1787
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 1788
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1789
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1790
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const v5, 0xaa3b

    if-ne v4, v5, :cond_1

    .line 1791
    if-eqz p1, :cond_2

    .line 1792
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1793
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1794
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltIconMinHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 1796
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltPreMinHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 1808
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 1788
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1800
    :cond_2
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1801
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1802
    .restart local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltIconMaxHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 1804
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltPreMaxHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1818
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
    .line 642
    return-void
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 3
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "t9write"    # Lcom/nuance/input/swypecorelib/T9Write;
    .param p4, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 176
    check-cast p2, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .end local p2    # "xt9coreinput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    iput-object p2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .line 177
    check-cast p3, Lcom/nuance/input/swypecorelib/T9WriteChinese;

    .end local p3    # "t9write":Lcom/nuance/input/swypecorelib/T9Write;
    iput-object p3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    .line 178
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 179
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 181
    return-void
.end method

.method public createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;
    .locals 4
    .param p1, "onSelectListener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-nez v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 149
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/nuance/swype/input/R$layout;->chinese_hs_candidates:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    .line 151
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->setKeyboardViewEx(Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 152
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->initViews()V

    .line 153
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getCJKCandidatesListView()Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 154
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    sget v2, Lcom/nuance/swype/input/R$id;->functionbar:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/FunctionBarListView;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    .line 157
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V

    .line 159
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    .line 160
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    new-instance v2, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v2, v3, p0}, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->setOnFunctionBarListener(Lcom/nuance/swype/input/FunctionBarListView$OnFunctionBarListener;)V

    .line 161
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    return-object v1
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->destroy()V

    .line 186
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 187
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->removeAllPendingMsg()V

    .line 188
    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 189
    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .line 190
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->cancelQueryTask()V

    .line 191
    return-void
.end method

.method public finishInput()V
    .locals 1

    .prologue
    .line 348
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 349
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->removeHowToUseToastMsg()V

    .line 350
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIsIMEActive:Z

    .line 353
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->recycleBitmap()V

    .line 354
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 355
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->dismissPopupKeyboard()V

    .line 356
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->removeAllPendingMsg()V

    .line 358
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->clearCharacterList()V

    .line 359
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 360
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->resetWrite()V

    .line 362
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 363
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->finishSession()V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 365
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 366
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 367
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->requestLayout()V

    .line 369
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->finishSession()V

    .line 373
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->dimissRemoveUdbWordDialog()V

    goto :goto_0
.end method

.method public flushCurrentActiveWord()V
    .locals 1

    .prologue
    .line 619
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->cancelQueryTask()V

    .line 620
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys()Z

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 626
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 627
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 628
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 630
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 631
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_3

    .line 632
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 634
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInitiativeAccept:Z

    .line 635
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->dimissRemoveUdbWordDialog()V

    .line 636
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->clearArcs()V

    .line 637
    return-void
.end method

.method public getCandidateHeight()I
    .locals 1

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v0, :cond_0

    .line 1635
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getHeight()I

    move-result v0

    .line 1637
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCharacterListWidth()I
    .locals 1

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    if-eqz v0, :cond_0

    .line 1679
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getCharacterListWidth()I

    move-result v0

    .line 1681
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHWContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    return-object v0
.end method

.method public getWordCandidateListContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    return-object v0
.end method

.method protected handleBackspace(I)Z
    .locals 2
    .param p1, "repeatedCount"    # I

    .prologue
    const/16 v1, 0x8

    .line 595
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->processPendingRecognizing()V

    .line 598
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueChar(C)V

    .line 613
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 607
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueChar(C)V

    goto :goto_0

    .line 611
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
    .line 488
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->processPendingRecognizing()V

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueChar(C)V

    .line 493
    return-void
.end method

.method public handleClose()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIsIMEActive:Z

    .line 379
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->removeAllPendingMsg()V

    .line 380
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->resetWrite()V

    .line 381
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->dimissRemoveUdbWordDialog()V

    .line 382
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->recycleBitmap()V

    .line 383
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 384
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->resume()V

    .line 385
    return-void
.end method

.method public handleKey(IZI)Z
    .locals 2
    .param p1, "primaryCode"    # I
    .param p2, "quickPressed"    # Z
    .param p3, "repeatedCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 401
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 405
    sparse-switch p1, :sswitch_data_0

    .line 434
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 407
    :sswitch_0
    if-nez p2, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->flushCurrentActiveWord()V

    .line 409
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->startSpeech()V

    goto :goto_0

    .line 413
    :sswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->clearCharacterList()V

    .line 414
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 415
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    goto :goto_0

    .line 418
    :sswitch_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->toggleLastKeyboard()V

    goto :goto_0

    .line 421
    :sswitch_3
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->hideCandidatesGridView(Landroid/view/View;)V

    .line 424
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 426
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->flushCurrentActiveWord()V

    .line 427
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mShowFunctionBar:Z

    if-eqz v0, :cond_2

    .line 428
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->hideChineseListAndShowFunctionBar()V

    .line 430
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->clearLinePath()V

    .line 431
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    goto :goto_0

    .line 405
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
    .line 389
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

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

    .line 394
    :cond_0
    const/4 v0, 0x1

    .line 396
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
    .line 441
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

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

    .line 446
    :cond_0
    const/4 v0, 0x1

    .line 448
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
    .line 1496
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v0, v0

    if-nez v0, :cond_1

    .line 1497
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 1505
    :goto_0
    return v0

    .line 1499
    :cond_1
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const v1, 0xaa3b

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v1, 0xff5

    if-ne v0, v1, :cond_3

    .line 1501
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->clearCharacterList()V

    .line 1502
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 1505
    :cond_3
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_0
.end method

.method public handlePossibleActionAfterResize()V
    .locals 4

    .prologue
    const/16 v1, 0xe

    .line 1267
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1270
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1271
    return-void
.end method

.method public handlePossibleActionAfterUniversalKeyboardResize(Z)V
    .locals 4
    .param p1, "hideSymbolView"    # Z

    .prologue
    const/16 v1, 0xe

    .line 1275
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1279
    return-void
.end method

.method protected handleScrollDown()V
    .locals 2

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 1543
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->finishInput()V

    .line 1544
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 1546
    :cond_0
    return-void
.end method

.method protected handleScrollUp()V
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleFullScreenHW()V

    .line 1553
    :cond_0
    return-void
.end method

.method public handleShiftKey()V
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->cycleShiftState()V

    .line 1075
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->invalidateKeyboardImage()V

    .line 1076
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

    .line 502
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 504
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->processPendingRecognizing()V

    .line 505
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v4, :cond_0

    .line 506
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueChar(C)V

    .line 550
    :cond_0
    :goto_0
    return v7

    .line 509
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 513
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v4, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    goto :goto_0

    .line 517
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 518
    const/4 v0, 0x1

    .line 522
    .local v0, "addSpace":Z
    if-eqz p1, :cond_4

    if-ge p2, v6, :cond_4

    iget-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mAutoPunctuationOn:Z

    if-eqz v4, :cond_4

    .line 523
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 525
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 526
    invoke-interface {v3, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 532
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v2

    .line 533
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

    .line 539
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->handleAutoPunct()V

    .line 540
    const/4 v0, 0x0

    .line 543
    :cond_3
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 546
    .end local v1    # "cSeqBefore":Ljava/lang/CharSequence;
    .end local v2    # "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->sendSpace()V

    goto :goto_0
.end method

.method public hideHWFrameAndCharacterList()V
    .locals 1

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->hideHWFrameAndCharacterList()V

    .line 1631
    return-void
.end method

.method public isGirdViewEnabled()Z
    .locals 1

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    .line 1645
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandWritingInputView()Z
    .locals 1

    .prologue
    .line 1851
    const/4 v0, 0x1

    return v0
.end method

.method public isLanguageSwitchableOnSpace()Z
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1574
    const/4 v0, 0x1

    .line 1576
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isNormalTextInputMode()Z
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    return v0
.end method

.method public isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z
    .locals 1
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1491
    const/4 v0, 0x0

    return v0
.end method

.method public nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 1
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1466
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    if-eqz v0, :cond_0

    .line 1477
    :goto_0
    return-void

    .line 1469
    :cond_0
    instance-of v0, p1, Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-eqz v0, :cond_1

    .line 1470
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showCharacterCandidatesView()V

    goto :goto_0

    .line 1472
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupCandidateListShowable:Z

    if-eqz v0, :cond_2

    .line 1473
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showContextCandidatesView()V

    .line 1475
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->dismissPopupKeyboard()V

    goto :goto_0
.end method

.method public onApplicationUnbind()V
    .locals 0

    .prologue
    .line 1510
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->dimissRemoveUdbWordDialog()V

    .line 1511
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onApplicationUnbind()V

    .line 1512
    return-void
.end method

.method public onBack(Landroid/view/View;)V
    .locals 3
    .param p1, "aContainer"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1413
    if-nez p1, :cond_1

    .line 1424
    :cond_0
    :goto_0
    return-void

    .line 1416
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    if-eqz v0, :cond_2

    .line 1418
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->hideCandidatesGridView(Landroid/view/View;)V

    .line 1419
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1420
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->setMinimumHeight(I)V

    .line 1422
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method public onCandidateLongPressed(ILjava/lang/String;ILcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "wdSource"    # I
    .param p4, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1610
    packed-switch p3, :pswitch_data_0

    .line 1619
    :goto_0
    :pswitch_0
    return-void

    .line 1613
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showRemoveUdbWordDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 1616
    :pswitch_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, p2, v1}, Lcom/nuance/swype/util/ContactUtils;->getContactNumberFromPhoneBook(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1610
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCandidatePress(Landroid/view/View;I)V
    .locals 0
    .param p1, "aContainer"    # Landroid/view/View;
    .param p2, "primaryCode"    # I

    .prologue
    .line 1428
    return-void
.end method

.method public onCandidateRelease(Landroid/view/View;I)V
    .locals 0
    .param p1, "aContainer"    # Landroid/view/View;
    .param p2, "primaryCode"    # I

    .prologue
    .line 1432
    return-void
.end method

.method public onCandidateText(Landroid/view/View;Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "aContainer"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "aKeyIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 1435
    if-nez p1, :cond_1

    .line 1449
    :cond_0
    :goto_0
    return-void

    .line 1438
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 1440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 1441
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1442
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1443
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->hideCandidatesGridView(Landroid/view/View;)V

    .line 1444
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1445
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->setMinimumHeight(I)V

    .line 1446
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 1447
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showInline()V

    goto :goto_0
.end method

.method public onHandleUdbWordRemoval(Ljava/lang/String;)V
    .locals 6
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1582
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v2, :cond_0

    .line 1583
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->udbDelete(Ljava/lang/String;)Z

    move-result v0

    .line 1584
    .local v0, "deleteStatus":Z
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v2, :cond_0

    .line 1585
    if-eqz v0, :cond_1

    .line 1586
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    .line 1588
    .local v1, "removeMgs":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v1, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 1590
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v2}, Lcom/nuance/swype/input/Composition;->clearCurrentInline()V

    .line 1591
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 1592
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1593
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1594
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 1596
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->hideCandidatesGridView(Landroid/view/View;)V

    .line 1597
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1607
    .end local v0    # "deleteStatus":Z
    .end local v1    # "removeMgs":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1599
    .restart local v0    # "deleteStatus":Z
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->delete_failed:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1602
    .restart local v1    # "removeMgs":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v1, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method

.method public onHandleWriteEvent(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;

    .prologue
    const-wide/16 v4, 0x5

    .line 999
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_2

    .line 1000
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isLVLLicenseValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 1004
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    :cond_2
    iget v0, p1, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;->mType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1010
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1014
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1020
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHwrInputViewHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1008
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onScrollContentChanged()V
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v0, :cond_0

    .line 1845
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->updateScrollArrowVisibility()V

    .line 1847
    :cond_0
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 460
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->processPendingRecognizing()V

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_2

    .line 464
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v0

    .line 466
    .local v0, "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 467
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/nuance/swype/util/CharacterUtilities;->isEmoji(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 470
    invoke-interface {p1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v1, p1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueText(Ljava/lang/CharSequence;)V

    .line 477
    .end local v0    # "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    :goto_0
    return-void

    .line 474
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v1, p1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public penDown(Landroid/view/View;)V
    .locals 3
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 840
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->dismissPopupKeyboard()V

    .line 841
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 842
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 843
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndIntegratedEnabled()Z

    move-result v0

    .line 844
    .local v0, "integrated":Z
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eq v1, p1, :cond_0

    instance-of v1, p1, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v1, :cond_0

    .line 845
    check-cast p1, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .end local p1    # "src":Landroid/view/View;
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .line 846
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_0

    .line 847
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setWidth(I)V

    .line 848
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setWidth(I)V

    .line 849
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->applyChangedSettings()V

    .line 853
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 854
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 855
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v1, :cond_1

    .line 856
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v1, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v1, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isNumMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 859
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 863
    :cond_1
    return-void
.end method

.method public penUp(Ljava/util/List;Landroid/view/View;)V
    .locals 4
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
    .line 866
    .local p1, "arc":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 867
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->getRecognizerDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 871
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupCandidateListShowable:Z

    .line 872
    return-void
.end method

.method public penUp([Lcom/nuance/swype/input/Stroke$Arc;Landroid/view/View;)V
    .locals 1
    .param p1, "arcs"    # [Lcom/nuance/swype/input/Stroke$Arc;
    .param p2, "Src"    # Landroid/view/View;

    .prologue
    .line 1452
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->penUp(Ljava/util/List;Landroid/view/View;)V

    .line 1453
    return-void
.end method

.method public prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 1
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1480
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    if-eqz v0, :cond_0

    .line 1488
    :goto_0
    return-void

    .line 1483
    :cond_0
    instance-of v0, p1, Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-eqz v0, :cond_1

    .line 1484
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showCharacterCandidatesView()V

    goto :goto_0

    .line 1486
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    goto :goto_0
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/CharSequence;
    .param p3, "source"    # Landroid/view/View;

    .prologue
    .line 892
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 893
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 894
    .local v0, "wordIndex":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v1, :cond_0

    .line 895
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 896
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v1, v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->noteSelectedCandidate(I)Z

    .line 902
    .end local v0    # "wordIndex":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 903
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 904
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 905
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 906
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 907
    return-void

    .line 898
    .restart local v0    # "wordIndex":I
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->noteSelectedCandidate(I)Z

    goto :goto_0
.end method

.method public setActiveCandidate(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 741
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 744
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 746
    :cond_0
    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setCandidatesViewShown(Z)V

    .line 130
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_0
    if-eqz p1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->setVisibility(I)V

    goto :goto_0

    .line 136
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
    .line 124
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    .line 125
    return-void
.end method

.method public setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V
    .locals 3
    .param p1, "view"    # Lcom/nuance/swype/input/HandWritingView;

    .prologue
    .line 816
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->clearCurrentInline()V

    .line 819
    :cond_0
    instance-of v1, p1, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v1, :cond_2

    .line 820
    check-cast p1, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .end local p1    # "view":Lcom/nuance/swype/input/HandWritingView;
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .line 825
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v1, :cond_1

    .line 826
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setFullScreen(Z)V

    .line 827
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v1, :cond_1

    .line 828
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 830
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndIntegratedEnabled()Z

    move-result v0

    .line 832
    .local v0, "integrated":Z
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setIntegratedEnabled(Z)V

    .line 836
    .end local v0    # "integrated":Z
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->clearArcs()V

    .line 837
    return-void

    .line 822
    .restart local p1    # "view":Lcom/nuance/swype/input/HandWritingView;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    goto :goto_0
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 0
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    .line 1823
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateDockModeForHandwriting(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1824
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1825
    return-void
.end method

.method public setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .locals 3
    .param p1, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 1517
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1538
    :goto_0
    return-void

    .line 1521
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 1522
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->dismissPopupKeyboard()V

    .line 1523
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->flushCurrentActiveWord()V

    .line 1524
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 1525
    .local v0, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v1, p1, v2, v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 1526
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1528
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->hideHWFrameAndCharacterList()V

    .line 1529
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->hideChineseListAndShowFunctionBar()V

    .line 1537
    :goto_1
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_0

    .line 1531
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->showHWFrameList()V

    .line 1532
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 1533
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/nuance/swype/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardViewEx;)V

    goto :goto_1
.end method

.method protected setNotMatchToolTipSuggestion()V
    .locals 1

    .prologue
    .line 1664
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getShowFunctionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1674
    :goto_0
    return-void

    .line 1667
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v0, :cond_1

    .line 1668
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 1669
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 1671
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showNotMatchTootip()V

    .line 1672
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 1673
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method protected setSwypeKeytoolTipSuggestion()V
    .locals 1

    .prologue
    .line 1650
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getShowFunctionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1660
    :goto_0
    return-void

    .line 1653
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v0, :cond_1

    .line 1654
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 1655
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 1657
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showSwypeTooltip()V

    .line 1658
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 1659
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method public shouldDisableInput(I)Z
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

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
    .locals 2

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 884
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showCandidatesView(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public showHWFrameAndCharacterList()V
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->showHWFrameAndCharacterList()V

    .line 1627
    return-void
.end method

.method showHowToUseToast()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 302
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 304
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    const-string v1, "show_how_to_toggle_full_screen_mode_chn"

    invoke-virtual {v0, v1, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    const-string v1, "show_how_to_toggle_full_screen_mode_chn"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 306
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->how_to_toggle_full_screen_mode:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v2, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 310
    :cond_0
    return-void
.end method

.method public showInline()V
    .locals 3

    .prologue
    .line 810
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 811
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 813
    :cond_0
    return-void
.end method

.method public startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V
    .locals 7
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 195
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v3, :cond_0

    .line 292
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v3, :cond_1

    .line 199
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateCandidatesSize()V

    .line 201
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    if-eqz v3, :cond_3

    .line 202
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getVerContainer()Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 203
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getVerContainer()Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->updateCandidatesSize()V

    .line 205
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->updateHandwritingPadSize()V

    .line 207
    :cond_3
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIsIMEActive:Z

    .line 208
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupCandidateListShowable:Z

    .line 209
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 211
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCompletionOn:Z

    .line 213
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->dismissPopupKeyboard()V

    .line 215
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getShowFunctionBar()Z

    move-result v3

    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mShowFunctionBar:Z

    .line 216
    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mShowFunctionBar:Z

    if-eqz v3, :cond_4

    .line 217
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/FunctionBarListView;->recycleBitmap()V

    .line 218
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->addFunctionBarItem()V

    .line 220
    :cond_4
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->startSession()V

    .line 221
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v2

    .line 222
    .local v2, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    sget-object v3, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v2, v3, :cond_5

    sget-object v3, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v2, v3, :cond_7

    .line 224
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v4, v4, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/nuance/swype/input/DatabaseConfig;->removeIncompatibleDBFiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 226
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v2

    .line 227
    sget-object v3, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v2, v3, :cond_6

    sget-object v3, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v2, v3, :cond_7

    .line 229
    :cond_6
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isLDBCompatible:Z

    .line 230
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->promptUserToUpdateLanguage()V

    .line 231
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->toggleKeyboard(Z)V

    .line 234
    :cond_7
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v3, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setInputMode(I)Z

    .line 235
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    const/16 v4, 0x65

    iget v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFuzzyPinyin:I

    invoke-virtual {v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setAttribute(II)Z

    .line 237
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearCommonChar()I

    .line 238
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V

    .line 239
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->showHWFrameAndCharacterList()V

    .line 240
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->cancelCurrentDefaultWord()Z

    .line 241
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3, p0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 242
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/Composition;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 243
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/input/InputMethods;->addTextCategory(Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 244
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    .line 245
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->startSession(I)V

    .line 246
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 247
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 248
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v3, :cond_8

    .line 249
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 252
    :cond_8
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->onBack(Landroid/view/View;)V

    .line 254
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setKeyboardForTextEntry(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 255
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 257
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v3

    const/16 v4, 0xe1

    if-ne v3, v4, :cond_a

    .line 258
    sget v3, Lcom/nuance/swype/input/R$string;->handwriting_chn_mode_simp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mStringHandWritingChnMode:Ljava/lang/String;

    .line 260
    sget v3, Lcom/nuance/swype/input/R$string;->handwriting_123_mode_simp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    .line 269
    :goto_1
    sget v3, Lcom/nuance/swype/input/R$string;->handwriting_abc_mode:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    .line 272
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    const-string v4, "hwr_auto_recpgnize_delay"

    sget v5, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_default_ms:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/nuance/swype/input/settings/InputPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 275
    .local v0, "delayMS":I
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3, v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setRecognizerDelay(I)V

    .line 277
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->clearArcs()V

    .line 278
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->changeAltIconOfSwitchingLayout(Z)V

    .line 279
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 280
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v4, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 281
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->removeHowToUseToastMsg()V

    .line 282
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->postHowToUseToastMsg()V

    .line 283
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3, v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->enableUsageLogging(Z)I

    .line 284
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->postDelayResumeSpeech()V

    .line 285
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v3, :cond_9

    .line 286
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setWidth(I)V

    .line 287
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setHeight(I)V

    .line 288
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->applyChangedSettings()V

    .line 291
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->handlePossibleActionAfterResize()V

    goto/16 :goto_0

    .line 264
    .end local v0    # "delayMS":I
    :cond_a
    sget v3, Lcom/nuance/swype/input/R$string;->handwriting_chn_mode_trad:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mStringHandWritingChnMode:Ljava/lang/String;

    .line 266
    sget v3, Lcom/nuance/swype/input/R$string;->handwriting_123_mode_trad:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    goto :goto_1
.end method

.method public updateSelection(IIIIII)V
    .locals 7
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 914
    invoke-super/range {p0 .. p6}, Lcom/nuance/swype/input/InputView;->updateSelection(IIIIII)V

    .line 916
    if-ne p3, p6, :cond_0

    if-eq p4, p6, :cond_1

    :cond_0
    if-ne p6, v5, :cond_2

    :cond_1
    if-ne p6, v5, :cond_a

    if-nez p4, :cond_a

    :cond_2
    const/4 v0, 0x1

    .line 919
    .local v0, "cursorChanged":Z
    :goto_0
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_3
    if-nez v0, :cond_c

    .line 921
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    .line 922
    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v2

    .line 923
    .local v2, "spw":Lcom/nuance/swype/input/SpeechWrapper;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/nuance/swype/input/SpeechWrapper;->isStreamingDictation()Z

    move-result v3

    if-nez v3, :cond_5

    .line 924
    :cond_4
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v3}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 925
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v3}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 934
    :cond_5
    :goto_1
    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInitiativeAccept:Z

    if-eqz v3, :cond_6

    .line 935
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInitiativeAccept:Z

    .line 964
    .end local v2    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isEmojiKeyboardShown()Z

    move-result v3

    if-nez v3, :cond_7

    .line 965
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->dismissPopupKeyboard()V

    .line 967
    :cond_7
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v3, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v3, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isNumMode()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v3, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isEditMode()Z

    move-result v3

    if-nez v3, :cond_8

    .line 971
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v3, v5}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->hideCandidatesGridView(Landroid/view/View;)V

    .line 972
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    .line 975
    :cond_8
    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mShownFuntionBar:Z

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/FunctionBarListView;->isFunctionBarShowing()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 980
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mShownFuntionBar:Z

    .line 993
    :cond_9
    :goto_3
    return-void

    .end local v0    # "cursorChanged":Z
    :cond_a
    move v0, v4

    .line 916
    goto/16 :goto_0

    .line 927
    .restart local v0    # "cursorChanged":Z
    .restart local v2    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    :cond_b
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 928
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_5

    .line 929
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_1

    .line 937
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    :cond_c
    if-nez v0, :cond_e

    if-ne p5, p6, :cond_e

    if-ne p5, v5, :cond_e

    .line 939
    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInitiativeAccept:Z

    if-eqz v3, :cond_d

    .line 940
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mInitiativeAccept:Z

    goto :goto_2

    .line 942
    :cond_d
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->clearArcs()V

    .line 943
    iput-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    goto :goto_2

    .line 947
    :cond_e
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    .line 948
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    .line 949
    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v2

    .line 950
    .restart local v2    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/nuance/swype/input/SpeechWrapper;->isStreamingDictation()Z

    move-result v3

    if-nez v3, :cond_6

    .line 951
    :cond_f
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v3}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v3

    if-lez v3, :cond_11

    .line 952
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v3}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 959
    :cond_10
    :goto_4
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->clearArcs()V

    .line 960
    iput-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    goto/16 :goto_2

    .line 954
    :cond_11
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 955
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_10

    .line 956
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_4

    .line 984
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    :cond_12
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v3, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v3, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isNumMode()Z

    move-result v3

    if-nez v3, :cond_13

    .line 987
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateCandidatesList()V

    .line 990
    :cond_13
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    if-eqz v3, :cond_9

    .line 991
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->setMinimumHeight(I)V

    goto/16 :goto_3
.end method
