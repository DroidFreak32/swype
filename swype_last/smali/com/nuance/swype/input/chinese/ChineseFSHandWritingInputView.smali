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

.field static final MSG_DELAY_RECOGNIZER:I = 0x1

.field static final MSG_DELAY_RECOGNIZER_ADD_STROKE:I = 0x2

.field private static final MSG_DELAY_SHOWING_FULLSCREEN:I = 0x1

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

.field private mSelectionAreaOption:I

.field protected mSelectionHeight:I

.field private mSettingsOn:Z

.field private mShowFunctionBar:Z

.field private mShownFuntionBar:Z

.field public mStringHandWriting123Mode:Ljava/lang/String;

.field public mStringHandWritingABCMode:Ljava/lang/String;

.field private mWordListHeight:I

.field private mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

.field private mWritingOrRecognizing:Z

.field popupViewCallback:Landroid/os/Handler$Callback;

.field private symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    const-string/jumbo v0, "ChineseFSHandWritingInputView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 104
    const/16 v0, 0x64

    sput v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->CHINESE_CATEGORY:I

    .line 105
    const/16 v0, 0x65

    sput v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->ALPHA_CATEGORY:I

    .line 106
    const/16 v0, 0x66

    sput v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->SYMBOL_CATEGORY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    iput v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordListHeight:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupCandidateListShowable:Z

    .line 109
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShownFuntionBar:Z

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    .line 121
    iput v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionHeight:I

    .line 122
    iput v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardHeight:I

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRows:Ljava/util/List;

    .line 129
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWritingOrRecognizing:Z

    .line 143
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;-><init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->handlerCallback:Landroid/os/Handler$Callback;

    .line 157
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    .line 783
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$2;-><init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->popupViewCallback:Landroid/os/Handler$Callback;

    .line 807
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->popupViewCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    .line 1256
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;-><init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->fsHandlerCallback:Landroid/os/Handler$Callback;

    .line 1340
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->fsHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    .line 1346
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$4;-><init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->delayRecognizeCallback:Landroid/os/Handler$Callback;

    .line 1367
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->delayRecognizeCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    .line 165
    new-instance v0, Lcom/nuance/swype/input/Composition;

    invoke-direct {v0}, Lcom/nuance/swype/input/Composition;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 167
    return-void
.end method

.method private acceptCurrentActiveWord()V
    .registers 2

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isValidBuild()Z

    move-result v0

    if-nez v0, :cond_7

    .line 751
    :goto_6
    return-void

    .line 733
    :cond_7
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v0, :cond_10

    .line 734
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys()Z

    .line 736
    :cond_10
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_19

    .line 737
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 739
    :cond_19
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_25

    .line 740
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 741
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 744
    :cond_25
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    if-eqz v0, :cond_2e

    .line 745
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 747
    :cond_2e
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_37

    .line 748
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 750
    :cond_37
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->clearArcs()V

    goto :goto_6
.end method

.method private acceptCurrentDefaultWord()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 810
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    .line 811
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v1, :cond_35

    .line 812
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v1, v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->noteSelectedCandidate(I)Z

    .line 813
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 814
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 815
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 816
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 817
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 819
    :cond_35
    const/4 v0, 0x1

    .line 824
    :goto_36
    return v0

    .line 821
    :cond_37
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentActiveWord()V

    goto :goto_36
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showDelayFullScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/chinese/ChineseHandWritingView;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupCandidateListShowable:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->loadKeyboardGesture()V

    return-void
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->performDelayRecognition()V

    return-void
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->performDelayRecognitionStroke()V

    return-void
.end method

