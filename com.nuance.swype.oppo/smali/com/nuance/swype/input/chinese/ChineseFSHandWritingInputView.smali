.class public Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
.super Lcom/nuance/swype/input/InputView;
.source "ChineseFSHandWritingInputView.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;
.implements Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;
.implements Lcom/nuance/swype/input/HandWritingView$OnWritingAction;
.implements Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static ALPHA_CATEGORY:I = 0x0

.field private static CHINESE_CATEGORY:I = 0x0

.field private static final END_SELECTION_GRID_CONTAINER:I = -0x1

.field public static final EVENT_ON_CANDIDATELIST:I = 0x1

.field public static final EVENT_ON_INITIAL:I = -0x1

.field public static final EVENT_ON_KEYBOARD:I = 0x0

.field public static final EVENT_ON_SPELLLIST:I = 0x2

.field private static final GRID_NUM:I = 0x5

.field private static final HIDE_IME:I = -0x2

.field public static final HWR_123_MODE:I = 0x1

.field public static final HWR_ABC_MODE:I = 0x2

.field public static final HWR_CHN_MODE:I = 0x0

.field private static final INPUT_MODE_PINYIN:I = 0x0

.field public static LOG:Ljava/lang/String; = null

.field private static final MAX_FUNCTION_ITEM:I = 0x5

.field static final MSG_DELAY_RECOGNIZER:I = 0x1

.field private static final MSG_DELAY_SHOWING_EMOJI:I = 0x2

.field private static final MSG_DELAY_SHOWING_FULLSCREEN:I = 0x1

.field private static final MSG_HANDLE_CHAR:I = 0x3

.field private static final MSG_HANDLE_SUGGESTION_CANDIDATES:I = 0x2

.field private static final MSG_HANDLE_TEXT:I = 0x4

.field static final MSG_SHOW_HOW_TO_TOAST:I = 0x1f7

.field private static SYMBOL_CATEGORY:I

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static mWordListHeight:I


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

.field private final delayRecognizeCallback:Landroid/os/Handler$Callback;

.field private final fsHandlerCallback:Landroid/os/Handler$Callback;

.field private gridViewFunctionButtonPressed:Z

.field private final handlerCallback:Landroid/os/Handler$Callback;

.field private isOnceAction:Z

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

.field protected mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

.field protected mCharacterListView:Lcom/nuance/swype/input/chinese/SpellListView;

.field private mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

.field protected mComposition:Lcom/nuance/swype/input/Composition;

.field protected mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

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

.field private mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

.field mDelayRecognizeHandler:Landroid/os/Handler;

.field private final mDelayShowingFullScreenHandler:Landroid/os/Handler;

.field private mEditKeyboardOn:Z

.field mFSHandler:Landroid/os/Handler;

.field private mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

.field private mInputModeOn:Z

.field protected mIsIMEActive:Z

.field protected mKeyboardHeight:I

.field private mLanguageOptionOn:Z

.field private mNumberKeyboardOn:Z

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

.field private mSelectionAreaOption:I

.field protected mSelectionHeight:I

.field private mSettingsOn:Z

.field private mShowFunctionBar:Z

.field private mShownFuntionBar:Z

.field public mStringHandWriting123Mode:Ljava/lang/String;

.field public mStringHandWritingABCMode:Ljava/lang/String;

.field public mStringHandWritingChnMode:Ljava/lang/String;

.field private mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

.field popupViewCallback:Landroid/os/Handler$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "ChineseFSHandWritingInputView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 90
    const/4 v0, 0x0

    sput v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordListHeight:I

    .line 101
    const/16 v0, 0x64

    sput v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->CHINESE_CATEGORY:I

    .line 102
    const/16 v0, 0x65

    sput v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->ALPHA_CATEGORY:I

    .line 103
    const/16 v0, 0x66

    sput v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->SYMBOL_CATEGORY:I

    .line 1832
    const-string v0, "ChineseFSHandWritingInputView"

    sput-object v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->LOG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupCandidateListShowable:Z

    .line 106
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShownFuntionBar:Z

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    .line 118
    iput v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionHeight:I

    .line 119
    iput v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardHeight:I

    .line 136
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;-><init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->handlerCallback:Landroid/os/Handler$Callback;

    .line 159
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    .line 738
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$2;-><init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->popupViewCallback:Landroid/os/Handler$Callback;

    .line 762
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->popupViewCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    .line 1124
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;-><init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->fsHandlerCallback:Landroid/os/Handler$Callback;

    .line 1197
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->fsHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    .line 1202
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$4;-><init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->delayRecognizeCallback:Landroid/os/Handler$Callback;

    .line 1221
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->delayRecognizeCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    .line 167
    new-instance v0, Lcom/nuance/swype/input/Composition;

    invoke-direct {v0}, Lcom/nuance/swype/input/Composition;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 169
    return-void
.end method

.method private acceptCurrentActiveWord()V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys()Z

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 701
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 702
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 703
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 705
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_3

    .line 706
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 708
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->clearArcs()V

    .line 709
    return-void
.end method

.method private acceptCurrentDefaultWord()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 764
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 765
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentActiveWord()V

    .line 766
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v1, :cond_0

    .line 767
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v1, v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->noteSelectedCandidate(I)Z

    .line 769
    :cond_0
    const/4 v0, 0x1

    .line 772
    :cond_1
    return v0
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showDelayFullScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateCandidatesList()V

    return-void
.end method