.method static synthetic access$1500(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->closeGridCanditesPopup()V

    return-void
.end method

.method static synthetic access$1600(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showFullScreenHandWritingView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridViewFunctionButtonPressed:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridViewFunctionButtonPressed:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopupDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setSpeechViewHost()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;C)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
    .param p1, "x1"    # C

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->handleChar(C)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Ljava/lang/CharSequence;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->handleText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->clearArcs()V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateCandidatesList()V

    return-void
.end method

.method private addDigitOnlyCategory()V
    .registers 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-nez v0, :cond_5

    .line 592
    :goto_4
    return-void

    .line 590
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addNumberOnlyCategory()V

    .line 591
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    goto :goto_4
.end method

.method private addFunctionBarItem()V
    .registers 4

    .prologue
    .line 2305
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 2306
    .local v0, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getLanguageOption()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mLanguageOptionOn:Z

    .line 2307
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getSettings()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSettingsOn:Z

    .line 2308
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getInputMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mInputModeOn:Z

    .line 2309
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getQuickToggle()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mQuickToggleOn:Z

    .line 2310
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getEditKeyboard()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mEditKeyboardOn:Z

    .line 2311
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getNumberKeyboard()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mNumberKeyboardOn:Z

    .line 2312
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getThemes()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mThemesOn:Z

    .line 2313
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getAddOnDictionaries()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mAddOnDictionariesOn:Z

    .line 2314
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getChineseSettings()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseSettingsOn:Z

    .line 2315
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getEmojiOnFunctionBar()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mEmojiFunctionBarOn:Z

    .line 2318
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSettingsOn:Z

    if-eqz v1, :cond_4f

    .line 2319
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 2322
    :cond_4f
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mLanguageOptionOn:Z

    if-eqz v1, :cond_5a

    .line 2323
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 2326
    :cond_5a
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mInputModeOn:Z

    if-eqz v1, :cond_65

    .line 2327
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 2331
    :cond_65
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v1

    if-nez v1, :cond_89

    .line 2332
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mEditKeyboardOn:Z

    if-eqz v1, :cond_7e

    .line 2333
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 2336
    :cond_7e
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mNumberKeyboardOn:Z

    if-eqz v1, :cond_89

    .line 2337
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 2341
    :cond_89
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mThemesOn:Z

    if-eqz v1, :cond_94

    .line 2342
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 2345
    :cond_94
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mEmojiFunctionBarOn:Z

    if-eqz v1, :cond_9f

    .line 2346
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x76

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 2349
    :cond_9f
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseSettingsOn:Z

    if-eqz v1, :cond_aa

    .line 2350
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x71

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 2353
    :cond_aa
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mAddOnDictionariesOn:Z

    if-eqz v1, :cond_b5

    .line 2354
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x70

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 2357
    :cond_b5
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x73

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 2359
    return-void
.end method

.method private cancelCurrentDefaultWord()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 755
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v1

    if-lez v1, :cond_28

    .line 756
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->clearCurrentInline()V

    .line 757
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v1, :cond_1f

    .line 758
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 760
    :cond_1f
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 761
    const/4 v0, 0x1

    .line 764
    :cond_28
    return v0
.end method

.method private clearArcs()V
    .registers 2

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_9

    .line 1206
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->clearArcs()V

    .line 1208
    :cond_9
    return-void
.end method

.method private clearLinePath()V
    .registers 2

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_9

    .line 1781
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->clearLinePath()V

    .line 1783
    :cond_9
    return-void
.end method

.method private closeGridCanditesPopup()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1155
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->hidePopupCandidatesView()V

    .line 1156
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1157
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-eqz v1, :cond_13

    .line 1158
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showPhraseListView()V

    .line 1160
    :cond_13
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1161
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_33

    .line 1162
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 1163
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isMiniKeyboardMode()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isDockMiniKeyboardMode()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1164
    :cond_2e
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    .line 1165
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isOnceAction:Z

    .line 1168
    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_33
    iput v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    .line 1169
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v1, :cond_3e

    .line 1170
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setPointStatus(I)V

    .line 1172
    :cond_3e
    return-void
.end method

.method private getContextCandidates()V
    .registers 8

    .prologue
    const/4 v6, 0x7

    .line 828
    const/4 v0, 0x0

    .line 829
    .local v0, "i":I
    const/4 v1, 0x1

    .line 830
    .local v1, "success":Z
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 831
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 833
    :cond_d
    :goto_d
    const/16 v3, 0x14

    if-ge v0, v3, :cond_4a

    if-eqz v1, :cond_4a

    .line 834
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 835
    .local v2, "word":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v0, v2, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->getWord(ILjava/lang/StringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v1

    .line 836
    if-eqz v1, :cond_d

    .line 838
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v3, v6, :cond_3e

    .line 840
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v3, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 844
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 842
    :cond_3e
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v3, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3b

    .line 847
    .end local v2    # "word":Ljava/lang/StringBuilder;
    :cond_4a
    return-void
.end method

.method private getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "candidate"    # Ljava/lang/CharSequence;

    .prologue
    .line 2413
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2414
    .local v0, "cand":Ljava/lang/String;
    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2415
    .local v1, "index":I
    if-gtz v1, :cond_d

    .line 2418
    .end local p1    # "candidate":Ljava/lang/CharSequence;
    :goto_c
    return-object p1

    .restart local p1    # "candidate":Ljava/lang/CharSequence;
    :cond_d
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_c
.end method

.method private getPureCandidates(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2422
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 2423
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2424
    .local v1, "pureCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v2, :cond_1c

    .line 2425
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2424
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2428
    :cond_1c
    return-object v1
.end method

.method private handleAutoPunct()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1495
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1496
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_8

    .line 1505
    :goto_7
    return-void

    .line 1500
    :cond_8
    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1502
    const-string/jumbo v0, "\u3002"

    .line 1504
    .local v0, "autopunct":Ljava/lang/CharSequence;
    invoke-interface {v1, v0, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_7
.end method

.method private handleBackspace()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 676
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->cancelCurrentDefaultWord()Z

    move-result v0

    if-nez v0, :cond_14

    .line 677
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->isFunctionBarDisabledOrZeroItem()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 681
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 692
    :cond_14
    :goto_14
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideChineseListAndShowFunctionBar()V

    .line 693
    const/4 v0, 0x1

    return v0

    .line 686
    :cond_19
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isCandidateListEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 687
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    goto :goto_14
.end method

.method private handleChar(C)V
    .registers 4
    .param p1, "ch"    # C

    .prologue
    const/16 v1, 0x8

    .line 1211
    const/16 v0, 0xd

    if-ne p1, v0, :cond_25

    .line 1212
    const/16 p1, 0xa

    .line 1217
    :cond_8
    :goto_8
    if-ne p1, v1, :cond_2c

    .line 1218
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->handleBackspace()Z

    .line 1225
    :goto_d
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_19

    .line 1226
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 1230
    :cond_19
    if-eq p1, v1, :cond_24

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1231
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateCandidatesList()V

    .line 1233
    :cond_24
    return-void

    .line 1213
    :cond_25
    const/16 v0, 0x9

    if-ne p1, v0, :cond_8

    .line 1214
    const/16 p1, 0x20

    goto :goto_8

    .line 1219
    :cond_2c
    const/16 v0, 0x20

    if-ne p1, v0, :cond_34

    .line 1220
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->handleSpace()V

    goto :goto_d

    .line 1222
    :cond_34
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 1223
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->sendKeyChar(C)V

    goto :goto_d
.end method

.method private handleSpace()V
    .registers 1

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 618
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->sendSpace()V

    .line 619
    return-void
.end method

.method private handleText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 553
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 554
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 555
    return-void
.end method

.method private hideChineseListAndShowFunctionBar()V
    .registers 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_9

    .line 771
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 773
    :cond_9
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-eqz v0, :cond_22

    .line 774
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->clear()V

    .line 775
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hidePhraseListView()V

    .line 776
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showFunctionBarListView()V

    .line 777
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShownFuntionBar:Z

    .line 778
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 780
    :cond_22
    return-void
.end method

.method private hideHowToUseToast()V
    .registers 1

    .prologue
    .line 348
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 349
    return-void
.end method

.method private isIntegratedHandwriting()Z
    .registers 2

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 1490
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndIntegratedEnabled()Z

    move-result v0

    .line 1491
    return v0
.end method

.method private isPendingRecognizeMessage()Z
    .registers 3

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private isPendingRecognizeStrokeMessage()Z
    .registers 3

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private performDelayRecognition()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 1414
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v6, :cond_f1

    .line 1415
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isIntegratedHandwriting()Z

    move-result v6

    if-nez v6, :cond_71

    .line 1416
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getWidth()I

    move-result v5

    .line 1418
    .local v5, "writingPadWidth":I
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    .line 1419
    iget v6, v6, Landroid/graphics/Point;->x:I

    .line 1424
    div-int/lit8 v8, v5, 0x2

    if-ge v6, v8, :cond_ba

    .line 1425
    sget v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->ALPHA_CATEGORY:I

    .line 1431
    .local v0, "category":I
    :goto_22
    sget v6, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->CHINESE_CATEGORY:I

    if-eq v0, v6, :cond_55

    .line 1432
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_27
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_55

    .line 1433
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 1434
    .local v3, "pt":Landroid/graphics/Point;
    iget v6, v3, Landroid/graphics/Point;->x:I

    if-nez v6, :cond_3f

    iget v6, v3, Landroid/graphics/Point;->y:I

    if-eqz v6, :cond_be

    .line 1437
    :cond_3f
    iget v6, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v8, v5, 0x2

    if-le v6, v8, :cond_49

    sget v6, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->ALPHA_CATEGORY:I

    if-eq v0, v6, :cond_53

    :cond_49
    iget v6, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v8, v5, 0x2

    if-ge v6, v8, :cond_be

    sget v6, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->SYMBOL_CATEGORY:I

    if-ne v0, v6, :cond_be

    .line 1439
    :cond_53
    sget v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->CHINESE_CATEGORY:I

    .line 1445
    .end local v2    # "i":I
    .end local v3    # "pt":Landroid/graphics/Point;
    :cond_55
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v6, :cond_71

    .line 1446
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->clearCategory()V

    .line 1447
    sget v6, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->CHINESE_CATEGORY:I

    if-ne v0, v6, :cond_c2

    .line 1448
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addOnlyTextCategory()V

    .line 1449
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    .line 1458
    :cond_6c
    :goto_6c
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->applyChangedSettings()V

    .line 1461
    .end local v0    # "category":I
    .end local v5    # "writingPadWidth":I
    :cond_71
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v6, :cond_f1

    .line 1462
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isIntegratedHandwriting()Z

    move-result v6

    if-nez v6, :cond_ec

    .line 1463
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->startArcsAddingSequence()V

    .line 1464
    const/4 v4, 0x0

    .line 1465
    .local v4, "start":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_82
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_e7

    .line 1466
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-nez v6, :cond_b7

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-nez v6, :cond_b7

    .line 1468
    if-lez v2, :cond_e5

    add-int/lit8 v1, v2, -0x1

    .line 1469
    .local v1, "end":I
    :goto_a6
    if-ltz v4, :cond_b5

    if-ge v4, v1, :cond_b5

    .line 1470
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v8, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8, v9, v9}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 1473
    :cond_b5
    add-int/lit8 v4, v2, 0x1

    .line 1465
    .end local v1    # "end":I
    :cond_b7
    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    .line 1427
    .end local v2    # "i":I
    .end local v4    # "start":I
    .restart local v5    # "writingPadWidth":I
    :cond_ba
    sget v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->SYMBOL_CATEGORY:I

    .restart local v0    # "category":I
    goto/16 :goto_22

    .line 1432
    .restart local v2    # "i":I
    .restart local v3    # "pt":Landroid/graphics/Point;
    :cond_be
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_27

    .line 1450
    .end local v2    # "i":I
    .end local v3    # "pt":Landroid/graphics/Point;
    :cond_c2
    sget v6, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->ALPHA_CATEGORY:I

    if-ne v0, v6, :cond_d1

    .line 1451
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addOnlyLatinLetterCategory()V

    .line 1452
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    goto :goto_6c

    .line 1453
    :cond_d1
    sget v6, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->SYMBOL_CATEGORY:I

    if-ne v0, v6, :cond_6c

    .line 1454
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addDigitsAndSymbolsOnlyCategory()V

    .line 1455
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addPunctuationCategory()V

    .line 1456
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    goto :goto_6c

    .end local v0    # "category":I
    .end local v5    # "writingPadWidth":I
    .restart local v2    # "i":I
    .restart local v4    # "start":I
    :cond_e5
    move v1, v7

    .line 1468
    goto :goto_a6

    .line 1476
    :cond_e7
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6, v9}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 1478
    .end local v2    # "i":I
    .end local v4    # "start":I
    :cond_ec
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->endArcsAddingSequence()V

    .line 1482
    :cond_f1
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWritingOrRecognizing:Z

    .line 1483
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iget-object v6, v6, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v6}, Lcom/nuance/swype/input/FaddingStrokeQueue;->stopFading()V

    .line 1484
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1485
    return-void
.end method

.method private performDelayRecognitionStroke()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1390
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isIntegratedHandwriting()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1410
    :goto_7
    return-void

    .line 1393
    :cond_8
    const/4 v2, 0x0

    .line 1394
    .local v2, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_48

    .line 1395
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-nez v3, :cond_43

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-nez v3, :cond_43

    .line 1397
    if-lez v1, :cond_46

    add-int/lit8 v0, v1, -0x1

    .line 1398
    .local v0, "end":I
    :goto_2e
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v3, :cond_41

    if-ltz v2, :cond_41

    if-ge v2, v0, :cond_41

    .line 1399
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v4, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 1401
    :cond_41
    add-int/lit8 v2, v1, 0x1

    .line 1394
    .end local v0    # "end":I
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1397
    :cond_46
    const/4 v0, 0x0

    goto :goto_2e

    .line 1405
    :cond_48
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v3, :cond_51

    .line 1406
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 1409
    :cond_51
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_7
.end method

.method private postDelayResumeSpeech()V
    .registers 5

    .prologue
    const/16 v1, 0xb

    .line 326
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 327
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    :cond_f
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 330
    return-void
.end method

.method private postHowToUseToastMsg()V
    .registers 5

    .prologue
    .line 344
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 345
    return-void
.end method

.method private processPendingRecognizing()V
    .registers 3

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1379
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->performDelayRecognition()V

    .line 1380
    return-void
.end method

.method private removeDelayRecognitionMsg()V
    .registers 3

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1371
    return-void
.end method

.method private removeDelayRecognitionStroke()V
    .registers 3

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1383
    return-void
.end method

.method private removeHowToUseToastMsg()V
    .registers 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 353
    return-void
.end method

.method private resetWrite()V
    .registers 3

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1842
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1844
    :cond_9
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->clearArcs()V

    .line 1845
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_16

    .line 1846
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setNewSession(Z)V

    .line 1848
    :cond_16
    return-void
.end method

.method private setKeyboardForTextEntry(Lcom/nuance/swype/input/InputFieldInfo;)V
    .registers 12
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/16 v9, 0x64

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 358
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 359
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v8

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v4

    if-nez v4, :cond_75

    move v4, v5

    .line 358
    :goto_19
    invoke-virtual {v7, p1, v8, v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;Z)Lcom/nuance/swype/input/XT9Keyboard;

    .line 360
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNameField()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 361
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v4, v9, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setAttribute(II)Z

    .line 368
    :goto_27
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 369
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 370
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->addDigitOnlyCategory()V

    .line 377
    :goto_33
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    .line 378
    if-eqz v4, :cond_74

    .line 379
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 380
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_42
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_74

    .line 381
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 382
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const v5, 0xaa3b

    if-ne v4, v5, :cond_93

    .line 383
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_74

    .line 384
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 385
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltIconMinHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 386
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltPreMinHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 388
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 394
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v1    # "i":I
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_74
    return-void

    :cond_75
    move v4, v6

    .line 359
    goto :goto_19

    .line 364
    :cond_77
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v4, v9, v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setAttribute(II)Z

    goto :goto_27

    .line 372
    :cond_7d
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 373
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/input/InputMethods;->addTextCategory(Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 374
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    goto :goto_33

    .line 380
    .restart local v1    # "i":I
    .restart local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .restart local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_93
    add-int/lit8 v1, v1, 0x1

    goto :goto_42
.end method

.method private showCharacterListView()V
    .registers 2

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1047
    :cond_c
    :goto_c
    return-void

    .line 1046
    :cond_d
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showPopupCandidatesView(Ljava/util/List;)V

    goto :goto_c
.end method

.method private showContextPopupListView()V
    .registers 3

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1040
    :cond_c
    :goto_c
    return-void

    .line 1039
    :cond_d
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showPopupCandidatesView(Ljava/util/List;Ljava/util/List;)V

    goto :goto_c
.end method

.method private showDelayFullScreen()V
    .registers 2

    .prologue
    .line 1767
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1769
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1770
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showHandWritingView()V

    .line 1771
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->showStartupMessage()V

    .line 1777
    :cond_14
    :goto_14
    return-void

    .line 1775
    :cond_15
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->postDelayShowingFullScreenMsg()V

    goto :goto_14
.end method

.method private showFullScreenHandWritingView()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 1697
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1733
    :goto_8
    return-void

    .line 1701
    :cond_9
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v7

    if-eqz v7, :cond_73

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    .line 1702
    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEHandlerManager;->statusBarHeight()I

    move-result v4

    .line 1703
    .local v4, "status_bar_height":I
    :goto_1d
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1704
    .local v1, "display":Landroid/util/DisplayMetrics;
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1705
    .local v5, "w":I
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1706
    sub-int v3, v7, v4

    .line 1707
    .local v3, "fullHandWritingScreenYOffset":I
    move v2, v3

    .line 1708
    .local v2, "fullHandWritingScreenHeight":I
    sget-object v7, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "showFullScreenHandWritingView...fullHandWritingScreenHeight: "

    aput-object v9, v8, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1709
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 1710
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isMiniKeyboardMode()Z

    move-result v7

    if-nez v7, :cond_5d

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isDockMiniKeyboardMode()Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 1711
    :cond_5d
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v7, :cond_8e

    .line 1712
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 1713
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_85

    .line 1714
    iget-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isOnceAction:Z

    if-eqz v7, :cond_75

    .line 1715
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->postDelayShowingFullScreenMsg()V

    .line 1716
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isOnceAction:Z

    goto :goto_8

    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    .end local v1    # "display":Landroid/util/DisplayMetrics;
    .end local v2    # "fullHandWritingScreenHeight":I
    .end local v3    # "fullHandWritingScreenYOffset":I
    .end local v4    # "status_bar_height":I
    .end local v5    # "w":I
    :cond_73
    move v4, v6

    .line 1702
    goto :goto_1d

    .line 1719
    .restart local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    .restart local v1    # "display":Landroid/util/DisplayMetrics;
    .restart local v2    # "fullHandWritingScreenHeight":I
    .restart local v3    # "fullHandWritingScreenYOffset":I
    .restart local v4    # "status_bar_height":I
    .restart local v5    # "w":I
    :cond_75
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getRootViewHeight()I

    move-result v7

    if-gtz v7, :cond_7f

    .line 1720
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->postDelayShowingFullScreenMsg()V

    goto :goto_8

    .line 1723
    :cond_7f
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getRootViewHeight()I

    move-result v7

    sub-int v2, v3, v7

    .line 1725
    :cond_85
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v7

    sub-int/2addr v3, v7

    .line 1728
    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_8e
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    neg-int v8, v3

    invoke-virtual {v7, v6, v8, v5, v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->showFullScreenHandWritingFrame(IIII)V

    .line 1730
    invoke-virtual {p0, v10}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->changeAltIconOfSwitchingLayout(Z)V

    goto/16 :goto_8
.end method

.method private showPopupCandidatesView(Ljava/util/List;)V
    .registers 3
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
    .line 1508
    .local p1, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showPopupCandidatesView(Ljava/util/List;Ljava/util/List;)V

    .line 1509
    return-void
.end method

.method private showPopupCandidatesView(Ljava/util/List;Ljava/util/List;)V
    .registers 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
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
    .line 1514
    .local p1, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p2, "aWordSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1625
    :cond_8
    :goto_8
    return-void

    .line 1518
    :cond_9
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getPureCandidates(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopupDataList:Ljava/util/List;

    .line 1520
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideFullScreenHandWritingView(Z)V

    .line 1521
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->getHeight()I

    move-result v1

    mul-int/lit8 v5, v1, 0x5

    .line 1522
    .local v5, "height":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->getWidth()I

    move-result v11

    .line 1523
    .local v11, "width":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v1, v11, :cond_5c

    .line 1524
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "recreate candidatesPopup....candidatesPopup.getMeasuredWidth(): "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 1525
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "keyboard width: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1524
    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1526
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 1528
    :cond_5c
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    if-nez v1, :cond_f9

    .line 1530
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 1531
    .local v9, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 1532
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 1533
    sget v1, Lcom/nuance/swype/input/R$layout;->candidates_popup:I

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 1534
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 1537
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v10, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1540
    .local v10, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1541
    const/high16 v1, -0x80000000

    invoke-static {v11, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1542
    .local v12, "widthMeasureSpec":I
    const/high16 v1, -0x80000000

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1543
    .local v8, "heightMeasureSpec":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v1, v12, v8}, Landroid/view/View;->measure(II)V

    .line 1545
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 1546
    .local v7, "closeButton":Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$drawable;->keyboard_popup_btn_close_cjk:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1547
    new-instance v1, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;-><init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    invoke-virtual {v7, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1557
    new-instance v1, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$6;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$6;-><init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    invoke-virtual {v7, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1579
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->scroll_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    .line 1580
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    .line 1584
    .end local v7    # "closeButton":Landroid/widget/ImageButton;
    .end local v8    # "heightMeasureSpec":I
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "widthMeasureSpec":I
    :cond_f9
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1585
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 1586
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setWordSource(Ljava/util/List;)V

    .line 1587
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRows:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopupDataList:Ljava/util/List;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setGridCandidates(Ljava/util/List;Ljava/util/List;I)V

    .line 1589
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$xml;->kbd_chinese_popup_template:I

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRows:Ljava/util/List;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    .line 1590
    invoke-virtual {v4}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/util/List;IILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 1591
    .local v0, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1592
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setIme(Lcom/nuance/swype/input/IME;)V

    .line 1593
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1595
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    new-instance v2, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;

    invoke-direct {v2, p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;-><init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Lcom/nuance/swype/input/KeyboardEx;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 1621
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v11, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1622
    .local v10, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1623
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->showPopupCandidatesView(Landroid/view/View;)V

    .line 1624
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setCandidatesViewShown(Z)V

    goto/16 :goto_8
.end method

.method private updateCandidatesList()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 857
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIsIMEActive:Z

    if-nez v1, :cond_13

    .line 859
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v1, :cond_12

    .line 860
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 861
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 938
    :cond_12
    :goto_12
    return-void

    .line 865
    :cond_13
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v1, :cond_12

    .line 868
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 871
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    if-nez v1, :cond_12

    .line 874
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 875
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isValidBuild()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 878
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v1, :cond_a5

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v1

    if-eqz v1, :cond_a5

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v1, :cond_a5

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a5

    .line 880
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 881
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_48
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_63

    .line 882
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 881
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 884
    :cond_63
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_74

    .line 885
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getPureCandidates(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-virtual {v1, v2, v4, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;ILjava/util/List;)V

    .line 915
    .end local v0    # "i":I
    :cond_74
    :goto_74
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-eqz v1, :cond_7d

    .line 916
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hideSpellPrefixSuffixList()V

    .line 919
    :cond_7d
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-nez v1, :cond_89

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_12c

    :cond_89
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v1, :cond_12c

    .line 920
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/FunctionBarListView;->clear()V

    .line 921
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-eqz v1, :cond_a0

    .line 922
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hideFunctionBarListView()V

    .line 923
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showPhraseListView()V

    .line 937
    :cond_a0
    :goto_a0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    goto/16 :goto_12

    .line 888
    :cond_a5
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-eqz v1, :cond_ae

    .line 889
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->clearSpellPrefixSuffixListView()V

    .line 891
    :cond_ae
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_d9

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isCandidateListEmpty()Z

    move-result v1

    if-eqz v1, :cond_d9

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    if-eqz v1, :cond_d9

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    .line 893
    invoke-virtual {v1}, Lcom/nuance/swype/input/FunctionBarListView;->isFunctionBarDisabledOrZeroItem()Z

    move-result v1

    if-nez v1, :cond_d9

    .line 894
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setContext(Ljava/lang/CharSequence;)Z

    .line 895
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 896
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_74

    .line 898
    :cond_d9
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v1, :cond_e9

    .line 899
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/Composition;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setContext(Ljava/lang/CharSequence;)Z

    .line 901
    :cond_e9
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContextCandidates()V

    .line 903
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_74

    .line 905
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_fd
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_121

    .line 906
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_11e

    .line 907
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 905
    :cond_11e
    add-int/lit8 v0, v0, 0x1

    goto :goto_fd

    .line 911
    :cond_121
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-virtual {v1, v2, v4, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;ILjava/util/List;)V

    goto/16 :goto_74

    .line 926
    .end local v0    # "i":I
    :cond_12c
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_135

    .line 927
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 929
    :cond_135
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-eqz v1, :cond_a0

    .line 930
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->clear()V

    .line 931
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hidePhraseListView()V

    .line 932
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hideSpellPrefixSuffixList()V

    .line 933
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShowFunctionBar:Z

    .line 934
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showFunctionBarListView()V

    goto/16 :goto_a0
.end method


# virtual methods
.method public changeAltIconOfSwitchingLayout(Z)V
    .registers 8
    .param p1, "aFullScreen"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 1792
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    .line 1793
    if-eqz v4, :cond_63

    .line 1794
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 1795
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_63

    .line 1796
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1797
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const v5, 0xaa3b

    if-ne v4, v5, :cond_43

    .line 1798
    if-eqz p1, :cond_46

    .line 1799
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_40

    .line 1800
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1801
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltIconMinHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 1803
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltPreMinHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 1815
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    :cond_40
    :goto_40
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 1795
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1807
    :cond_46
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_40

    .line 1808
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1809
    .restart local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltIconMaxHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 1811
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltPreMaxHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_40

    .line 1825
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v1    # "i":I
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_63
    return-void
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V
    .registers 8
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "t9write"    # Lcom/nuance/input/swypecorelib/T9Write;
    .param p4, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 172
    check-cast p2, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .end local p2    # "xt9coreinput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    iput-object p2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .line 173
    check-cast p3, Lcom/nuance/input/swypecorelib/T9WriteChinese;

    .end local p3    # "t9write":Lcom/nuance/input/swypecorelib/T9Write;
    iput-object p3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    .line 174
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 175
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 177
    return-void
.end method

.method public createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;
    .registers 6
    .param p1, "onSelectListener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1630
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v2, :cond_6

    .line 1654
    :goto_5
    return-object v1

    .line 1634
    :cond_6
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-nez v2, :cond_65

    .line 1636
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 1637
    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1636
    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1638
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 1639
    sget v2, Lcom/nuance/swype/input/R$layout;->chinese_handwriting_candidates:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    .line 1641
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 1642
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->initViews()V

    .line 1643
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->getCJKCandidatesListView()Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 1644
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    sget v2, Lcom/nuance/swype/input/R$id;->functionbar:I

    .line 1645
    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/FunctionBarListView;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    .line 1646
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isValidBuild()Z

    move-result v1

    if-nez v1, :cond_65

    .line 1647
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showLeftArrow(Z)V

    .line 1651
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_65
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V

    .line 1652
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    .line 1653
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    new-instance v2, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v2, v3, p0}, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->setOnFunctionBarListener(Lcom/nuance/swype/input/FunctionBarListView$OnFunctionBarListener;)V

    .line 1654
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    goto :goto_5
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    if-eqz v0, :cond_c

    .line 182
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->hide()V

    .line 183
    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    .line 185
    :cond_c
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->destroy()V

    .line 186
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 187
    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 188
    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .line 189
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->cancelQueryTask()V

    .line 190
    return-void
.end method

.method public finishInput()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 405
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 407
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->removeHowToUseToastMsg()V

    .line 408
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideHowToUseToast()V

    .line 410
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWritingOrRecognizing:Z

    .line 411
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isOnceAction:Z

    .line 412
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIsIMEActive:Z

    .line 413
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 415
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->dismissPopupKeyboard()V

    .line 416
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideFullScreenHandWritingView(Z)V

    .line 417
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->recycleBitmap()V

    .line 418
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->clear()V

    .line 420
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->resetWrite()V

    .line 426
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 427
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->finishSession()V

    .line 429
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_42

    .line 430
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 431
    iput-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 433
    :cond_42
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 435
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    if-eqz v0, :cond_50

    .line 436
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->hidePopupCandidatesView()V

    .line 438
    :cond_50
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    .line 439
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v0, :cond_57

    .line 447
    :goto_56
    return-void

    .line 442
    :cond_57
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->dimissRemoveUdbWordDialog()V

    .line 443
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->finishSession()V

    .line 445
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->unwrapTouchEvent(Landroid/view/View;)V

    .line 446
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v0, v3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V

    goto :goto_56
.end method

.method public flushCurrentActiveWord()V
    .registers 2

    .prologue
    .line 722
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->cancelQueryTask()V

    .line 723
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentActiveWord()V

    .line 724
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->dimissRemoveUdbWordDialog()V

    .line 725
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideFullScreenHandWritingView(Z)V

    .line 726
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->clearLinePath()V

    .line 727
    return-void
.end method

.method public getCurrentScreenMode()Z
    .registers 2

    .prologue
    .line 2252
    const/4 v0, 0x0

    return v0
.end method

.method protected getExtendedEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 5
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 2365
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    .line 2366
    .local v0, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    if-eqz v0, :cond_37

    .line 2367
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v1, v2, :cond_37

    .line 2368
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v1, v2, :cond_22

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 2369
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-nez v1, :cond_37

    .line 2370
    :cond_22
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v1, v2, :cond_36

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 2371
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-nez v1, :cond_37

    .line 2375
    .end local p1    # "me":Landroid/view/MotionEvent;
    :cond_36
    :goto_36
    return-object p1

    .restart local p1    # "me":Landroid/view/MotionEvent;
    :cond_37
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->getExtendedEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_36
.end method

.method protected getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;
    .registers 4

    .prologue
    .line 2403
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;

    move-result-object v0

    .line 2405
    .local v0, "rect":Landroid/graphics/Rect;
    if-eqz v0, :cond_18

    .line 2406
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    .line 2407
    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->getMeasuredHeight()I

    move-result v1

    :goto_14
    sub-int v1, v2, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2409
    :cond_18
    return-object v0

    .line 2407
    :cond_19
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getWordCandidateListContainer()Landroid/view/View;
    .registers 2

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    return-object v0
.end method

.method protected handleBackspace(I)Z
    .registers 4
    .param p1, "repeatedCount"    # I

    .prologue
    const/16 v1, 0x8

    .line 699
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 701
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->processPendingRecognizing()V

    .line 702
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_14

    .line 703
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueChar(C)V

    .line 716
    :cond_14
    :goto_14
    const/4 v0, 0x1

    return v0

    .line 705
    :cond_16
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 706
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 710
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_14

    .line 711
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueChar(C)V

    goto :goto_14

    .line 714
    :cond_2c
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->handleBackspace()Z

    goto :goto_14
.end method

.method public handleCharKey(Landroid/graphics/Point;I[IJ)V
    .registers 8
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "eventTime"    # J

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 611
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->processPendingRecognizing()V

    .line 613
    :cond_9
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueChar(C)V

    .line 614
    return-void
.end method

.method public handleClose()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIsIMEActive:Z

    .line 453
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideFullScreenHandWritingView(Z)V

    .line 454
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 455
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->resetWrite()V

    .line 456
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->recycleBitmap()V

    .line 457
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->dimissRemoveUdbWordDialog()V

    .line 458
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 459
    return-void
.end method

.method public handleEmotionKey()V
    .registers 2

    .prologue
    .line 1741
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EMOJI:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 1742
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleEmotionKey()V

    .line 1743
    return-void
.end method

.method public handleKey(IZI)Z
    .registers 6
    .param p1, "primaryCode"    # I
    .param p2, "quickPressed"    # Z
    .param p3, "repeatedCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 487
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideHowToUseToast()V

    .line 491
    sparse-switch p1, :sswitch_data_6e

    .line 526
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    :cond_b
    :goto_b
    return v0

    .line 493
    :sswitch_c
    if-nez p2, :cond_b

    .line 494
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentActiveWord()V

    .line 495
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->startSpeech()V

    goto :goto_b

    .line 499
    :sswitch_15
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->clear()V

    .line 500
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    goto :goto_b

    .line 502
    :sswitch_1f
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->toggleLastKeyboard()V

    goto :goto_b

    .line 505
    :sswitch_25
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v1

    if-nez v1, :cond_69

    .line 506
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideFullScreenHandWritingView(Z)V

    .line 510
    :goto_2e
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    if-eqz v0, :cond_3b

    .line 511
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->hidePopupCandidatesView()V

    .line 513
    :cond_3b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 515
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentActiveWord()V

    .line 516
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 517
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->clearLinePath()V

    .line 518
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 519
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShowFunctionBar:Z

    if-eqz v0, :cond_64

    .line 520
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->clear()V

    .line 521
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hidePhraseListView()V

    .line 522
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showFunctionBarListView()V

    .line 524
    :cond_64
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    goto :goto_b

    .line 508
    :cond_69
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showFullScreenHandWritingView()V

    goto :goto_2e

    .line 491
    nop

    :sswitch_data_6e
    .sparse-switch
        0xb54 -> :sswitch_25
        0xb7b -> :sswitch_15
        0x193f -> :sswitch_c
        0xaa38 -> :sswitch_1f
    .end sparse-switch
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 464
    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_1e

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public handleKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 546
    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_1e

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method protected handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 4
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v0, v0

    if-nez v0, :cond_10

    .line 472
    :cond_b
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 482
    :goto_f
    return v0

    .line 475
    :cond_10
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const v1, 0xaa3b

    if-eq v0, v1, :cond_1d

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v1, 0xff5

    if-ne v0, v1, :cond_2b

    .line 477
    :cond_1d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 478
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hideSpellPrefixSuffixList()V

    .line 479
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->clear()V

    .line 482
    :cond_2b
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_f
.end method

.method public handlePossibleActionAfterResize()V
    .registers 3

    .prologue
    .line 532
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_1e

    .line 533
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 534
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isMiniKeyboardMode()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isDockMiniKeyboardMode()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 535
    :cond_18
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    .line 536
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isOnceAction:Z

    .line 539
    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_1e
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideFullScreenHandWritingView(Z)V

    .line 540
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showFullScreenHandWritingView()V

    .line 541
    return-void
.end method

.method protected handleScrollDown()Z
    .registers 2

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1968
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleFullScreenHW()V

    .line 1969
    const/4 v0, 0x1

    .line 1971
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public handleShiftKey()V
    .registers 2

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->cycleShiftState()V

    .line 1249
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->invalidateKeyboardImage()V

    .line 1250
    return-void
.end method

.method protected handleSpace(ZI)Z
    .registers 11
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 624
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 626
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->processPendingRecognizing()V

    .line 627
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v4, :cond_17

    .line 628
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueChar(C)V

    .line 672
    :cond_17
    :goto_17
    return v7

    .line 630
    :cond_18
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v4, :cond_2f

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 634
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v4, :cond_17

    .line 635
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 636
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateCandidatesList()V

    goto :goto_17

    .line 639
    :cond_2f
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 640
    const/4 v0, 0x1

    .line 644
    .local v0, "addSpace":Z
    if-eqz p1, :cond_7f

    if-ge p2, v6, :cond_7f

    iget-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mAutoPunctuationOn:Z

    if-eqz v4, :cond_7f

    .line 645
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 646
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_7f

    .line 647
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 648
    invoke-interface {v3, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 654
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v2

    .line 655
    .local v2, "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    if-eqz v1, :cond_7c

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v6, :cond_7c

    .line 656
    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 657
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 658
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 660
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->handleAutoPunct()V

    .line 661
    const/4 v0, 0x0

    .line 664
    :cond_7c
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 668
    .end local v1    # "cSeqBefore":Ljava/lang/CharSequence;
    .end local v2    # "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_7f
    if-eqz v0, :cond_17

    .line 669
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->sendSpace()V

    goto :goto_17
.end method

.method public handleUniversalKeyboardResize(I)V
    .registers 3
    .param p1, "keyCode"    # I

    .prologue
    .line 1747
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v0

    if-nez v0, :cond_39

    .line 1748
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideFullScreenHandWritingView(Z)V

    .line 1752
    :goto_a
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->hidePopupCandidatesView()V

    .line 1753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1754
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 1755
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentActiveWord()V

    .line 1756
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1757
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1758
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShowFunctionBar:Z

    if-eqz v0, :cond_35

    .line 1759
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->clear()V

    .line 1760
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hidePhraseListView()V

    .line 1761
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showFunctionBarListView()V

    .line 1763
    :cond_35
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleUniversalKeyboardResize(I)V

    .line 1764
    return-void

    .line 1750
    :cond_39
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showFullScreenHandWritingView()V

    goto :goto_a
.end method

.method protected hideFullScreenHandWritingView(Z)V
    .registers 3
    .param p1, "aFlag"    # Z

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->hideFullScreenHandWritingFrame(Z)V

    .line 1737
    return-void
.end method

.method public isFullScreenHandWritingView()Z
    .registers 2

    .prologue
    .line 2385
    const/4 v0, 0x1

    return v0
.end method

.method public isHandWritingInputView()Z
    .registers 2

    .prologue
    .line 2390
    const/4 v0, 0x1

    return v0
.end method

.method public isLanguageSwitchableOnSpace()Z
    .registers 2

    .prologue
    .line 1992
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v0

    return v0
.end method

.method protected isNormalTextInputMode()Z
    .registers 2

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    return v0
.end method

.method public isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z
    .registers 3
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1876
    const/4 v0, 0x0

    return v0
.end method

.method public isSpeechPopupShowing()Z
    .registers 2

    .prologue
    .line 2267
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->isSpeechViewShowing()Z

    move-result v0

    return v0
.end method

.method public moveCursorToMiddle(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .registers 11
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "text"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2436
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/nuance/swype/input/R$string;->mappings_symbol:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 2437
    .local v3, "mapping":[C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2438
    .local v2, "map":Ljava/lang/StringBuilder;
    array-length v7, v3

    move v5, v6

    :goto_16
    if-ge v5, v7, :cond_20

    aget-char v0, v3, v5

    .line 2439
    .local v0, "c":C
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2438
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 2441
    .end local v0    # "c":C
    :cond_20
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_5e

    .line 2442
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_5f

    .line 2443
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x7d0

    invoke-interface {p1, v7, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2444
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5e

    .line 2445
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {p1, v5, v6}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 2450
    .end local v4    # "s":Ljava/lang/String;
    :cond_5e
    return-void

    .line 2441
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_21
.end method

.method public nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .registers 3
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1851
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    if-eqz v0, :cond_5

    .line 1865
    :goto_4
    return-void

    .line 1854
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1855
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupCandidateListShowable:Z

    if-eqz v0, :cond_1b

    .line 1856
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1857
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showCharacterListView()V

    .line 1864
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->dismissPopupKeyboard()V

    goto :goto_4

    .line 1860
    :cond_1f
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupCandidateListShowable:Z

    if-eqz v0, :cond_1b

    .line 1861
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showContextPopupListView()V

    goto :goto_1b
.end method

.method public onApplicationUnbind()V
    .registers 1

    .prologue
    .line 1881
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->dimissRemoveUdbWordDialog()V

    .line 1882
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onApplicationUnbind()V

    .line 1883
    return-void
.end method

.method public onCandidateLongPressed(ILjava/lang/String;ILcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "wdSource"    # I
    .param p4, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 2035
    packed-switch p3, :pswitch_data_40

    .line 2058
    :cond_3
    :goto_3
    :pswitch_3
    return-void

    .line 2039
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showRemoveUdbWordDialog(Ljava/lang/String;)V

    goto :goto_3

    .line 2042
    :pswitch_8
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v2, p2, v3}, Lcom/nuance/swype/util/ContactUtils;->getContactNumberFromPhoneBook(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_3

    .line 2046
    :pswitch_12
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/EmojiLoader;->isEmoji(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2047
    invoke-virtual {p4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getEmojiInfoList()Ljava/util/List;

    move-result-object v2

    .line 2048
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiInfo;

    .line 2049
    .local v0, "emojiInfo":Lcom/nuance/swype/input/emoji/EmojiInfo;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getEmojis()Ljava/util/Map;

    move-result-object v2

    .line 2050
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2051
    .local v1, "selected_emoji":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v0, v1, v2}, Lcom/nuance/swype/input/InputView;->showSkinTonePopupForCJK(Lcom/nuance/swype/input/emoji/EmojiInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2035
    :pswitch_data_40
    .packed-switch 0x5
        :pswitch_4
        :pswitch_4
        :pswitch_12
        :pswitch_3
        :pswitch_8
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onHandleUdbWordRemoval(Ljava/lang/String;)V
    .registers 9
    .param p1, "word"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1998
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v2, :cond_7d

    .line 1999
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->dlmDelete(Ljava/lang/String;)Z

    move-result v0

    .line 2000
    .local v0, "deleteStatus":Z
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v2, :cond_7d

    .line 2001
    if-eqz v0, :cond_7e

    .line 2003
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2004
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->delete_success:I

    .line 2005
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2006
    .local v1, "removeMgs":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .line 2007
    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 2006
    invoke-static {v2, v1, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 2008
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v2}, Lcom/nuance/swype/input/Composition;->clearCurrentInline()V

    .line 2009
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v2, :cond_5f

    .line 2010
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2011
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 2013
    :cond_5f
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2014
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2015
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateCandidatesList()V

    .line 2017
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->hidePopupCandidatesView()V

    .line 2018
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    .line 2019
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showFullScreenHandWritingView()V

    .line 2020
    iput v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    .line 2021
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v2, v6}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setPointStatus(I)V

    .line 2032
    .end local v0    # "deleteStatus":Z
    .end local v1    # "removeMgs":Ljava/lang/String;
    :cond_7d
    :goto_7d
    return-void

    .line 2023
    .restart local v0    # "deleteStatus":Z
    :cond_7e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2024
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->delete_failed:I

    .line 2025
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2026
    .restart local v1    # "removeMgs":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .line 2027
    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 2026
    invoke-static {v2, v1, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_7d
.end method

.method public onHandleWriteEvent(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V
    .registers 8
    .param p1, "event"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;

    .prologue
    const-wide/16 v4, 0x5

    .line 1178
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_d

    .line 1179
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isValidBuild()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1202
    :goto_c
    return-void

    .line 1183
    :cond_d
    iget v0, p1, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;->mType:I

    packed-switch v0, :pswitch_data_3a

    goto :goto_c

    .line 1185
    :pswitch_13
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c

    .line 1190
    :pswitch_20
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    .line 1191
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1190
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c

    .line 1195
    :pswitch_2d
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    .line 1196
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1195
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c

    .line 1183
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_2d
        :pswitch_20
    .end packed-switch
.end method

.method public onPressMoveCandidate(FFF)V
    .registers 9
    .param p1, "xPos"    # F
    .param p2, "yPos"    # F
    .param p3, "xOffset"    # F

    .prologue
    .line 2069
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

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

    .line 2070
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->touchMoveHandle(FFF)Z

    .line 2071
    return-void
.end method

.method public onPressReleaseCandidate(ILjava/lang/String;I)Z
    .registers 10
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "wdSource"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2060
    sget-object v2, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

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

    .line 2061
    if-eqz p2, :cond_35

    .line 2062
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->setCurrentSkinTone()V

    .line 2063
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->dismissEmojiPopup()V

    .line 2066
    :goto_34
    return v0

    :cond_35
    move v0, v1

    goto :goto_34
.end method

.method public onScrollContentChanged()V
    .registers 2

    .prologue
    .line 2395
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-eqz v0, :cond_9

    .line 2396
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->updateScrollArrowVisibility()V

    .line 2398
    :cond_9
    return-void
.end method

.method public onSpeechViewDismissed()V
    .registers 3

    .prologue
    .line 1982
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1983
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateCandidatesList()V

    .line 1984
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->setVisibility(I)V

    .line 1985
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setHWFrame()V

    .line 1986
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->postDelayShowingFullScreenMsg()V

    .line 1988
    :cond_15
    return-void
.end method

.method public onSpeechViewShowedUp()V
    .registers 2

    .prologue
    .line 1976
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideFullScreenHandWritingView(Z)V

    .line 1977
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 559
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 560
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->processPendingRecognizing()V

    .line 563
    :cond_b
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->isActive()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 565
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 566
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 567
    invoke-interface {v1, p1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 568
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 583
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_24
    return-void

    .line 572
    :cond_25
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isShifted()Z

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v2, :cond_65

    .line 573
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v0

    .line 574
    .local v0, "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 575
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v3, :cond_5f

    .line 576
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v2

    if-nez v2, :cond_5f

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 577
    invoke-interface {p1, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 579
    :cond_5f
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, p1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueText(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 581
    .end local v0    # "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    :cond_65
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, p1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueText(Ljava/lang/CharSequence;)V

    goto :goto_24
.end method

.method public penDown(Landroid/view/View;)V
    .registers 4
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 970
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_b

    .line 971
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FaddingStrokeQueue;->startActionFadingPenDown()V

    .line 975
    :cond_b
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->dismissPopupKeyboard()V

    .line 976
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 977
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->removeDelayRecognitionStroke()V

    .line 979
    if-eqz p1, :cond_47

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eq v0, p1, :cond_47

    .line 980
    instance-of v0, p1, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_47

    .line 981
    check-cast p1, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .end local p1    # "src":Landroid/view/View;
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .line 982
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_47

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isIntegratedHandwriting()Z

    move-result v0

    if-nez v0, :cond_47

    .line 983
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setWidth(I)V

    .line 984
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setHeight(I)V

    .line 985
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->applyChangedSettings()V

    .line 989
    :cond_47
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWritingOrRecognizing:Z

    if-nez v0, :cond_57

    .line 990
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 991
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 992
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateCandidatesList()V

    .line 996
    :cond_57
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_6a

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWritingOrRecognizing:Z

    if-nez v0, :cond_6a

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isIntegratedHandwriting()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 997
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->startArcsAddingSequence()V

    .line 1000
    :cond_6a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWritingOrRecognizing:Z

    .line 1001
    return-void
.end method

.method public penUp(Ljava/util/List;Landroid/view/View;)V
    .registers 8
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

    .line 1004
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_16

    .line 1005
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FaddingStrokeQueue;->startFading()V

    .line 1006
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FaddingStrokeQueue;->startActionFading()V

    .line 1009
    :cond_16
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1010
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_2d

    .line 1011
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isPendingRecognizeStrokeMessage()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1012
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->removeDelayRecognitionStroke()V

    .line 1013
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1021
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_46

    .line 1022
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1023
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 1024
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    .line 1025
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->getRecognizerDelay()I

    move-result v1

    int-to-long v2, v1

    .line 1024
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1031
    :cond_46
    :goto_46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupCandidateListShowable:Z

    .line 1032
    return-void

    .line 1016
    :cond_4a
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2d

    .line 1027
    :cond_50
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    .line 1028
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->getRecognizerDelay()I

    move-result v1

    int-to-long v2, v1

    .line 1027
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_46
.end method

.method public penUp([Lcom/nuance/swype/input/Stroke$Arc;Landroid/view/View;)V
    .registers 4
    .param p1, "arcs"    # [Lcom/nuance/swype/input/Stroke$Arc;
    .param p2, "Src"    # Landroid/view/View;

    .prologue
    .line 1837
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->penUp(Ljava/util/List;Landroid/view/View;)V

    .line 1838
    return-void
.end method

.method public pointInSelectionArea(II)Z
    .registers 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2077
    if-lez p1, :cond_5

    if-gtz p2, :cond_6

    .line 2099
    :cond_5
    :goto_5
    return v4

    .line 2080
    :cond_6
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v5

    if-eqz v5, :cond_4d

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    .line 2081
    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEHandlerManager;->statusBarHeight()I

    move-result v3

    .line 2083
    .local v3, "status_bar_height":I
    :goto_1a
    iget v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordListHeight:I

    if-nez v5, :cond_26

    .line 2084
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    .line 2085
    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->getMeasuredHeight()I

    move-result v5

    iput v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordListHeight:I

    .line 2087
    :cond_26
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$dimen;->key_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2090
    .local v1, "keyboard_height":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2092
    .local v2, "screen_height":I
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->isShown()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 2093
    iget v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordListHeight:I

    sub-int v5, v2, v5

    sub-int/2addr v5, v1

    sub-int v0, v5, v3

    .line 2099
    .local v0, "boundaryHandWritingScreenHeight":I
    :goto_49
    if-lt p2, v0, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    .end local v0    # "boundaryHandWritingScreenHeight":I
    .end local v1    # "keyboard_height":I
    .end local v2    # "screen_height":I
    .end local v3    # "status_bar_height":I
    :cond_4d
    move v3, v4

    .line 2081
    goto :goto_1a

    .line 2096
    .restart local v1    # "keyboard_height":I
    .restart local v2    # "screen_height":I
    .restart local v3    # "status_bar_height":I
    :cond_4f
    sub-int v5, v2, v1

    sub-int v0, v5, v3

    .restart local v0    # "boundaryHandWritingScreenHeight":I
    goto :goto_49
.end method

.method protected postDelayShowingFullScreenMsg()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1828
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1829
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1831
    :cond_e
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1833
    return-void
.end method

.method public prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .registers 3
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1868
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    if-eqz v0, :cond_5

    .line 1873
    :goto_4
    return-void

    .line 1872
    :cond_5
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    goto :goto_4
.end method

.method protected removeAllMessages()V
    .registers 4

    .prologue
    .line 1237
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1238
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1239
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1240
    const/4 v0, 0x1

    .local v0, "msg":I
    :goto_13
    const/16 v1, 0x13

    if-gt v0, v1, :cond_1f

    .line 1241
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1240
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1243
    :cond_1f
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 1244
    return-void
.end method

.method public resetArea(I)V
    .registers 4
    .param p1, "areaOption"    # I

    .prologue
    .line 2228
    const/4 v0, -0x2

    if-ne p1, v0, :cond_a

    .line 2229
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 2234
    :goto_9
    return-void

    .line 2232
    :cond_a
    iput p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    goto :goto_9
.end method

.method protected resumeSpeech()V
    .registers 2

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    if-eqz v0, :cond_7

    .line 1961
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->resumeSpeech()V

    .line 1963
    :cond_7
    return-void
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/CharSequence;
    .param p3, "source"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1050
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v2, :cond_18

    .line 1051
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1052
    .local v1, "wordIndex":I
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v2, :cond_18

    .line 1053
    const/4 v2, -0x1

    if-eq v1, v2, :cond_8a

    .line 1054
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->noteSelectedCandidate(I)Z

    .line 1060
    .end local v1    # "wordIndex":I
    :cond_18
    :goto_18
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1061
    .local v0, "selected_emoji":Ljava/lang/String;
    if-eqz v0, :cond_96

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/EmojiLoader;->isEmoji(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 1062
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getEmojis()Ljava/util/Map;

    move-result-object v2

    .line 1063
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "selected_emoji":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1064
    .restart local v0    # "selected_emoji":Ljava/lang/String;
    if-eqz v0, :cond_90

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    .line 1065
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 1074
    :goto_41
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 1075
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 1076
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v2, :cond_5e

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 1077
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 1078
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->endArcsAddingSequence()V

    .line 1080
    :cond_5e
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1081
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWritingOrRecognizing:Z

    .line 1083
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v2, :cond_76

    .line 1084
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iget-object v2, v2, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v2}, Lcom/nuance/swype/input/FaddingStrokeQueue;->stopFading()V

    .line 1085
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setNewSession(Z)V

    .line 1088
    :cond_76
    iput-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 1089
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1090
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateCandidatesList()V

    .line 1091
    if-eqz v0, :cond_89

    .line 1092
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v0, v2}, Lcom/nuance/swype/input/InputView;->addEmojiInRecentCat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    :cond_89
    return-void

    .line 1056
    .end local v0    # "selected_emoji":Ljava/lang/String;
    .restart local v1    # "wordIndex":I
    :cond_8a
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->noteSelectedCandidate(I)Z

    goto :goto_18

    .line 1067
    .end local v1    # "wordIndex":I
    .restart local v0    # "selected_emoji":Ljava/lang/String;
    :cond_90
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v2, p2}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    goto :goto_41

    .line 1071
    :cond_96
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v2, p2}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    goto :goto_41
.end method

.method public setActiveCandidate(I)V
    .registers 4
    .param p1, "n"    # I

    .prologue
    .line 850
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_1b

    if-ltz p1, :cond_1b

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1b

    .line 852
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 854
    :cond_1b
    return-void
.end method

.method protected setCandidatesViewShown(Z)V
    .registers 4
    .param p1, "shown"    # Z

    .prologue
    .line 596
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setCandidatesViewShown(Z)V

    .line 597
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-nez v0, :cond_8

    .line 605
    :goto_7
    return-void

    .line 600
    :cond_8
    if-eqz p1, :cond_11

    .line 601
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->setVisibility(I)V

    goto :goto_7

    .line 603
    :cond_11
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->setVisibility(I)V

    goto :goto_7
.end method

.method public setContainerView(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;)V
    .registers 2
    .param p1, "container"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    .prologue
    .line 1663
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    .line 1664
    return-void
.end method

.method public setHWFrame()V
    .registers 2

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->setFullScreenHandWritingFrame()V

    .line 1668
    return-void
.end method

.method public setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V
    .registers 4
    .param p1, "view"    # Lcom/nuance/swype/input/HandWritingView;

    .prologue
    .line 950
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 951
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->clearCurrentInline()V

    .line 953
    :cond_d
    instance-of v0, p1, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_30

    .line 954
    check-cast p1, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .end local p1    # "view":Lcom/nuance/swype/input/HandWritingView;
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .line 959
    :goto_15
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v0, :cond_2c

    .line 960
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setFullScreen(Z)V

    .line 961
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v0, :cond_2c

    .line 962
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isIntegratedHandwriting()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setIntegratedEnabled(Z)V

    .line 966
    :cond_2c
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->clearArcs()V

    .line 967
    return-void

    .line 956
    .restart local p1    # "view":Lcom/nuance/swype/input/HandWritingView;
    :cond_30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    goto :goto_15
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .registers 2
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateDockModeForHandwriting(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 400
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 401
    return-void
.end method

.method public setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .registers 10
    .param p1, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 1896
    move-object v5, p1

    .line 1897
    .local v5, "realKeyboardLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    sget-object v6, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EMOJI:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v6, :cond_7

    .line 1899
    sget-object p1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 1902
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v6

    if-ne v6, p1, :cond_e

    .line 1956
    :cond_d
    :goto_d
    return-void

    .line 1906
    :cond_e
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 1907
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->dismissPopupKeyboard()V

    .line 1908
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->acceptCurrentActiveWord()V

    .line 1910
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    .line 1911
    .local v2, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v6, p1, v7, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 1912
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v6

    if-nez v6, :cond_70

    .line 1913
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hideSpellPrefixSuffixList()V

    .line 1914
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->hideFullScreenHandWritingView(Z)V

    .line 1915
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateKeyboardDockMode()V

    .line 1916
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->clear()V

    .line 1917
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hidePhraseListView()V

    .line 1918
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showFunctionBarListView()V

    .line 1944
    :cond_45
    :goto_45
    sget-object v6, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 1946
    sget-object v6, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v6, :cond_d

    if-ne v5, p1, :cond_d

    .line 1949
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    if-nez v6, :cond_5b

    .line 1950
    new-instance v6, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-direct {v6}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;-><init>()V

    iput-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    .line 1952
    :cond_5b
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getThemedContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->setContext(Landroid/content/Context;)V

    .line 1953
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->show()V

    goto :goto_d

    .line 1920
    :cond_70
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateKeyboardDockMode()V

    .line 1921
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setHWFrame()V

    .line 1922
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->postDelayShowingFullScreenMsg()V

    .line 1923
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    invoke-virtual {v6, v7, p0}, Lcom/nuance/swype/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 1924
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hideSpellPrefixSuffixList()V

    .line 1925
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v6

    .line 1926
    if-eqz v6, :cond_45

    .line 1927
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v4

    .line 1928
    .local v4, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_96
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_45

    .line 1929
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1930
    .local v3, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v6, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const v7, 0xaa3b

    if-ne v6, v7, :cond_ca

    .line 1931
    iget-object v6, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_45

    .line 1932
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1933
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v6, Lcom/nuance/swype/input/R$attr;->cjkAltIconMinHwCommaKey:I

    invoke-virtual {v0, v6}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 1934
    sget v6, Lcom/nuance/swype/input/R$attr;->cjkAltPreMinHwCommaKey:I

    invoke-virtual {v0, v6}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 1936
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto/16 :goto_45

    .line 1928
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    :cond_ca
    add-int/lit8 v1, v1, 0x1

    goto :goto_96
.end method

.method public setNotMatchToolTipSuggestion()V
    .registers 2

    .prologue
    .line 2293
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShowFunctionBar:Z

    if-eqz v0, :cond_5

    .line 2302
    :goto_4
    return-void

    .line 2296
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-eqz v0, :cond_13

    .line 2297
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hideFunctionBarListView()V

    .line 2298
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showPhraseListView()V

    .line 2300
    :cond_13
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 2301
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showNotMatchTootip()V

    goto :goto_4
.end method

.method protected setSwypeKeytoolTipSuggestion()V
    .registers 2

    .prologue
    .line 2280
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShowFunctionBar:Z

    if-eqz v0, :cond_5

    .line 2289
    :goto_4
    return-void

    .line 2283
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-eqz v0, :cond_13

    .line 2284
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hideFunctionBarListView()V

    .line 2285
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showPhraseListView()V

    .line 2287
    :cond_13
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 2288
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showSwypeTooltip()V

    goto :goto_4
.end method

.method public shouldDisableInput(I)Z
    .registers 3
    .param p1, "primaryCode"    # I

    .prologue
    .line 2380
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isValidBuild()Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xff7

    if-eq p1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public showHandWritingView()V
    .registers 2

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1694
    :goto_c
    return-void

    .line 1674
    :cond_d
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    if-eqz v0, :cond_18

    .line 1675
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->closeGridCanditesPopup()V

    .line 1678
    :cond_18
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordListHeight:I

    if-nez v0, :cond_24

    .line 1679
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordListHeight:I

    .line 1681
    :cond_24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->changeAltIconOfSwitchingLayout(Z)V

    .line 1682
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showFullScreenHandWritingView()V

    .line 1684
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShownFuntionBar:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->isFunctionBarShowing()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShownFuntionBar:Z

    goto :goto_c

    .line 1693
    :cond_3b
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateCandidatesList()V

    goto :goto_c
.end method

.method showHowToUseToast()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 334
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 335
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    const-string/jumbo v1, "show_how_to_toggle_half_screen_mode_chn"

    invoke-virtual {v0, v1, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 336
    const-string/jumbo v1, "show_how_to_toggle_half_screen_mode_chn"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 337
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 338
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->how_to_toggle_half_screen_mode:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 337
    invoke-static {v1, v2, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 341
    :cond_37
    return-void
.end method

.method public showInline()V
    .registers 4

    .prologue
    .line 944
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 945
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 947
    :cond_1e
    return-void
.end method

.method protected showSymbolSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 4
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 2239
    if-nez p1, :cond_4

    .line 2240
    const/4 v0, 0x0

    .line 2247
    :goto_3
    return v0

    .line 2242
    :cond_4
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1e

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    sget v1, Lcom/nuance/swype/input/R$xml;->popup_smileys_with_return:I

    if-ne v0, v1, :cond_1e

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    const-string/jumbo v1, ":-)"

    .line 2244
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2245
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showStaticSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_3

    .line 2247
    :cond_1e
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->showSymbolSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_3
.end method

.method public startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V
    .registers 12
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

    .line 195
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v2, :cond_9

    .line 323
    :goto_8
    return-void

    .line 198
    :cond_9
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_12

    .line 199
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateCandidatesSize()V

    .line 201
    :cond_12
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIsIMEActive:Z

    .line 202
    const/4 v2, -0x1

    iput v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    .line 203
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupCandidateListShowable:Z

    .line 204
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 206
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCompletionOn:Z

    .line 208
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->cancelCurrentDefaultWord()Z

    .line 210
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    if-eqz v2, :cond_2a

    .line 211
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->hide()V

    .line 214
    :cond_2a
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getShowFunctionBar()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShowFunctionBar:Z

    .line 216
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mShowFunctionBar:Z

    if-eqz v2, :cond_44

    .line 217
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/FunctionBarListView;->recycleBitmap()V

    .line 218
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->addFunctionBarItem()V

    .line 220
    :cond_44
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->startSession()V

    .line 221
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    .line 222
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v6}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/UserPreferences;->isEmojiSuggestionsEnabled()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setMSDB(IZ)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 223
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2, v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setInputMode(I)Z

    .line 224
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    const/16 v5, 0x65

    iget v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFuzzyPinyin:I

    invoke-virtual {v2, v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setAttribute(II)V

    .line 226
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearCommonChar()I

    .line 227
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->removeAllRecognizeListener()V

    .line 228
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, p0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 229
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/nuance/swype/input/Composition;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 230
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v2

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2, v5, v6}, Lcom/nuance/swype/input/InputMethods;->addTextCategory(Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 231
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    .line 232
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->startSession(I)V

    .line 233
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 234
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v2, :cond_b4

    .line 235
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 238
    :cond_b4
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    if-eqz v2, :cond_bd

    .line 239
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->hidePopupCandidatesView()V

    .line 241
    :cond_bd
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    .line 242
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setKeyboardForTextEntry(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 243
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v2, v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 245
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setHWFrame()V

    .line 246
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->postDelayShowingFullScreenMsg()V

    .line 248
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 250
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    const/16 v5, 0xe1

    if-ne v2, v5, :cond_21a

    .line 251
    sget v2, Lcom/nuance/swype/input/R$string;->handwriting_123_mode_simp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    .line 257
    :cond_e9
    :goto_e9
    sget v2, Lcom/nuance/swype/input/R$string;->handwriting_abc_mode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    .line 259
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    const-string/jumbo v5, "hwr_auto_recpgnize_delay"

    sget v6, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_default_ms:I

    .line 261
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 259
    invoke-static {v2, v5, v6}, Lcom/nuance/swype/input/settings/InputPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 262
    .local v0, "delayMS":I
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setRecognizerDelay(I)V

    .line 264
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->clearArcs()V

    .line 265
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    if-eqz v2, :cond_11b

    .line 266
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hideSpellPrefixSuffixList()V

    .line 268
    :cond_11b
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->updateCandidatesList()V

    .line 269
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/nuance/swype/input/R$dimen;->spell_list_height:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 270
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$dimen;->candidates_list_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionHeight:I

    .line 271
    iget v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionHeight:I

    .line 272
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$dimen;->key_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardHeight:I

    .line 273
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->removeHowToUseToastMsg()V

    .line 274
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->postHowToUseToastMsg()V

    .line 275
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->postDelayResumeSpeech()V

    .line 276
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v2, :cond_17f

    .line 277
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setWidth(I)V

    .line 278
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setHeight(I)V

    .line 279
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isHwrScrmodeEnabled()Z

    move-result v2

    if-eqz v2, :cond_24a

    .line 280
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setRecognitionMode(I)V

    .line 289
    :goto_17a
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->applyChangedSettings()V

    .line 292
    :cond_17f
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isHwrRotationEnabled()Z

    move-result v2

    if-eqz v2, :cond_26e

    .line 293
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->updateRotationSetting(Z)V

    .line 298
    :goto_192
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isAttachingCommonWordsLDBAllowed()Z

    move-result v2

    if-eqz v2, :cond_275

    .line 299
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->updateAttachingCommonWordsLDB(Z)V

    .line 304
    :goto_1a5
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isHwrAlternativeDirectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_27c

    .line 305
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->updateAlternativeDirection(Z)V

    .line 310
    :goto_1b8
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isValidBuild()Z

    move-result v2

    if-nez v2, :cond_1cd

    .line 311
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hideFunctionBarListView()V

    .line 312
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hideSpellPrefixSuffixList()V

    .line 313
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->showPhraseListView()V

    .line 315
    :cond_1cd
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 316
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFSHandler:Landroid/os/Handler;

    .line 317
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNameField()Z

    move-result v2

    if-eqz v2, :cond_283

    move v2, v3

    :goto_1dd
    iget-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isKeepingKeyboard:Z

    if-eqz v7, :cond_286

    .line 316
    :goto_1e1
    invoke-virtual {v6, v8, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v6, 0x5

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 319
    const-string/jumbo v2, "CJK"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showTrialExpireWclMessage(Ljava/lang/String;)V

    .line 320
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    new-instance v3, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getDefaultKeyUIStateHandler()Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;

    move-result-object v6

    invoke-direct {v3, v4, p0, v5, v6}, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;)V

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->resisterTouchKeyHandler(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;)V

    .line 321
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->wrapTouchEvent(Landroid/view/View;)V

    .line 322
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-static {}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->getDispatcherInstance()Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getDefaultInputContextHandler()Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->setHandler(Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;)Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V

    goto/16 :goto_8

    .line 252
    .end local v0    # "delayMS":I
    :cond_21a
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_232

    .line 253
    sget v2, Lcom/nuance/swype/input/R$string;->handwriting_123_mode_trad:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    goto/16 :goto_e9

    .line 254
    :cond_232
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    const/16 v5, 0xe2

    if-ne v2, v5, :cond_e9

    .line 255
    sget v2, Lcom/nuance/swype/input/R$string;->handwriting_123_mode_trad:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    goto/16 :goto_e9

    .line 282
    .restart local v0    # "delayMS":I
    :cond_24a
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setRecognitionMode(I)V

    .line 283
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_267

    .line 284
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setWritingDirection(I)V

    goto/16 :goto_17a

    .line 286
    :cond_267
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setWritingDirection(I)V

    goto/16 :goto_17a

    .line 295
    :cond_26e
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->updateRotationSetting(Z)V

    goto/16 :goto_192

    .line 301
    :cond_275
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->updateAttachingCommonWordsLDB(Z)V

    goto/16 :goto_1a5

    .line 307
    :cond_27c
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->updateAlternativeDirection(Z)V

    goto/16 :goto_1b8

    :cond_283
    move v2, v4

    .line 317
    goto/16 :goto_1dd

    :cond_286
    move v3, v4

    goto/16 :goto_1e1
.end method

.method public transferKeyEvent(Landroid/view/MotionEvent;)Z
    .registers 22
    .param p1, "me"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 2106
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordListHeight:I

    move/from16 v18, v0

    if-nez v18, :cond_18

    .line 2107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordListHeight:I

    .line 2109
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/nuance/swype/input/R$dimen;->key_height:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 2111
    .local v13, "keyboard_height":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v15, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2112
    .local v15, "screen_height":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 2113
    .local v16, "screen_width":I
    const/16 v17, 0x0

    .line 2114
    .local v17, "status_bar_height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    if-eqz v18, :cond_66

    .line 2115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v18

    if-eqz v18, :cond_c5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    move-object/from16 v18, v0

    .line 2116
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/IMEHandlerManager;->statusBarHeight()I

    move-result v17

    .line 2118
    :cond_66
    :goto_66
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    .line 2119
    .local v2, "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 2120
    .local v4, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 2121
    .local v6, "actionType":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 2122
    .local v7, "posX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 2123
    .local v8, "posY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 2124
    .local v9, "mState":I
    int-to-float v0, v15

    move/from16 v18, v0

    sub-float v18, v18, v8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v12, v18, v19

    .line 2125
    .local v12, "heightToBottom":F
    int-to-float v0, v13

    move/from16 v18, v0

    cmpg-float v18, v12, v18

    if-gtz v18, :cond_9f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a7

    :cond_9f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v18, v0

    if-nez v18, :cond_c8

    .line 2128
    :cond_a7
    if-nez v6, :cond_b1

    .line 2129
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    .line 2131
    :cond_b1
    int-to-float v0, v13

    move/from16 v18, v0

    sub-float v8, v18, v12

    .line 2132
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 2135
    .local v14, "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2136
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 2138
    const/16 v18, 0x1

    .line 2215
    .end local v14    # "motionEvent":Landroid/view/MotionEvent;
    :goto_c4
    return v18

    .line 2116
    .end local v2    # "downTime":J
    .end local v4    # "eventTime":J
    .end local v6    # "actionType":I
    .end local v7    # "posX":F
    .end local v8    # "posY":F
    .end local v9    # "mState":I
    .end local v12    # "heightToBottom":F
    :cond_c5
    const/16 v17, 0x0

    goto :goto_66

    .line 2140
    .restart local v2    # "downTime":J
    .restart local v4    # "eventTime":J
    .restart local v6    # "actionType":I
    .restart local v7    # "posX":F
    .restart local v8    # "posY":F
    .restart local v9    # "mState":I
    .restart local v12    # "heightToBottom":F
    :cond_c8
    sub-int v18, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mWordListHeight:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v10, v18, v13

    .line 2143
    .local v10, "boundarySize":I
    int-to-float v0, v10

    move/from16 v18, v0

    cmpl-float v18, v8, v18

    if-lez v18, :cond_e9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_f7

    :cond_e9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_213

    .line 2145
    :cond_f7
    if-nez v6, :cond_101

    .line 2146
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    .line 2148
    :cond_101
    int-to-float v0, v10

    move/from16 v18, v0

    sub-float v8, v8, v18

    .line 2150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getLeftWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v7, v18

    if-ltz v18, :cond_1bf

    .line 2152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->isRightPhraseArrowShowable()Z

    move-result v18

    if-eqz v18, :cond_16a

    .line 2153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    move-object/from16 v18, v0

    .line 2155
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->getRightPhraseImageButtonWidth()I

    move-result v18

    sub-int v11, v16, v18

    .line 2159
    .local v11, "candidateArea":I
    :goto_131
    int-to-float v0, v11

    move/from16 v18, v0

    cmpg-float v18, v7, v18

    if-gtz v18, :cond_16d

    .line 2160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getLeftWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v7, v7, v18

    .line 2161
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 2163
    .restart local v14    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/FunctionBarListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2165
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 2212
    .end local v11    # "candidateArea":I
    .end local v14    # "motionEvent":Landroid/view/MotionEvent;
    :cond_166
    :goto_166
    const/16 v18, 0x1

    goto/16 :goto_c4

    .line 2157
    :cond_16a
    move/from16 v11, v16

    .restart local v11    # "candidateArea":I
    goto :goto_131

    .line 2168
    :cond_16d
    if-nez v6, :cond_181

    .line 2170
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 2172
    .restart local v14    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    move-object/from16 v18, v0

    .line 2173
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2175
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 2177
    .end local v14    # "motionEvent":Landroid/view/MotionEvent;
    :cond_181
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v6, v0, :cond_18d

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v6, v0, :cond_166

    .line 2179
    :cond_18d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1ab

    .line 2180
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 2182
    .restart local v14    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_166

    .line 2184
    .end local v14    # "motionEvent":Landroid/view/MotionEvent;
    :cond_1ab
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    .line 2185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    .line 2186
    invoke-virtual/range {v18 .. v19}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setPointStatus(I)V

    goto :goto_166

    .line 2191
    .end local v11    # "candidateArea":I
    :cond_1bf
    if-nez v6, :cond_1d3

    .line 2192
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 2194
    .restart local v14    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCharacterContextViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;

    move-object/from16 v18, v0

    .line 2195
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2196
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 2198
    .end local v14    # "motionEvent":Landroid/view/MotionEvent;
    :cond_1d3
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v6, v0, :cond_1df

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v6, v0, :cond_166

    .line 2200
    :cond_1df
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1fe

    .line 2201
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 2203
    .restart local v14    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_166

    .line 2205
    .end local v14    # "motionEvent":Landroid/view/MotionEvent;
    :cond_1fe
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSelectionAreaOption:I

    .line 2206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    .line 2207
    invoke-virtual/range {v18 .. v19}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setPointStatus(I)V

    goto/16 :goto_166

    .line 2215
    :cond_213
    const/16 v18, 0x0

    goto/16 :goto_c4
.end method

.method public updateKeyboardDockMode()V
    .registers 2

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    .line 1888
    .local v0, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    if-eqz v0, :cond_9

    .line 1889
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1891
    :cond_9
    return-void
.end method

.method public updateSelection(IIII[I)V
    .registers 11
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesIndices"    # [I

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x1

    .line 1100
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/input/InputView;->updateSelection(IIII[I)V

    .line 1102
    aget v3, p5, v0

    if-ne p3, v3, :cond_d

    aget v3, p5, v0

    if-eq p4, v3, :cond_11

    :cond_d
    aget v3, p5, v0

    if-ne v3, v4, :cond_19

    :cond_11
    aget v3, p5, v0

    if-ne v3, v4, :cond_8a

    if-ne p3, p1, :cond_19

    if-eq p4, p2, :cond_8a

    .line 1106
    .local v0, "cursorChanged":Z
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    .line 1107
    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v2

    .line 1108
    .local v2, "spw":Lcom/nuance/swype/input/SpeechWrapper;
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_96

    :cond_31
    if-nez v0, :cond_96

    .line 1110
    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Lcom/nuance/swype/input/SpeechWrapper;->isStreamingDictation()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 1111
    :cond_3b
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v3, :cond_8c

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v3}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v3

    if-lez v3, :cond_8c

    .line 1112
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v3}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 1138
    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->dismissPopupKeyboard()V

    .line 1139
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1140
    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v3

    if-nez v3, :cond_76

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1141
    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v3

    if-nez v3, :cond_76

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1142
    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->isEditMode()Z

    move-result v3

    if-nez v3, :cond_76

    .line 1143
    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    if-eqz v3, :cond_76

    .line 1144
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->closeGridCanditesPopup()V

    .line 1149
    :cond_76
    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Lcom/nuance/swype/input/SpeechWrapper;->isStreamingDictation()Z

    move-result v3

    if-nez v3, :cond_89

    :cond_7e
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isNormalTextInputMode()Z

    move-result v3

    if-eqz v3, :cond_89

    if-eqz v0, :cond_89

    .line 1150
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showHandWritingView()V

    .line 1152
    :cond_89
    return-void

    .line 1102
    .end local v0    # "cursorChanged":Z
    .end local v2    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    :cond_8a
    const/4 v0, 0x0

    goto :goto_19

    .line 1114
    .restart local v0    # "cursorChanged":Z
    .restart local v2    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    :cond_8c
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1115
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_4c

    .line 1116
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_4c

    .line 1122
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_96
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v3, :cond_4c

    if-eqz v0, :cond_4c

    .line 1123
    if-eqz v2, :cond_a4

    invoke-virtual {v2}, Lcom/nuance/swype/input/SpeechWrapper;->isStreamingDictation()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 1124
    :cond_a4
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v3}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v3

    if-lez v3, :cond_bd

    .line 1125
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v3}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 1126
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContextCandidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1133
    :cond_b6
    :goto_b6
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->clearArcs()V

    .line 1134
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    goto :goto_4c

    .line 1128
    :cond_bd
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1129
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_b6

    .line 1130
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_b6
.end method