.method static synthetic access$1202(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupCandidateListShowable:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->performDelayRecognition()V

    return-void
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isOnceAction:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showFullScreenHandWritingView()V

    return-void
.end method

.method static synthetic access$1802(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    return p1
.end method

.method static synthetic access$1900(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridViewFunctionButtonPressed:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridViewFunctionButtonPressed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/emoji/EmojiInputController;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mEmojiInputController:Lcom/nuance/swype/input/emoji/EmojiInputController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopupDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->launchAddOnDictionary()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Lcom/nuance/swype/input/emoji/EmojiInputController;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
    .param p1, "x1"    # Lcom/nuance/swype/input/emoji/EmojiInputController;
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showEmojiInputPopupWindow(Lcom/nuance/swype/input/emoji/EmojiInputController;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/chinese/ChineseHandWritingView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setSpeechViewHost()V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;C)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
    .param p1, "x1"    # C

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->handleChar(C)V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->handleText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->clearArcs()V

    return-void
.end method

.method private addDigitOnlyCategory()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-nez v0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 551
    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addNumberOnlyCategory()V

    .line 556
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    goto :goto_0
.end method

.method private addFunctionBarItem()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 2207
    const/4 v0, 0x0

    .line 2208
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 2209
    .local v1, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getLanguageOption()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mLanguageOptionOn:Z

    .line 2210
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getSettings()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSettingsOn:Z

    .line 2211
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getInputMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mInputModeOn:Z

    .line 2212
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getQuickToggle()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mQuickToggleOn:Z

    .line 2213
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getEditKeyboard()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mEditKeyboardOn:Z

    .line 2214
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getNumberKeyboard()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mNumberKeyboardOn:Z

    .line 2215
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getThemes()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mThemesOn:Z

    .line 2216
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getAddOnDictionaries()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mAddOnDictionariesOn:Z

    .line 2217
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getChineseSettings()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseSettingsOn:Z

    .line 2219
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSettingsOn:Z

    if-eqz v2, :cond_0

    .line 2220
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 2221
    add-int/lit8 v0, v0, 0x1

    .line 2224
    :cond_0
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mLanguageOptionOn:Z

    if-eqz v2, :cond_1

    .line 2225
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 2226
    add-int/lit8 v0, v0, 0x1

    .line 2229
    :cond_1
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mInputModeOn:Z

    if-eqz v2, :cond_2

    .line 2230
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 2231
    add-int/lit8 v0, v0, 0x1

    .line 2235
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2236
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mEditKeyboardOn:Z

    if-eqz v2, :cond_3

    if-ge v0, v4, :cond_3

    .line 2237
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x6e

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 2238
    add-int/lit8 v0, v0, 0x1

    .line 2241
    :cond_3
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mNumberKeyboardOn:Z

    if-eqz v2, :cond_4

    if-ge v0, v4, :cond_4

    .line 2242
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 2243
    add-int/lit8 v0, v0, 0x1

    .line 2247
    :cond_4
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mThemesOn:Z

    if-eqz v2, :cond_5

    if-ge v0, v4, :cond_5

    .line 2248
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x6f

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 2249
    add-int/lit8 v0, v0, 0x1

    .line 2252
    :cond_5
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mAddOnDictionariesOn:Z

    if-eqz v2, :cond_6

    if-ge v0, v4, :cond_6

    .line 2253
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x70

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 2254
    add-int/lit8 v0, v0, 0x1

    .line 2257
    :cond_6
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseSettingsOn:Z

    if-eqz v2, :cond_7

    if-ge v0, v4, :cond_7

    .line 2258
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x71

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 2259
    :cond_7
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x73

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 2264
    return-void
.end method

.method private cancelCurrentDefaultWord()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 713
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->clearCurrentInline()V

    .line 715
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 716
    const/4 v0, 0x1

    .line 719
    :cond_0
    return v0
.end method

.method private clearArcs()V
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->clearArcs()V

    .line 1082
    :cond_0
    return-void
.end method

.method private clearLinePath()V
    .locals 1

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->clearLinePath()V

    .line 1614
    :cond_0
    return-void
.end method

.method private getContextAssociations()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 794
    const/4 v0, 0x0

    .line 795
    .local v0, "i":I
    const/4 v2, 0x1

    .line 796
    .local v2, "success":Z
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 797
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 799
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->clearCommonChar()I

    .line 800
    :cond_0
    :goto_0
    const/16 v4, 0x14

    if-ge v0, v4, :cond_1

    if-eqz v2, :cond_1

    .line 801
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 802
    .local v3, "word":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v0, v3, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->getWord(ILjava/lang/StringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v2

    .line 803
    if-eqz v2, :cond_0

    .line 804
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v7}, Lcom/nuance/swype/input/Composition;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 805
    .local v1, "recognizeWord":Ljava/lang/CharSequence;
    invoke-virtual {v3, v7, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 806
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v4, v0, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 808
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 811
    .end local v1    # "recognizeWord":Ljava/lang/CharSequence;
    .end local v3    # "word":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private getContextCandidates()V
    .locals 6

    .prologue
    .line 776
    const/4 v0, 0x0

    .line 777
    .local v0, "i":I
    const/4 v1, 0x1

    .line 778
    .local v1, "success":Z
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 779
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 781
    :cond_0
    :goto_0
    const/16 v3, 0x14

    if-ge v0, v3, :cond_1

    if-eqz v1, :cond_1

    .line 782
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 783
    .local v2, "word":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v0, v2, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->getWord(ILjava/lang/StringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v1

    .line 784
    if-eqz v1, :cond_0

    .line 786
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v3, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 791
    .end local v2    # "word":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private handleAutoPunct()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1311
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1312
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 1321
    :goto_0
    return-void

    .line 1316
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1318
    const-string v0, "\u3002"

    .line 1320
    .local v0, "autopunct":Ljava/lang/CharSequence;
    invoke-interface {v1, v0, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method private handleBackspace()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 640
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->cancelCurrentDefaultWord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->isFunctionBarDisabledOrZeroItem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 656
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideChineseListAndShowFunctionBar()V

    .line 657
    const/4 v0, 0x1

    return v0

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isCandidateListEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    goto :goto_0
.end method

.method private handleChar(C)V
    .locals 2
    .param p1, "ch"    # C

    .prologue
    const/16 v1, 0x8

    .line 1085
    const/16 v0, 0xd

    if-ne p1, v0, :cond_2

    .line 1086
    const/16 p1, 0xa

    .line 1091
    :cond_0
    :goto_0
    if-ne p1, v1, :cond_3

    .line 1092
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->handleBackspace()Z

    .line 1099
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 1101
    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1102
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateCandidatesList()V

    .line 1104
    :cond_1
    return-void

    .line 1087
    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 1088
    const/16 p1, 0x20

    goto :goto_0

    .line 1093
    :cond_3
    const/16 v0, 0x20

    if-ne p1, v0, :cond_4

    .line 1094
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->handleSpace()V

    goto :goto_1

    .line 1096
    :cond_4
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 1097
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->sendKeyChar(C)V

    goto :goto_1
.end method

.method private handleSpace()V
    .locals 0

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 583
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->sendSpace()V

    .line 584
    return-void
.end method

.method private handleText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 525
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 526
    return-void
.end method

.method private hideChineseListAndShowFunctionBar()V
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->clear()V

    .line 730
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hidePhraseListView()V

    .line 731
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showFunctionBarListView()V

    .line 732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShownFuntionBar:Z

    .line 733
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 735
    :cond_1
    return-void
.end method

.method private hideHowToUseToast()V
    .locals 0

    .prologue
    .line 315
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 316
    return-void
.end method

.method private isPendingRecognizeMessage()Z
    .locals 2

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private launchAddOnDictionary()V
    .locals 2

    .prologue
    .line 2296
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->handleClose()V

    .line 2297
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 2298
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showAddonDictionaries()V

    .line 2299
    return-void
.end method

.method private performDelayRecognition()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1238
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v7, :cond_5

    .line 1239
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v7

    .line 1240
    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndIntegratedEnabled()Z

    move-result v7

    .line 1242
    if-nez v7, :cond_5

    .line 1243
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getWidth()I

    move-result v6

    .line 1245
    .local v6, "writingPadWidth":I
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    .line 1246
    const/4 v3, 0x0

    .local v3, "pt":Landroid/graphics/Point;
    iget v5, v7, Landroid/graphics/Point;->x:I

    .line 1248
    .local v5, "startX":I
    sget v7, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->CHINESE_CATEGORY:I

    .line 1251
    div-int/lit8 v7, v6, 0x2

    if-ge v5, v7, :cond_9

    .line 1252
    sget v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->ALPHA_CATEGORY:I

    .line 1258
    .local v0, "category":I
    :goto_0
    sget v7, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->CHINESE_CATEGORY:I

    if-eq v0, v7, :cond_3

    .line 1259
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 1260
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "pt":Landroid/graphics/Point;
    check-cast v3, Landroid/graphics/Point;

    .line 1261
    .restart local v3    # "pt":Landroid/graphics/Point;
    iget v7, v3, Landroid/graphics/Point;->x:I

    if-nez v7, :cond_0

    iget v7, v3, Landroid/graphics/Point;->y:I

    if-eqz v7, :cond_a

    .line 1262
    :cond_0
    iget v7, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v8, v6, 0x2

    if-le v7, v8, :cond_1

    sget v7, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->ALPHA_CATEGORY:I

    if-eq v0, v7, :cond_2

    :cond_1
    iget v7, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v8, v6, 0x2

    if-ge v7, v8, :cond_a

    sget v7, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->SYMBOL_CATEGORY:I

    if-ne v0, v7, :cond_a

    .line 1266
    :cond_2
    sget v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->CHINESE_CATEGORY:I

    .line 1272
    .end local v2    # "i":I
    :cond_3
    sget v7, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->CHINESE_CATEGORY:I

    if-ne v0, v7, :cond_b

    .line 1273
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addOnlyTextCategory()V

    .line 1274
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    .line 1283
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v7, :cond_5

    .line 1284
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->applyChangedSettings()V

    .line 1289
    .end local v0    # "category":I
    .end local v3    # "pt":Landroid/graphics/Point;
    .end local v5    # "startX":I
    .end local v6    # "writingPadWidth":I
    :cond_5
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v7, :cond_6

    .line 1290
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->startArcsAddingSequence()V

    .line 1293
    :cond_6
    const/4 v4, 0x0

    .line 1294
    .local v4, "start":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_d

    .line 1295
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-nez v7, :cond_8

    .line 1297
    add-int/lit8 v1, v2, -0x1

    .line 1298
    .local v1, "end":I
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v7, :cond_7

    if-ltz v4, :cond_7

    if-ge v4, v1, :cond_7

    .line 1299
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v8, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8, v9, v9}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 1301
    :cond_7
    add-int/lit8 v4, v2, 0x1

    .line 1294
    .end local v1    # "end":I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1254
    .end local v2    # "i":I
    .end local v4    # "start":I
    .restart local v3    # "pt":Landroid/graphics/Point;
    .restart local v5    # "startX":I
    .restart local v6    # "writingPadWidth":I
    :cond_9
    sget v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->SYMBOL_CATEGORY:I

    .restart local v0    # "category":I
    goto/16 :goto_0

    .line 1259
    .restart local v2    # "i":I
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1275
    .end local v2    # "i":I
    :cond_b
    sget v7, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->ALPHA_CATEGORY:I

    if-ne v0, v7, :cond_c

    .line 1276
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addOnlyLatinLetterCategory()V

    .line 1277
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    goto :goto_2

    .line 1278
    :cond_c
    sget v7, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->SYMBOL_CATEGORY:I

    if-ne v0, v7, :cond_4

    .line 1279
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addDigitsAndSymbolsOnlyCategory()V

    .line 1280
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addPunctuationCategory()V

    .line 1281
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    goto :goto_2

    .line 1304
    .end local v0    # "category":I
    .end local v3    # "pt":Landroid/graphics/Point;
    .end local v5    # "startX":I
    .end local v6    # "writingPadWidth":I
    .restart local v2    # "i":I
    .restart local v4    # "start":I
    :cond_d
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v7, :cond_e

    .line 1305
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v7, v9}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 1307
    :cond_e
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1308
    return-void
.end method

.method private postDelayResumeSpeech()V
    .locals 4

    .prologue
    const/16 v1, 0xb

    .line 294
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 298
    return-void
.end method

.method private postHowToUseToastMsg()V
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 312
    return-void
.end method

.method private processPendingRecognizing()V
    .locals 2

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1233
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->performDelayRecognition()V

    .line 1234
    return-void
.end method

.method private removeAllPendingMsg()V
    .locals 2

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1109
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1110
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1111
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 1112
    return-void
.end method

.method private removeDelayRecognitionMsg()V
    .locals 2

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1225
    return-void
.end method

.method private removeHowToUseToastMsg()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    return-void
.end method

.method private resetWrite()V
    .locals 2

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1677
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1679
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->clearArcs()V

    .line 1680
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_1

    .line 1681
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setNewSession(Z)V

    .line 1683
    :cond_1
    return-void
.end method

.method private setKeyboardForTextEntry(Lcom/nuance/swype/input/InputFieldInfo;)V
    .locals 10
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    const/16 v9, 0x64

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 324
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v8

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v7, p1, v8, v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;Z)Lcom/nuance/swype/input/XT9Keyboard;

    .line 326
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNameField()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 327
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v4, v9, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setAttribute(II)Z

    .line 334
    :goto_1
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 335
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 336
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->addDigitOnlyCategory()V

    .line 343
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    .line 344
    if-eqz v4, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 346
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 347
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 348
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const v5, 0xaa3b

    if-ne v4, v5, :cond_4

    .line 349
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 351
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltIconMinHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 352
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltPreMinHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 354
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 360
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v1    # "i":I
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_0
    return-void

    :cond_1
    move v4, v6

    .line 324
    goto :goto_0

    .line 330
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v4, v9, v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setAttribute(II)Z

    goto :goto_1

    .line 338
    :cond_3
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 339
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/input/InputMethods;->addTextCategory(Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 340
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    goto :goto_2

    .line 346
    .restart local v1    # "i":I
    .restart local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .restart local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private showAddOnDictionary()V
    .locals 4

    .prologue
    .line 2268
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2269
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 2270
    .local v1, "userPref":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreement()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreementNotAsk()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2271
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    new-instance v3, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$8;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$8;-><init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    invoke-static {v2, v3}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 2286
    .local v0, "cndlg":Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/IME;->attachDialog(Landroid/app/Dialog;)V

    .line 2287
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2293
    .end local v0    # "cndlg":Landroid/app/AlertDialog;
    .end local v1    # "userPref":Lcom/nuance/swype/input/UserPreferences;
    :goto_0
    return-void

    .line 2292
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->launchAddOnDictionary()V

    goto :goto_0
.end method

.method private showCharacterListView()V
    .locals 2

    .prologue
    .line 948
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 951
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showPopupCandidatesView(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method private showContextPopupListView()V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showPopupCandidatesView(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method private showDelayFullScreen()V
    .locals 1

    .prologue
    .line 1599
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1601
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1602
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showHandWritingView(Z)V

    .line 1608
    :cond_0
    :goto_0
    return-void

    .line 1606
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->postDelayShowingFullScreenMsg()V

    goto :goto_0
.end method

.method private showFullScreenHandWritingView()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 1527
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1563
    :goto_0
    return-void

    .line 1531
    :cond_0
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEHandlerManager;->statusBarHeight()I

    move-result v4

    .line 1533
    .local v4, "status_bar_height":I
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1534
    .local v1, "display":Landroid/util/DisplayMetrics;
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1535
    .local v5, "w":I
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1536
    sub-int v3, v7, v4

    .line 1537
    .local v3, "fullHandWritingScreenYOffset":I
    move v2, v3

    .line 1538
    .local v2, "fullHandWritingScreenHeight":I
    sget-object v7, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v8, "showFullScreenHandWritingView...fullHandWritingScreenHeight: "

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1539
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isMiniKeyboardMode()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isDockMiniKeyboardMode()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1541
    :cond_1
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v7, :cond_6

    .line 1542
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 1543
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_5

    .line 1544
    iget-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isOnceAction:Z

    if-eqz v7, :cond_3

    .line 1545
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->postDelayShowingFullScreenMsg()V

    .line 1546
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isOnceAction:Z

    goto :goto_0

    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    .end local v1    # "display":Landroid/util/DisplayMetrics;
    .end local v2    # "fullHandWritingScreenHeight":I
    .end local v3    # "fullHandWritingScreenYOffset":I
    .end local v4    # "status_bar_height":I
    .end local v5    # "w":I
    :cond_2
    move v4, v6

    .line 1531
    goto :goto_1

    .line 1549
    .restart local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    .restart local v1    # "display":Landroid/util/DisplayMetrics;
    .restart local v2    # "fullHandWritingScreenHeight":I
    .restart local v3    # "fullHandWritingScreenYOffset":I
    .restart local v4    # "status_bar_height":I
    .restart local v5    # "w":I
    :cond_3
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getRootViewHeight()I

    move-result v7

    if-gtz v7, :cond_4

    .line 1550
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->postDelayShowingFullScreenMsg()V

    goto :goto_0

    .line 1553
    :cond_4
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getRootViewHeight()I

    move-result v7

    sub-int v2, v3, v7

    .line 1555
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v7

    sub-int/2addr v3, v7

    .line 1558
    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_6
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    neg-int v8, v3

    invoke-virtual {v7, v6, v8, v5, v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->showFullScreenHandWritingFrame(IIII)V

    .line 1560
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->changeAltIconOfSwitchingLayout(Z)V

    goto/16 :goto_0
.end method

.method private showPopupCandidatesView(Ljava/util/List;)V
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
    .line 1324
    .local p1, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showPopupCandidatesView(Ljava/util/List;Ljava/util/List;)V

    .line 1325
    return-void
.end method

.method private showPopupCandidatesView(Ljava/util/List;Ljava/util/List;)V
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
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
    .line 1330
    .local p1, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p2, "aWordSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1466
    :cond_0
    :goto_0
    return-void

    .line 1334
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopupDataList:Ljava/util/List;

    .line 1336
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideFullScreenHandWritingView(Z)V

    .line 1337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->getHeight()I

    move-result v3

    mul-int/lit8 v8, v3, 0x5

    .line 1338
    .local v8, "height":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->getWidth()I

    move-result v17

    .line 1339
    .local v17, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move/from16 v0, v17

    if-eq v3, v0, :cond_2

    .line 1340
    sget-object v3, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "recreate candidatesPopup....candidatesPopup.getMeasuredWidth(): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

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

    .line 1342
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 1344
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    if-nez v3, :cond_3

    .line 1346
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 1347
    .local v13, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 1349
    sget v3, Lcom/nuance/swype/input/R$layout;->candidates_popup:I

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 1352
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v15, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1355
    .local v15, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v3, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1356
    const/high16 v3, -0x80000000

    move/from16 v0, v17

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 1357
    .local v18, "widthMeasureSpec":I
    const/high16 v3, -0x80000000

    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1358
    .local v12, "heightMeasureSpec":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    move/from16 v0, v18

    invoke-virtual {v3, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    .line 1362
    .local v14, "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 1363
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setWordSource(Ljava/util/List;)V

    .line 1364
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setDoubleBuffered(Z)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1367
    .local v11, "closeButton":Landroid/view/View;
    new-instance v3, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;-><init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    invoke-virtual {v11, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1390
    new-instance v3, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$6;-><init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    invoke-virtual {v11, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1410
    .end local v11    # "closeButton":Landroid/view/View;
    .end local v12    # "heightMeasureSpec":I
    .end local v13    # "inflater":Landroid/view/LayoutInflater;
    .end local v14    # "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    .end local v15    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v18    # "widthMeasureSpec":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->scroll_view:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ScrollView;

    .line 1411
    .local v16, "scrollView":Landroid/widget/ScrollView;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    .line 1414
    .restart local v14    # "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    new-instance v2, Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$xml;->kbd_chinese_popup_template:I

    const/4 v6, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getPaddingRight()I

    move-result v9

    add-int/2addr v9, v5

    sget-object v10, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v10}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/util/List;IIIILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 1417
    .local v2, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1418
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 1419
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setWordSource(Ljava/util/List;)V

    .line 1420
    invoke-virtual {v14, v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1421
    new-instance v3, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;-><init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Lcom/nuance/swype/input/KeyboardEx;)V

    invoke-virtual {v14, v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 1462
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v17

    invoke-direct {v15, v0, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1463
    .local v15, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v3, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->showPopupCandidatesView(Landroid/view/View;)V

    .line 1465
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setCandidatesViewShown(Z)V

    goto/16 :goto_0
.end method

.method private updateCandidatesList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 821
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIsIMEActive:Z

    if-nez v0, :cond_1

    .line 823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 833
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 834
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterListView:Lcom/nuance/swype/input/chinese/SpellListView;

    if-eqz v0, :cond_2

    .line 835
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterListView:Lcom/nuance/swype/input/chinese/SpellListView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/input/chinese/SpellListView;->setSuggestions(Ljava/util/List;I)V

    .line 838
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setContext(Ljava/lang/CharSequence;)Z

    .line 839
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContextAssociations()V

    .line 840
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_3

    .line 841
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-virtual {v0, v1, v3, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;ILjava/util/List;)V

    .line 861
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showFSHandwritingSpellList()V

    .line 862
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 864
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->clear()V

    .line 865
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hideFunctionBarListView()V

    .line 866
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showPhraseListView()V

    .line 872
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    goto :goto_0

    .line 844
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-eqz v0, :cond_6

    .line 845
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->clearSpellPrefixSuffixListView()V

    .line 847
    :cond_6
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isCandidateListEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->isFunctionBarDisabledOrZeroItem()Z

    move-result v0

    if-nez v0, :cond_7

    .line 850
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setContext(Ljava/lang/CharSequence;)Z

    .line 851
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 852
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 854
    :cond_7
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/Composition;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setContext(Ljava/lang/CharSequence;)Z

    .line 855
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContextCandidates()V

    .line 856
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_3

    .line 857
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-virtual {v0, v1, v3, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;ILjava/util/List;)V

    goto/16 :goto_1

    .line 868
    :cond_8
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hidePhraseListView()V

    .line 869
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 870
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showFunctionBarListView()V

    goto :goto_2
.end method


# virtual methods
.method public changeAltIconOfSwitchingLayout(Z)V
    .locals 6
    .param p1, "aFullScreen"    # Z

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    .line 1623
    if-eqz v4, :cond_3

    .line 1624
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 1625
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1626
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1627
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const v5, 0xaa3b

    if-ne v4, v5, :cond_1

    .line 1628
    if-eqz p1, :cond_2

    .line 1629
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1630
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1631
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltIconMinHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 1633
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltPreMinHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 1645
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 1625
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1637
    :cond_2
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1638
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1639
    .restart local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltIconMaxHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 1641
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltPreMaxHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1655
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v1    # "i":I
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_3
    return-void
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 3
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "t9write"    # Lcom/nuance/input/swypecorelib/T9Write;
    .param p4, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 174
    check-cast p2, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .end local p2    # "xt9coreinput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    iput-object p2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .line 175
    check-cast p3, Lcom/nuance/input/swypecorelib/T9WriteChinese;

    .end local p3    # "t9write":Lcom/nuance/input/swypecorelib/T9Write;
    iput-object p3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    .line 176
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 177
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 178
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 179
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
    const/4 v1, 0x0

    .line 1471
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v2, :cond_0

    .line 1495
    :goto_0
    return-object v1

    .line 1475
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-nez v2, :cond_1

    .line 1477
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1480
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/nuance/swype/input/R$layout;->chinese_handwriting_candidates:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    .line 1482
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->setKeyboardViewEx(Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 1483
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->initViews()V

    .line 1484
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->getCJKCandidatesListView()Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 1485
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->getSpellPrefixSuffixWordListView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/SpellListView;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterListView:Lcom/nuance/swype/input/chinese/SpellListView;

    .line 1487
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    sget v2, Lcom/nuance/swype/input/R$id;->functionbar:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/FunctionBarListView;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    .line 1491
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V

    .line 1492
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/SpellListView;->setOnWordSelectActionListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V

    .line 1493
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    .line 1494
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    new-instance v2, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v2, v3, p0}, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->setOnFunctionBarListener(Lcom/nuance/swype/input/FunctionBarListView$OnFunctionBarListener;)V

    .line 1495
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->destroy()V

    .line 184
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 185
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->removeAllPendingMsg()V

    .line 186
    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 187
    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .line 188
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->cancelQueryTask()V

    .line 189
    return-void
.end method

.method public finishInput()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 371
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 373
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->removeHowToUseToastMsg()V

    .line 374
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 376
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isOnceAction:Z

    .line 377
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIsIMEActive:Z

    .line 378
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 380
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->dismissPopupKeyboard()V

    .line 381
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideFullScreenHandWritingView(Z)V

    .line 382
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->removeAllPendingMsg()V

    .line 383
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->recycleBitmap()V

    .line 384
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->clear()V

    .line 386
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 387
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->resetWrite()V

    .line 392
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 393
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->finishSession()V

    .line 395
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 401
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->hidePopupCandidatesView()V

    .line 404
    :cond_1
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    .line 405
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v0, :cond_2

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->dimissRemoveUdbWordDialog()V

    .line 409
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->finishSession()V

    goto :goto_0
.end method

.method public flushCurrentActiveWord()V
    .locals 1

    .prologue
    .line 686
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->cancelQueryTask()V

    .line 687
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentActiveWord()V

    .line 688
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->dimissRemoveUdbWordDialog()V

    .line 689
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideFullScreenHandWritingView(Z)V

    .line 690
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->clearLinePath()V

    .line 691
    return-void
.end method

.method public getCurrentScreenMode()Z
    .locals 1

    .prologue
    .line 2154
    const/4 v0, 0x0

    return v0
.end method

.method protected getExtendedEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 3
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 2304
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    .line 2305
    .local v0, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2314
    .end local p1    # "me":Landroid/view/MotionEvent;
    :cond_1
    :goto_0
    return-object p1

    .restart local p1    # "me":Landroid/view/MotionEvent;
    :cond_2
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->getExtendedEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_0
.end method

.method public getWordCandidateListContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    return-object v0
.end method

.method protected handleBackspace(I)Z
    .locals 2
    .param p1, "repeatedCount"    # I

    .prologue
    const/16 v1, 0x8

    .line 663
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->processPendingRecognizing()V

    .line 666
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueChar(C)V

    .line 680
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 674
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueChar(C)V

    goto :goto_0

    .line 678
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->handleBackspace()Z

    goto :goto_0
.end method

.method public handleCharKey(Landroid/graphics/Point;I[IJ)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "eventTime"    # J

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->processPendingRecognizing()V

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueChar(C)V

    .line 579
    return-void
.end method

.method public handleClose()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIsIMEActive:Z

    .line 416
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideFullScreenHandWritingView(Z)V

    .line 417
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 418
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->removeAllPendingMsg()V

    .line 419
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->resetWrite()V

    .line 420
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->recycleBitmap()V

    .line 421
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->dimissRemoveUdbWordDialog()V

    .line 422
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 423
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->resume()V

    .line 424
    return-void
.end method

.method public handleKey(IZI)Z
    .locals 2
    .param p1, "primaryCode"    # I
    .param p2, "quickPressed"    # Z
    .param p3, "repeatedCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 455
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 459
    sparse-switch p1, :sswitch_data_0

    .line 494
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 461
    :sswitch_0
    if-nez p2, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentActiveWord()V

    .line 463
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->startSpeech()V

    goto :goto_0

    .line 467
    :sswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->clear()V

    .line 468
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    goto :goto_0

    .line 470
    :sswitch_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->toggleLastKeyboard()V

    goto :goto_0

    .line 473
    :sswitch_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 474
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideFullScreenHandWritingView(Z)V

    .line 478
    :goto_1
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->hidePopupCandidatesView()V

    .line 481
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 483
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentActiveWord()V

    .line 484
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 485
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->clearLinePath()V

    .line 486
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 487
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShowFunctionBar:Z

    if-eqz v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->clear()V

    .line 489
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hidePhraseListView()V

    .line 490
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showFunctionBarListView()V

    .line 492
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    goto :goto_0

    .line 476
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showFullScreenHandWritingView()V

    goto :goto_1

    .line 459
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
    .line 428
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

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

    .line 432
    :cond_0
    const/4 v0, 0x1

    .line 434
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
    .line 513
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

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

    .line 518
    :cond_0
    const/4 v0, 0x1

    .line 520
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
    .line 439
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v0, v0

    if-nez v0, :cond_1

    .line 440
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 450
    :goto_0
    return v0

    .line 443
    :cond_1
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const v1, 0xaa3b

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v1, 0xff5

    if-ne v0, v1, :cond_3

    .line 445
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 446
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hideSpellPrefixSuffixList()V

    .line 447
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->clear()V

    .line 450
    :cond_3
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_0
.end method

.method public handlePossibleActionAfterResize()V
    .locals 2

    .prologue
    .line 500
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_1

    .line 501
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 502
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isMiniKeyboardMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isDockMiniKeyboardMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    .line 504
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isOnceAction:Z

    .line 507
    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideFullScreenHandWritingView(Z)V

    .line 508
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showFullScreenHandWritingView()V

    .line 509
    return-void
.end method

.method public handlePossibleActionAfterUniversalKeyboardResize(Z)V
    .locals 1
    .param p1, "hideSymbolView"    # Z

    .prologue
    .line 1592
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideFullScreenHandWritingView(Z)V

    .line 1593
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1594
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showFullScreenHandWritingView()V

    .line 1596
    :cond_0
    return-void
.end method

.method protected handleScrollDown()V
    .locals 1

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1828
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleFullScreenHW()V

    .line 1830
    :cond_0
    return-void
.end method

.method public handleShiftKey()V
    .locals 1

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->cycleShiftState()V

    .line 1117
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->invalidateKeyboardImage()V

    .line 1118
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

    .line 589
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 591
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->processPendingRecognizing()V

    .line 592
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v4, :cond_0

    .line 593
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueChar(C)V

    .line 636
    :cond_0
    :goto_0
    return v7

    .line 595
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 599
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v4, :cond_0

    .line 600
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentDefaultWord()Z

    goto :goto_0

    .line 603
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 604
    const/4 v0, 0x1

    .line 608
    .local v0, "addSpace":Z
    if-eqz p1, :cond_4

    if-ge p2, v6, :cond_4

    iget-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mAutoPunctuationOn:Z

    if-eqz v4, :cond_4

    .line 609
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 610
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_4

    .line 611
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 612
    invoke-interface {v3, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 618
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v2

    .line 619
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

    .line 624
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->handleAutoPunct()V

    .line 625
    const/4 v0, 0x0

    .line 628
    :cond_3
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 632
    .end local v1    # "cSeqBefore":Ljava/lang/CharSequence;
    .end local v2    # "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->sendSpace()V

    goto :goto_0
.end method

.method public handleUniversalKeyboardResize(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1572
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideFullScreenHandWritingView(Z)V

    .line 1576
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->hidePopupCandidatesView()V

    .line 1577
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 1579
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentActiveWord()V

    .line 1580
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1581
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1582
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShowFunctionBar:Z

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->clear()V

    .line 1584
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hidePhraseListView()V

    .line 1585
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showFunctionBarListView()V

    .line 1587
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleUniversalKeyboardResize(I)V

    .line 1588
    return-void

    .line 1574
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showFullScreenHandWritingView()V

    goto :goto_0
.end method

.method protected hideFullScreenHandWritingView(Z)V
    .locals 1
    .param p1, "aFlag"    # Z

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->hideFullScreenHandWritingFrame(Z)V

    .line 1567
    return-void
.end method

.method public isFullScreenHandWritingView()Z
    .locals 1

    .prologue
    .line 2324
    const/4 v0, 0x1

    return v0
.end method

.method public isHandWritingInputView()Z
    .locals 1

    .prologue
    .line 2329
    const/4 v0, 0x1

    return v0
.end method

.method public isLanguageSwitchableOnSpace()Z
    .locals 1

    .prologue
    .line 1852
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1853
    const/4 v0, 0x1

    .line 1855
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isNormalTextInputMode()Z
    .locals 1

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    return v0
.end method

.method public isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z
    .locals 1
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1705
    const/4 v0, 0x0

    return v0
.end method

.method public isSpeechPopupShowing()Z
    .locals 1

    .prologue
    .line 2169
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->isSpeechViewShowing()Z

    move-result v0

    return v0
.end method

.method protected needChangeSpeechWindowHeight()Z
    .locals 1

    .prologue
    .line 2341
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2342
    const/4 v0, 0x1

    .line 2344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 1
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-ne p1, v0, :cond_1

    .line 1687
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupCandidateListShowable:Z

    if-eqz v0, :cond_0

    .line 1688
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showContextPopupListView()V

    .line 1695
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->dismissPopupKeyboard()V

    .line 1696
    return-void

    .line 1691
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupCandidateListShowable:Z

    if-eqz v0, :cond_0

    .line 1692
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showCharacterListView()V

    goto :goto_0
.end method

.method public onApplicationUnbind()V
    .locals 0

    .prologue
    .line 1747
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->dimissRemoveUdbWordDialog()V

    .line 1748
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onApplicationUnbind()V

    .line 1753
    return-void
.end method

.method public onBack(Landroid/view/View;)V
    .locals 3
    .param p1, "aContainer"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 1709
    if-nez p1, :cond_1

    .line 1721
    :cond_0
    :goto_0
    return-void

    .line 1713
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1714
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1715
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showHandWritingView(Z)V

    .line 1716
    iput v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    .line 1717
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_0

    .line 1718
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setPointStatus(I)V

    goto :goto_0
.end method

.method public onCandidateLongPressed(ILjava/lang/String;ILcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "wdSource"    # I
    .param p4, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1894
    packed-switch p3, :pswitch_data_0

    .line 1902
    :goto_0
    :pswitch_0
    return-void

    .line 1897
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showRemoveUdbWordDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 1900
    :pswitch_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, p2, v1}, Lcom/nuance/swype/util/ContactUtils;->getContactNumberFromPhoneBook(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1894
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCandidatePress(Landroid/view/View;I)V
    .locals 2
    .param p1, "aContainer"    # Landroid/view/View;
    .param p2, "primaryCode"    # I

    .prologue
    const/4 v1, -0x1

    .line 1725
    iput v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    .line 1726
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_0

    .line 1727
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setPointStatus(I)V

    .line 1729
    :cond_0
    return-void
.end method

.method public onCandidateRelease(Landroid/view/View;I)V
    .locals 0
    .param p1, "aContainer"    # Landroid/view/View;
    .param p2, "primaryCode"    # I

    .prologue
    .line 1734
    return-void
.end method

.method public onCandidateText(Landroid/view/View;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "aContainer"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "aKeyIndex"    # I

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 1739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 1740
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1741
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateCandidatesList()V

    .line 1742
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showHandWritingView(Z)V

    .line 1743
    return-void
.end method

.method public onHandleUdbWordRemoval(Ljava/lang/String;)V
    .locals 7
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1861
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v2, :cond_0

    .line 1862
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->udbDelete(Ljava/lang/String;)Z

    move-result v0

    .line 1863
    .local v0, "deleteStatus":Z
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v2, :cond_0

    .line 1864
    if-eqz v0, :cond_1

    .line 1865
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

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

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

    .line 1868
    .local v1, "removeMgs":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v1, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 1870
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v2}, Lcom/nuance/swype/input/Composition;->clearCurrentInline()V

    .line 1871
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 1872
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1873
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1874
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateCandidatesList()V

    .line 1876
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->hidePopupCandidatesView()V

    .line 1877
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1878
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showFullScreenHandWritingView()V

    .line 1879
    iput v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    .line 1880
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v2, v6}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setPointStatus(I)V

    .line 1891
    .end local v0    # "deleteStatus":Z
    .end local v1    # "removeMgs":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1882
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

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

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

    .line 1885
    .restart local v1    # "removeMgs":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v1, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method

.method public onHandleWriteEvent(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;

    .prologue
    const-wide/16 v4, 0x5

    .line 1051
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_2

    .line 1052
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isLVLLicenseValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    :cond_2
    iget v0, p1, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;->mType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1062
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1067
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1072
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1060
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
    .line 2334
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-eqz v0, :cond_0

    .line 2335
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->updateScrollArrowVisibility()V

    .line 2337
    :cond_0
    return-void
.end method

.method public onSpeechViewDismissed()V
    .locals 2

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1843
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateCandidatesList()V

    .line 1844
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->setVisibility(I)V

    .line 1845
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setHWFrame()V

    .line 1846
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->postDelayShowingFullScreenMsg()V

    .line 1848
    :cond_0
    return-void
.end method

.method public onSpeechViewShowedUp()V
    .locals 1

    .prologue
    .line 1836
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideFullScreenHandWritingView(Z)V

    .line 1837
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 530
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->processPendingRecognizing()V

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_2

    .line 534
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v0

    .line 535
    .local v0, "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 536
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

    .line 538
    invoke-interface {p1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 540
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v1, p1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueText(Ljava/lang/CharSequence;)V

    .line 544
    .end local v0    # "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    :goto_0
    return-void

    .line 542
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v1, p1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public penDown(Landroid/view/View;)V
    .locals 3
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 908
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 909
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndIntegratedEnabled()Z

    move-result v0

    .line 910
    .local v0, "integrated":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->dismissPopupKeyboard()V

    .line 911
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 912
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eq v1, p1, :cond_0

    .line 913
    instance-of v1, p1, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v1, :cond_0

    .line 914
    check-cast p1, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .end local p1    # "src":Landroid/view/View;
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .line 915
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 916
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setWidth(I)V

    .line 917
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setHeight(I)V

    .line 918
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->applyChangedSettings()V

    .line 922
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 923
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 924
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 925
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateCandidatesList()V

    .line 928
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
    .line 931
    .local p1, "arc":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 932
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->getRecognizerDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 936
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupCandidateListShowable:Z

    .line 937
    return-void
.end method

.method public penUp([Lcom/nuance/swype/input/Stroke$Arc;Landroid/view/View;)V
    .locals 1
    .param p1, "arcs"    # [Lcom/nuance/swype/input/Stroke$Arc;
    .param p2, "Src"    # Landroid/view/View;

    .prologue
    .line 1672
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->penUp(Ljava/util/List;Landroid/view/View;)V

    .line 1673
    return-void
.end method

.method public pointInSelectionArea(II)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    .line 1913
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 1935
    :cond_0
    :goto_0
    return v4

    .line 1916
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEHandlerManager;->statusBarHeight()I

    move-result v3

    .line 1919
    .local v3, "status_bar_height":I
    :goto_1
    sget v5, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordListHeight:I

    if-nez v5, :cond_2

    .line 1920
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->getMeasuredHeight()I

    move-result v5

    sput v5, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordListHeight:I

    .line 1923
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$dimen;->key_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1926
    .local v1, "keyboard_height":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1928
    .local v2, "screen_height":I
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->isShown()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1929
    sget v5, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordListHeight:I

    sub-int v5, v2, v5

    sub-int/2addr v5, v1

    sub-int v0, v5, v3

    .line 1935
    .local v0, "boundaryHandWritingScreenHeight":I
    :goto_2
    if-lt p2, v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .end local v0    # "boundaryHandWritingScreenHeight":I
    .end local v1    # "keyboard_height":I
    .end local v2    # "screen_height":I
    .end local v3    # "status_bar_height":I
    :cond_3
    move v3, v4

    .line 1916
    goto :goto_1

    .line 1932
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
    const/4 v1, 0x1

    .line 1658
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1661
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1663
    return-void
.end method

.method public prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 0
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1700
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    .line 1701
    return-void
.end method

.method protected removeDelayShowingFullScreenMsg()V
    .locals 2

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1668
    return-void
.end method

.method public resetArea(I)V
    .locals 2
    .param p1, "areaOption"    # I

    .prologue
    .line 2134
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 2135
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 2140
    :goto_0
    return-void

    .line 2138
    :cond_0
    iput p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    goto :goto_0
.end method

.method protected resumeSpeech()V
    .locals 1

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    if-eqz v0, :cond_0

    .line 1821
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->resumeSpeech()V

    .line 1823
    :cond_0
    return-void
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/CharSequence;
    .param p3, "source"    # Landroid/view/View;

    .prologue
    .line 955
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 956
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 957
    .local v0, "wordIndex":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v1, :cond_0

    .line 958
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 959
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v1, v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->noteSelectedCandidate(I)Z

    .line 965
    .end local v0    # "wordIndex":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 966
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 967
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 968
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateCandidatesList()V

    .line 969
    return-void

    .line 961
    .restart local v0    # "wordIndex":I
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->noteSelectedCandidate(I)Z

    goto :goto_0
.end method

.method public setActiveCandidate(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 814
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 816
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 818
    :cond_0
    return-void
.end method

.method protected setCandidatesViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 561
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setCandidatesViewShown(Z)V

    .line 562
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-nez v0, :cond_0

    .line 570
    :goto_0
    return-void

    .line 565
    :cond_0
    if-eqz p1, :cond_1

    .line 566
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->setVisibility(I)V

    goto :goto_0

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method public setContainerView(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;)V
    .locals 0
    .param p1, "container"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    .prologue
    .line 1504
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    .line 1505
    return-void
.end method

.method public setHWFrame()V
    .locals 1

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->setFullScreenHandWritingFrame()V

    .line 1509
    return-void
.end method

.method public setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V
    .locals 3
    .param p1, "view"    # Lcom/nuance/swype/input/HandWritingView;

    .prologue
    .line 886
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 887
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->clearCurrentInline()V

    .line 889
    :cond_0
    instance-of v1, p1, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v1, :cond_2

    .line 890
    check-cast p1, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .end local p1    # "view":Lcom/nuance/swype/input/HandWritingView;
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .line 895
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v1, :cond_1

    .line 896
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setFullScreen(Z)V

    .line 897
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v1, :cond_1

    .line 898
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 899
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndIntegratedEnabled()Z

    move-result v0

    .line 900
    .local v0, "integrated":Z
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setIntegratedEnabled(Z)V

    .line 904
    .end local v0    # "integrated":Z
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->clearArcs()V

    .line 905
    return-void

    .line 892
    .restart local p1    # "view":Lcom/nuance/swype/input/HandWritingView;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    goto :goto_0
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 0
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    .line 365
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateDockModeForHandwriting(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 366
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 367
    return-void
.end method

.method public setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .locals 8
    .param p1, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 1766
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v6

    if-ne v6, p1, :cond_0

    .line 1816
    :goto_0
    return-void

    .line 1770
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 1771
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->dismissPopupKeyboard()V

    .line 1772
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentActiveWord()V

    .line 1774
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    .line 1775
    .local v3, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v6, p1, v7, v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 1776
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1777
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hideSpellPrefixSuffixList()V

    .line 1778
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideFullScreenHandWritingView(Z)V

    .line 1779
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateKeyboardDockMode()V

    .line 1780
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->clear()V

    .line 1781
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hidePhraseListView()V

    .line 1782
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showFunctionBarListView()V

    .line 1815
    :cond_1
    :goto_1
    sget-object v6, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_0

    .line 1784
    :cond_2
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v6, :cond_4

    .line 1785
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v1

    .line 1786
    .local v1, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isMiniKeyboardMode()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isDockMiniKeyboardMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1787
    :cond_3
    invoke-virtual {v1}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    .line 1788
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isOnceAction:Z

    .line 1791
    .end local v1    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setHWFrame()V

    .line 1792
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->postDelayShowingFullScreenMsg()V

    .line 1793
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    invoke-virtual {v6, v7, p0}, Lcom/nuance/swype/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 1794
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showFSHandwritingSpellList()V

    .line 1795
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v6

    .line 1796
    if-eqz v6, :cond_1

    .line 1797
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v5

    .line 1798
    .local v5, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 1799
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1800
    .local v4, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v6, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const v7, 0xaa3b

    if-ne v6, v7, :cond_5

    .line 1801
    iget-object v6, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 1802
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1803
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v6, Lcom/nuance/swype/input/R$attr;->cjkAltIconMinHwCommaKey:I

    invoke-virtual {v0, v6}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 1804
    sget v6, Lcom/nuance/swype/input/R$attr;->cjkAltPreMinHwCommaKey:I

    invoke-virtual {v0, v6}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 1806
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_1

    .line 1798
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method protected setNotMatchToolTipSuggestion()V
    .locals 1

    .prologue
    .line 2195
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShowFunctionBar:Z

    if-eqz v0, :cond_0

    .line 2204
    :goto_0
    return-void

    .line 2198
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-eqz v0, :cond_1

    .line 2199
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hideFunctionBarListView()V

    .line 2200
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showPhraseListView()V

    .line 2202
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 2203
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showNotMatchTootip()V

    goto :goto_0
.end method

.method protected setSwypeKeytoolTipSuggestion()V
    .locals 1

    .prologue
    .line 2182
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShowFunctionBar:Z

    if-eqz v0, :cond_0

    .line 2191
    :goto_0
    return-void

    .line 2185
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-eqz v0, :cond_1

    .line 2186
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hideFunctionBarListView()V

    .line 2187
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showPhraseListView()V

    .line 2189
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 2190
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showSwypeTooltip()V

    goto :goto_0
.end method

.method public shouldDisableInput(I)Z
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

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

.method public showEmojiInputView()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 2349
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 2351
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mEmojiInputController:Lcom/nuance/swype/input/emoji/EmojiInputController;

    if-nez v0, :cond_0

    .line 2352
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->createEmojiInputView()V

    .line 2355
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2356
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2357
    return-void
.end method

.method public showHandWritingView(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1524
    :goto_0
    return-void

    .line 1515
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->hidePopupCandidatesView()V

    .line 1516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1517
    sget v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordListHeight:I

    if-nez v0, :cond_1

    .line 1518
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->getMeasuredHeight()I

    move-result v0

    sput v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordListHeight:I

    .line 1520
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->changeAltIconOfSwitchingLayout(Z)V

    .line 1521
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showFullScreenHandWritingView()V

    .line 1523
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateCandidatesList()V

    goto :goto_0
.end method

.method showHowToUseToast()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 301
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 302
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    const-string v1, "show_how_to_toggle_half_screen_mode_chn"

    invoke-virtual {v0, v1, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    const-string v1, "show_how_to_toggle_half_screen_mode_chn"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 304
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->how_to_toggle_half_screen_mode:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v2, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 308
    :cond_0
    return-void
.end method

.method public showInline()V
    .locals 3

    .prologue
    .line 880
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 881
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 883
    :cond_0
    return-void
.end method

.method protected showSymbolSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 2
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 2144
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

    .line 2147
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showStaticSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 2149
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->showSymbolSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_0
.end method

.method public startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V
    .locals 7
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 193
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v3, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v3, :cond_2

    .line 197
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateCandidatesSize()V

    .line 199
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterListView:Lcom/nuance/swype/input/chinese/SpellListView;

    if-eqz v3, :cond_3

    .line 200
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/SpellListView;->updateCandidatesSize()V

    .line 202
    :cond_3
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIsIMEActive:Z

    .line 203
    const/4 v3, -0x1

    iput v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    .line 204
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupCandidateListShowable:Z

    .line 205
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 207
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCompletionOn:Z

    .line 209
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->cancelCurrentDefaultWord()Z

    .line 211
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getShowFunctionBar()Z

    move-result v3

    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShowFunctionBar:Z

    .line 213
    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShowFunctionBar:Z

    if-eqz v3, :cond_4

    .line 214
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/FunctionBarListView;->recycleBitmap()V

    .line 215
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->addFunctionBarItem()V

    .line 217
    :cond_4
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->startSession()V

    .line 218
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v2

    .line 219
    .local v2, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    sget-object v3, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v2, v3, :cond_5

    sget-object v3, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v2, v3, :cond_7

    .line 221
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v4, v4, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/nuance/swype/input/DatabaseConfig;->removeIncompatibleDBFiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v2

    .line 224
    sget-object v3, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v2, v3, :cond_6

    sget-object v3, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v2, v3, :cond_7

    .line 226
    :cond_6
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isLDBCompatible:Z

    .line 227
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->promptUserToUpdateLanguage()V

    .line 228
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->toggleKeyboard(Z)V

    .line 231
    :cond_7
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v3, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setInputMode(I)Z

    .line 232
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    const/16 v4, 0x65

    iget v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFuzzyPinyin:I

    invoke-virtual {v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setAttribute(II)Z

    .line 234
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearCommonChar()I

    .line 235
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3, p0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 236
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/Composition;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 237
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/input/InputMethods;->addTextCategory(Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 238
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    .line 239
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->startSession(I)V

    .line 240
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 241
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v3, :cond_8

    .line 242
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 245
    :cond_8
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    if-eqz v3, :cond_9

    .line 246
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->hidePopupCandidatesView()V

    .line 248
    :cond_9
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    .line 249
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setKeyboardForTextEntry(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 250
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v4, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 252
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setHWFrame()V

    .line 253
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->postDelayShowingFullScreenMsg()V

    .line 255
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 257
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v3

    const/16 v4, 0xe1

    if-ne v3, v4, :cond_c

    .line 258
    sget v3, Lcom/nuance/swype/input/R$string;->handwriting_chn_mode_simp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWritingChnMode:Ljava/lang/String;

    .line 259
    sget v3, Lcom/nuance/swype/input/R$string;->handwriting_123_mode_simp:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    .line 267
    :cond_a
    :goto_1
    sget v3, Lcom/nuance/swype/input/R$string;->handwriting_abc_mode:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    .line 269
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    const-string v4, "hwr_auto_recpgnize_delay"

    sget v5, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_default_ms:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/nuance/swype/input/settings/InputPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 272
    .local v0, "delayMS":I
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3, v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setRecognizerDelay(I)V

    .line 274
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->clearArcs()V

    .line 275
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-eqz v3, :cond_b

    .line 276
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showFSHandwritingSpellList()V

    .line 278
    :cond_b
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateCandidatesList()V

    .line 279
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$dimen;->spell_list_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$dimen;->candidates_list_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionHeight:I

    .line 281
    iget v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionHeight:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$dimen;->key_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardHeight:I

    .line 283
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->removeHowToUseToastMsg()V

    .line 284
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->postHowToUseToastMsg()V

    .line 285
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->postDelayResumeSpeech()V

    .line 286
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v3, :cond_0

    .line 287
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setWidth(I)V

    .line 288
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setHeight(I)V

    .line 289
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->applyChangedSettings()V

    goto/16 :goto_0

    .line 260
    .end local v0    # "delayMS":I
    :cond_c
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v3

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_d

    .line 261
    sget v3, Lcom/nuance/swype/input/R$string;->handwriting_chn_mode_trad:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWritingChnMode:Ljava/lang/String;

    .line 262
    sget v3, Lcom/nuance/swype/input/R$string;->handwriting_123_mode_trad:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    goto/16 :goto_1

    .line 263
    :cond_d
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v3

    const/16 v4, 0xe2

    if-ne v3, v4, :cond_a

    .line 264
    sget v3, Lcom/nuance/swype/input/R$string;->handwriting_chn_mode_trad:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWritingChnMode:Ljava/lang/String;

    .line 265
    sget v3, Lcom/nuance/swype/input/R$string;->handwriting_123_mode_trad:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public transferKeyEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 1941
    sget v19, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordListHeight:I

    if-nez v19, :cond_0

    .line 1942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->getMeasuredHeight()I

    move-result v19

    sput v19, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordListHeight:I

    .line 1944
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/nuance/swype/input/R$dimen;->key_height:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 1946
    .local v13, "keyboard_height":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v15, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1947
    .local v15, "screen_height":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 1948
    .local v16, "screen_width":I
    const/16 v18, 0x0

    .line 1949
    .local v18, "status_bar_height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/IMEHandlerManager;->statusBarHeight()I

    move-result v18

    .line 1953
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    .line 1954
    .local v2, "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 1955
    .local v4, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 1956
    .local v6, "actionType":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 1957
    .local v7, "posX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 1958
    .local v8, "posY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 1959
    .local v9, "mState":I
    int-to-float v0, v15

    move/from16 v19, v0

    sub-float v19, v19, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v12, v19, v20

    .line 1960
    .local v12, "heightToBottom":F
    int-to-float v0, v13

    move/from16 v19, v0

    cmpg-float v19, v12, v19

    if-gtz v19, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 1963
    :cond_3
    if-nez v6, :cond_4

    .line 1964
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    .line 1966
    :cond_4
    int-to-float v0, v13

    move/from16 v19, v0

    sub-float v8, v19, v12

    .line 1967
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 1970
    .local v14, "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1971
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 1973
    const/16 v19, 0x1

    .line 2121
    .end local v14    # "motionEvent":Landroid/view/MotionEvent;
    :goto_1
    return v19

    .line 1950
    .end local v2    # "downTime":J
    .end local v4    # "eventTime":J
    .end local v6    # "actionType":I
    .end local v7    # "posX":F
    .end local v8    # "posY":F
    .end local v9    # "mState":I
    .end local v12    # "heightToBottom":F
    :cond_5
    const/16 v18, 0x0

    goto :goto_0

    .line 1975
    .restart local v2    # "downTime":J
    .restart local v4    # "eventTime":J
    .restart local v6    # "actionType":I
    .restart local v7    # "posX":F
    .restart local v8    # "posY":F
    .restart local v9    # "mState":I
    .restart local v12    # "heightToBottom":F
    :cond_6
    sub-int v19, v15, v18

    sget v20, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordListHeight:I

    sub-int v19, v19, v20

    sub-int v10, v19, v13

    .line 1977
    .local v10, "boundarySize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterListView:Lcom/nuance/swype/input/chinese/SpellListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/chinese/SpellListView;->getMeasuredHeight()I

    move-result v17

    .line 1978
    .local v17, "spellHeight":I
    add-int v19, v17, v10

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v8, v19

    if-lez v19, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 1980
    :cond_8
    if-nez v6, :cond_9

    .line 1981
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    .line 1983
    :cond_9
    add-int v19, v10, v17

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v8, v8, v19

    .line 1985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getLeftWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v7, v19

    if-ltz v19, :cond_10

    .line 1987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->isRightPhraseArrowShowable()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 1988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->getRightPhraseImageButtonWidth()I

    move-result v19

    sub-int v11, v16, v19

    .line 1994
    .local v11, "candidateArea":I
    :goto_2
    int-to-float v0, v11

    move/from16 v19, v0

    cmpg-float v19, v7, v19

    if-gtz v19, :cond_c

    .line 1995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getLeftWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v7, v7, v19

    .line 1996
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 1998
    .restart local v14    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/FunctionBarListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2000
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 2049
    .end local v11    # "candidateArea":I
    .end local v14    # "motionEvent":Landroid/view/MotionEvent;
    :cond_a
    :goto_3
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 1992
    :cond_b
    move/from16 v11, v16

    .restart local v11    # "candidateArea":I
    goto :goto_2

    .line 2003
    :cond_c
    if-nez v6, :cond_d

    .line 2005
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v8, v8, v19

    .line 2006
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 2008
    .restart local v14    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2011
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 2013
    .end local v14    # "motionEvent":Landroid/view/MotionEvent;
    :cond_d
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_e

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v6, v0, :cond_a

    .line 2015
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 2016
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 2018
    .restart local v14    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_3

    .line 2020
    .end local v14    # "motionEvent":Landroid/view/MotionEvent;
    :cond_f
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    .line 2021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setPointStatus(I)V

    goto :goto_3

    .line 2027
    .end local v11    # "candidateArea":I
    :cond_10
    if-nez v6, :cond_11

    .line 2028
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v8, v8, v19

    .line 2029
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 2031
    .restart local v14    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2033
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 2035
    .end local v14    # "motionEvent":Landroid/view/MotionEvent;
    :cond_11
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_12

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v6, v0, :cond_a

    .line 2037
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 2038
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 2040
    .restart local v14    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_3

    .line 2042
    .end local v14    # "motionEvent":Landroid/view/MotionEvent;
    :cond_13
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    .line 2043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setPointStatus(I)V

    goto/16 :goto_3

    .line 2052
    :cond_14
    int-to-float v0, v10

    move/from16 v19, v0

    sub-float v19, v8, v19

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v19, v19, v20

    if-gtz v19, :cond_15

    int-to-float v0, v10

    move/from16 v19, v0

    sub-float v19, v8, v19

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_22

    .line 2055
    :cond_16
    if-nez v6, :cond_17

    .line 2056
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    .line 2058
    :cond_17
    int-to-float v0, v10

    move/from16 v19, v0

    sub-float v8, v8, v19

    .line 2060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterListView:Lcom/nuance/swype/input/chinese/SpellListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/chinese/SpellListView;->getLeftWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v7, v19

    if-ltz v19, :cond_1e

    .line 2062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->isRightSpellPrefixSuffixArrowShowable()Z

    move-result v19

    if-eqz v19, :cond_19

    .line 2063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->getRightSpellPrefixSuffixImageButtonWidth()I

    move-result v19

    sub-int v11, v16, v19

    .line 2069
    .restart local v11    # "candidateArea":I
    :goto_4
    int-to-float v0, v11

    move/from16 v19, v0

    cmpg-float v19, v7, v19

    if-gtz v19, :cond_1a

    .line 2070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterListView:Lcom/nuance/swype/input/chinese/SpellListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/chinese/SpellListView;->getLeftWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v7, v7, v19

    .line 2071
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 2073
    .restart local v14    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterListView:Lcom/nuance/swype/input/chinese/SpellListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/chinese/SpellListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2074
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 2119
    .end local v11    # "candidateArea":I
    .end local v14    # "motionEvent":Landroid/view/MotionEvent;
    :cond_18
    :goto_5
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 2067
    :cond_19
    move/from16 v11, v16

    .restart local v11    # "candidateArea":I
    goto :goto_4

    .line 2076
    :cond_1a
    if-nez v6, :cond_1b

    .line 2078
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 2080
    .restart local v14    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2082
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 2084
    .end local v14    # "motionEvent":Landroid/view/MotionEvent;
    :cond_1b
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_1c

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v6, v0, :cond_18

    .line 2086
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1d

    .line 2087
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 2089
    .restart local v14    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterListView:Lcom/nuance/swype/input/chinese/SpellListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/chinese/SpellListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_5

    .line 2091
    .end local v14    # "motionEvent":Landroid/view/MotionEvent;
    :cond_1d
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setPointStatus(I)V

    goto :goto_5

    .line 2098
    .end local v11    # "candidateArea":I
    :cond_1e
    if-nez v6, :cond_1f

    .line 2099
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 2102
    .restart local v14    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2104
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 2106
    .end local v14    # "motionEvent":Landroid/view/MotionEvent;
    :cond_1f
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_20

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v6, v0, :cond_18

    .line 2108
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_21

    .line 2109
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 2111
    .restart local v14    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterListView:Lcom/nuance/swype/input/chinese/SpellListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/chinese/SpellListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_5

    .line 2113
    .end local v14    # "motionEvent":Landroid/view/MotionEvent;
    :cond_21
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    .line 2114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setPointStatus(I)V

    goto/16 :goto_5

    .line 2121
    :cond_22
    const/16 v19, 0x0

    goto/16 :goto_1
.end method

.method public updateKeyboardDockMode()V
    .locals 1

    .prologue
    .line 1757
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    .line 1758
    .local v0, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    if-eqz v0, :cond_0

    .line 1759
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1761
    :cond_0
    return-void
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

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 976
    invoke-super/range {p0 .. p6}, Lcom/nuance/swype/input/InputView;->updateSelection(IIIIII)V

    .line 979
    if-ne p3, p6, :cond_0

    if-eq p4, p6, :cond_1

    :cond_0
    if-ne p6, v5, :cond_2

    :cond_1
    if-ne p6, v5, :cond_9

    if-nez p4, :cond_9

    :cond_2
    move v0, v3

    .line 982
    .local v0, "cursorChanged":Z
    :goto_0
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_3
    if-nez v0, :cond_b

    .line 984
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    .line 985
    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v2

    .line 986
    .local v2, "spw":Lcom/nuance/swype/input/SpeechWrapper;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/nuance/swype/input/SpeechWrapper;->isStreamingDictation()Z

    move-result v3

    if-nez v3, :cond_5

    .line 987
    :cond_4
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v3}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 988
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v3}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 1022
    .end local v2    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isEmojiKeyboardShown()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1023
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->dismissPopupKeyboard()V

    .line 1025
    :cond_6
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v3, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v3, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isNumMode()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v3, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isEditMode()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1029
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->hidePopupCandidatesView()V

    .line 1030
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1033
    :cond_7
    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShownFuntionBar:Z

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/FunctionBarListView;->isFunctionBarShowing()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1038
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShownFuntionBar:Z

    .line 1044
    :cond_8
    :goto_2
    return-void

    .end local v0    # "cursorChanged":Z
    :cond_9
    move v0, v4

    .line 979
    goto :goto_0

    .line 990
    .restart local v0    # "cursorChanged":Z
    .restart local v2    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 991
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_5

    .line 992
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_1

    .line 998
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    :cond_b
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    .line 999
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    .line 1000
    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v2

    .line 1001
    .restart local v2    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/nuance/swype/input/SpeechWrapper;->isStreamingDictation()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1002
    :cond_c
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v5}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v5

    if-lez v5, :cond_f

    .line 1003
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v5}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 1004
    iput-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 1005
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1006
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1007
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateCandidatesList()V

    .line 1009
    :cond_d
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1010
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showHandWritingView(Z)V

    .line 1018
    :cond_e
    :goto_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->clearArcs()V

    .line 1019
    iput-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    goto/16 :goto_1

    .line 1013
    :cond_f
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1014
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_e

    .line 1015
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_3

    .line 1041
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    :cond_10
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1042
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateCandidatesList()V

    goto :goto_2
.end method
