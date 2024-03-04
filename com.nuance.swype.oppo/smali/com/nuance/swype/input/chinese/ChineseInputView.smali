.class public Lcom/nuance/swype/input/chinese/ChineseInputView;
.super Lcom/nuance/swype/input/InputView;
.source "ChineseInputView.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;
.implements Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/chinese/ChineseInputView$ChineseGetMoreWordsHandler;
    }
.end annotation


# static fields
.field private static final CHINESE_BILINGUAL_ACTIVE_INDEX:I = 0xfe

.field public static final COMPONENT_MARKER:C = '\u9fff'

.field private static final DELAY_SENDKEY:I = 0x64

.field static final DISMISS_POPUP_VIEW_DELAY:I = 0x44c

.field private static final GESTURE_CANDIDATE:I = -0x1

.field public static LOG:Ljava/lang/String; = null

.field protected static final MSG_DELAY_RECOGNIZER:I = 0x65

.field static final MSG_DISMISS_POPUP_VIEW:I = 0x1f4

.field private static final MSG_HANDLE_CHAR:I = 0x3

.field private static final MSG_HANDLE_SUGGESTION_CANDIDATES:I = 0x2

.field private static final MSG_HANDLE_TEXT:I = 0x4

.field static final MSG_RESTORE_POPUP_VIEW:I = 0x1f6

.field static final MSG_SHOW_POPUP_VIEW:I = 0x1f5

.field private static final PRIMARY_KEYCODE_NUM_NINE_KEYPAD:I = 0x39

.field private static final PRIMARY_KEYCODE_NUM_ONE_KEYPAD:I = 0x31

.field private static final PRIMARY_KEYCODE_NUM_TWO_KEYPAD:I = 0x32

.field private static final PRIMARY_KEYCODE_NUM_ZERO_KEYPAD:I = 0x30

.field static final RESTORE_POPUP_DELAY:I = 0x14

.field private static SHOW_CONATCT_MENU_TOAST:Ljava/lang/String; = null

.field private static final STROKE_KEYCODE_NUM_FOUR:I = 0x4e36

.field private static final STROKE_KEYCODE_NUM_TWO:I = 0x4e28

.field private static acChineseInput:Lcom/nuance/dlm/ACChineseInput;

.field private static doublePinyinCh:Ljava/lang/String;

.field private static doublePinyinSh:Ljava/lang/String;

.field private static doublePinyinZh:Ljava/lang/String;

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final HWHandlerCallback:Landroid/os/Handler$Callback;

.field private altCharacterText:Ljava/lang/StringBuilder;

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

.field private chineseCategrayListSimplified:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private chineseCategrayListTraditional:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private chineseCommonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private chineseEmotionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private chineseNetworkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private chineseSymbolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private convertedCharacterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

.field protected defaultHighlightWord:Ljava/lang/StringBuilder;

.field private final delayWritingRecognizerHandlerCallback:Landroid/os/Handler$Callback;

.field private delimiterPlaceholderIndexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private doublePinyinTailKeyUnicode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private englishSymbolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private exactInputText:Ljava/lang/StringBuilder;

.field private gridViewFunctionButtonPressed:Z

.field inputViewCallback:Landroid/os/Handler$Callback;

.field inputViewHandler:Landroid/os/Handler;

.field private isCandidateSelectedEver:Z

.field private isDealGesture:Z

.field private isDelimiterPressedEver:Z

.field private isPressedNumOneKey:Z

.field private isShiftedPopupMenu:Z

.field private isSourceFromPressSpace:Z

.field private isTracedEver:Z

.field private final keypadSymbolLayout:Landroid/widget/FrameLayout$LayoutParams;

.field private lastKeypadBilingualState:Z

.field private lastShiftState:Z

.field private mBPMFTones:[Ljava/lang/String;

.field protected mCachedWritePoints:Ljava/util/List;
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

.field private mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

.field private mContextWindowShowing:Z

.field private mDealingBackspace:Z

.field private mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mDefaultWord:Landroid/text/SpannableStringBuilder;

.field private mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDelayWriteRecognizeHandler:Landroid/os/Handler;

.field private mErrorFlashBackground:Landroid/text/style/BackgroundColorSpan;

.field private mExactWord:Ljava/lang/StringBuffer;

.field private mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

.field private mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$ChineseGetMoreWordsHandler;

.field mHWHandler:Landroid/os/Handler;

.field private mHWRecognitionCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mHandwritingOn:Z

.field private mInitiativeAccept:Z

.field public mInsertText:Ljava/lang/StringBuilder;

.field private mInvalidForeground:Landroid/text/style/ForegroundColorSpan;

.field private mIsIMEActive:Z

.field private mIsLastOpWriting:Z

.field private mIsSymbolPageShown:Z

.field private mIsUpdateInline:Z

.field private mIsWriting:Z

.field private mIsWritingRecognitionDone:Z

.field private mMutitapMaxKeyTimeout:Z

.field protected mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

.field private mPYDelimiter:C

.field private mPhraseCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPinyinCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field protected mPntWrite:Landroid/graphics/Paint;

.field private mRecordLastSymbolPageShown:Z

.field protected mRepaintWrite:Z

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

.field private mSelectedSymbolCategaryIndex:I

.field private mTerminateSession:Z

.field private mTone:Z

.field private mTraceOn:Z

.field private mUnderline:Landroid/text/style/UnderlineSpan;

.field protected mVctWrite:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

.field protected mWriteColor:I

.field protected mWriteNewSession:Z

.field protected mWritePath:Landroid/graphics/Path;

.field protected mWritePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteRecognizeDelay:I

.field protected mWriteStrokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;>;"
        }
    .end annotation
.end field

.field private mbNeedDefer:Z

.field private mbNeedUpdate:Z

.field private numZeroPlaceholderIndexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private pictureSymbolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private showDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

.field private symbolPopup:Landroid/view/View;

.field private symbolPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

.field private symbolPopupScrollView:Landroid/widget/ScrollView;

.field private symbolViewCategarySelected:Z

.field private symbolViewItemPressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-string v0, "ChineseInputView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->acChineseInput:Lcom/nuance/dlm/ACChineseInput;

    .line 213
    const-string v0, "Zh"

    sput-object v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->doublePinyinZh:Ljava/lang/String;

    .line 214
    const-string v0, "Ch"

    sput-object v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->doublePinyinCh:Ljava/lang/String;

    .line 215
    const-string v0, "Sh"

    sput-object v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->doublePinyinSh:Ljava/lang/String;

    .line 217
    const-string v0, "show_contact_action_menu_toast"

    sput-object v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->SHOW_CONATCT_MENU_TOAST:Ljava/lang/String;

    .line 4728
    const-string v0, "ChineseInputView"

    sput-object v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->LOG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0x70

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2854
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPhraseCandidates:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPinyinCandidates:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->showDataList:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    .line 124
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->defaultHighlightWord:Ljava/lang/StringBuilder;

    .line 144
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsUpdateInline:Z

    .line 145
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    .line 175
    iput v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSelectedSymbolCategaryIndex:I

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteStrokes:Ljava/util/List;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mVctWrite:Ljava/util/List;

    .line 180
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRepaintWrite:Z

    .line 181
    const v0, -0xffff01

    iput v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteColor:I

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCachedWritePoints:Ljava/util/List;

    .line 184
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWritePath:Landroid/graphics/Path;

    .line 185
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteNewSession:Z

    .line 186
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteRecognizeDelay:I

    .line 187
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsWritingRecognitionDone:Z

    .line 188
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsLastOpWriting:Z

    .line 193
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedDefer:Z

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->altCharacterText:Ljava/lang/StringBuilder;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertedCharacterList:Ljava/util/List;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    .line 211
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedUpdate:Z

    .line 218
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->doublePinyinTailKeyUnicode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseCommonList:Ljava/util/List;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseCategrayListSimplified:Ljava/util/List;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseCategrayListTraditional:Ljava/util/List;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->englishSymbolList:Ljava/util/List;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseEmotionList:Ljava/util/List;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseNetworkList:Ljava/util/List;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->pictureSymbolList:Ljava/util/List;

    .line 249
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$1;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewCallback:Landroid/os/Handler$Callback;

    .line 273
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    .line 3622
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseInputView$7;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$7;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->HWHandlerCallback:Landroid/os/Handler$Callback;

    .line 3667
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->HWHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWHandler:Landroid/os/Handler;

    .line 3717
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseInputView$8;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$8;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delayWritingRecognizerHandlerCallback:Landroid/os/Handler$Callback;

    .line 3768
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delayWritingRecognizerHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDelayWriteRecognizeHandler:Landroid/os/Handler;

    .line 4510
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->keypadSymbolLayout:Landroid/widget/FrameLayout$LayoutParams;

    .line 2855
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v3, 0x70

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2858
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPhraseCandidates:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPinyinCandidates:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->showDataList:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    .line 124
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->defaultHighlightWord:Ljava/lang/StringBuilder;

    .line 144
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsUpdateInline:Z

    .line 145
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    .line 175
    iput v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSelectedSymbolCategaryIndex:I

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteStrokes:Ljava/util/List;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mVctWrite:Ljava/util/List;

    .line 180
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRepaintWrite:Z

    .line 181
    const v0, -0xffff01

    iput v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteColor:I

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCachedWritePoints:Ljava/util/List;

    .line 184
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWritePath:Landroid/graphics/Path;

    .line 185
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteNewSession:Z

    .line 186
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteRecognizeDelay:I

    .line 187
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsWritingRecognitionDone:Z

    .line 188
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsLastOpWriting:Z

    .line 193
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedDefer:Z

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->altCharacterText:Ljava/lang/StringBuilder;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertedCharacterList:Ljava/util/List;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    .line 211
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedUpdate:Z

    .line 218
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->doublePinyinTailKeyUnicode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseCommonList:Ljava/util/List;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseCategrayListSimplified:Ljava/util/List;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseCategrayListTraditional:Ljava/util/List;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->englishSymbolList:Ljava/util/List;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseEmotionList:Ljava/util/List;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseNetworkList:Ljava/util/List;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->pictureSymbolList:Ljava/util/List;

    .line 249
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$1;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewCallback:Landroid/os/Handler$Callback;

    .line 273
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    .line 3622
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseInputView$7;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$7;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->HWHandlerCallback:Landroid/os/Handler$Callback;

    .line 3667
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->HWHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWHandler:Landroid/os/Handler;

    .line 3717
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseInputView$8;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$8;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delayWritingRecognizerHandlerCallback:Landroid/os/Handler$Callback;

    .line 3768
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delayWritingRecognizerHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDelayWriteRecognizeHandler:Landroid/os/Handler;

    .line 4510
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->keypadSymbolLayout:Landroid/widget/FrameLayout$LayoutParams;

    .line 2859
    return-void
.end method

.method private acceptHWRAndUpdateListView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3693
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->acceptHWRRecognitionWord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3694
    invoke-direct {p0, v1, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 3696
    :cond_0
    return-void
.end method

.method private acceptHWRRecognitionWord()Z
    .locals 1

    .prologue
    .line 4118
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recognitionCandidatesAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    .line 4120
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInlineWord()Z

    .line 4121
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4122
    const/4 v0, 0x1

    .line 4125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->addMoreSuggestions()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/chinese/ChineseInputView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updatePrefixes()V

    return-void
.end method

.method static synthetic access$1402(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridViewFunctionButtonPressed:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridViewFunctionButtonPressed:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setSpeechViewHost()V

    return-void
.end method

.method static synthetic access$2000(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/nuance/swype/input/chinese/ChineseInputView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/nuance/swype/input/chinese/ChineseInputView;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInlineWord()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/nuance/swype/input/chinese/ChineseInputView;C)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # C

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleChar(C)V

    return-void
.end method

.method static synthetic access$2600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPhraseCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->performDelayWriteRecognition()V

    return-void
.end method

.method static synthetic access$2800(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->resumeSpeech()V

    return-void
.end method

.method static synthetic access$3000(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/nuance/swype/input/chinese/ChineseInputView;Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->moveCursorToMiddle(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolViewItemPressed:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolViewItemPressed:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolViewCategarySelected:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolViewCategarySelected:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/nuance/swype/input/chinese/ChineseInputView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getChineseCategoryList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/nuance/swype/input/chinese/ChineseInputView;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSelectedSymbolCategaryIndex:I

    return v0
.end method

.method static synthetic access$400()Lcom/nuance/dlm/ACChineseInput;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->acChineseInput:Lcom/nuance/dlm/ACChineseInput;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/nuance/swype/input/chinese/ChineseInputView;Ljava/util/List;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    return-void
.end method

.method static synthetic access$402(Lcom/nuance/dlm/ACChineseInput;)Lcom/nuance/dlm/ACChineseInput;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/dlm/ACChineseInput;

    .prologue
    .line 101
    sput-object p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->acChineseInput:Lcom/nuance/dlm/ACChineseInput;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->launchAddOnDictionary()V

    return-void
.end method

.method static synthetic access$4200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->switchHandWritingOrTraceOnKeyboard()V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideGridCandidatesView()V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInlineString(Z)V

    return-void
.end method

.method private activateCategoryDatabase()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 5223
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 5225
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    new-instance v1, Lcom/nuance/swype/input/CategoryDBList;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7, v9}, Lcom/nuance/swype/input/CategoryDBList;-><init>(Landroid/content/Context;Z)V

    .line 5226
    .local v1, "cdbList":Lcom/nuance/swype/input/CategoryDBList;
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v7, v7, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/CategoryDBList;->getAvailableCDBs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 5227
    .local v2, "cdbNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 5228
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5229
    .local v6, "st":Ljava/lang/String;
    invoke-virtual {v1, v6}, Lcom/nuance/swype/input/CategoryDBList;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5230
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v1, v6}, Lcom/nuance/swype/input/CategoryDBList;->getFileId(Ljava/lang/String;)I

    move-result v4

    .line 5231
    .local v4, "id":I
    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5232
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v8

    invoke-virtual {v7, v8, v4, v9}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setCategoryDb(IIZ)I

    goto :goto_0

    .line 5236
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "id":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "st":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private addFunctionBarItem()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 4862
    const/4 v0, 0x0

    .line 4863
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 4865
    .local v1, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getLanguageOption()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mLanguageOptionOn:Z

    .line 4866
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getSettings()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSettingsOn:Z

    .line 4867
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getInputMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputModeOn:Z

    .line 4868
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getQuickToggle()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mQuickToggleOn:Z

    .line 4869
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getEditKeyboard()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditKeyboardOn:Z

    .line 4870
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getNumberKeyboard()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mNumberKeyboardOn:Z

    .line 4871
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getThemes()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mThemesOn:Z

    .line 4872
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getAddOnDictionaries()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mAddOnDictionariesOn:Z

    .line 4873
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getChineseSettings()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseSettingsOn:Z

    .line 4875
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSettingsOn:Z

    if-eqz v2, :cond_0

    .line 4876
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4877
    add-int/lit8 v0, v0, 0x1

    .line 4880
    :cond_0
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mLanguageOptionOn:Z

    if-eqz v2, :cond_1

    .line 4881
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4882
    add-int/lit8 v0, v0, 0x1

    .line 4885
    :cond_1
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputModeOn:Z

    if-eqz v2, :cond_2

    .line 4886
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4887
    add-int/lit8 v0, v0, 0x1

    .line 4891
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4892
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditKeyboardOn:Z

    if-eqz v2, :cond_3

    if-ge v0, v4, :cond_3

    .line 4893
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x6e

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4894
    add-int/lit8 v0, v0, 0x1

    .line 4897
    :cond_3
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mNumberKeyboardOn:Z

    if-eqz v2, :cond_4

    if-ge v0, v4, :cond_4

    .line 4898
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4899
    add-int/lit8 v0, v0, 0x1

    .line 4903
    :cond_4
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mQuickToggleOn:Z

    if-eqz v2, :cond_5

    if-ge v0, v4, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4904
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    if-eqz v2, :cond_9

    .line 4905
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x72

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4916
    :cond_5
    :goto_0
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mThemesOn:Z

    if-eqz v2, :cond_6

    if-ge v0, v4, :cond_6

    .line 4917
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x6f

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4918
    add-int/lit8 v0, v0, 0x1

    .line 4921
    :cond_6
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mAddOnDictionariesOn:Z

    if-eqz v2, :cond_7

    if-ge v0, v4, :cond_7

    .line 4922
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x70

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4923
    add-int/lit8 v0, v0, 0x1

    .line 4926
    :cond_7
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseSettingsOn:Z

    if-eqz v2, :cond_8

    if-ge v0, v4, :cond_8

    .line 4927
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x71

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4928
    :cond_8
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x73

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4932
    return-void

    .line 4907
    :cond_9
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v3, 0x75

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    goto :goto_0
.end method

.method private addMoreSuggestions()V
    .locals 5

    .prologue
    .line 2806
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v2, :cond_1

    .line 2825
    :cond_0
    :goto_0
    return-void

    .line 2810
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2814
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recognitionCandidatesAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2815
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isExactKeyboardShowable()Z

    move-result v3

    const/16 v4, 0x1e

    invoke-virtual {v2, v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getMoreWords(ZI)Ljava/util/List;

    move-result-object v1

    .line 2818
    .local v1, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWordsSource()Ljava/util/List;

    move-result-object v0

    .line 2820
    .local v0, "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2821
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v1, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setMoreSuggestions(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method private checkCurLanguage()Z
    .locals 1

    .prologue
    .line 3152
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearInlineWord()V
    .locals 3

    .prologue
    .line 883
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 884
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 885
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 894
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return-void

    .line 888
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 889
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->breakContext()Z

    .line 890
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 891
    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 892
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0
.end method

.method private clearInternalStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 898
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInitiativeAccept:Z

    .line 899
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys()Z

    .line 902
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapTimeOut()V

    .line 903
    iput v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidKey:I

    .line 904
    iput v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentIndex:I

    .line 905
    iput v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidIndex:I

    .line 906
    iput v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidTapCount:I

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 910
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 914
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recognitionCandidatesAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 915
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 917
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 918
    return-void
.end method

.method private commitComposingText()V
    .locals 1

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 780
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 781
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 782
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 783
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 785
    :cond_0
    return-void
.end method

.method private commitInlineWord()V
    .locals 2

    .prologue
    .line 2426
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2427
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2428
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2429
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2430
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2432
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2433
    return-void
.end method

.method private convertToAltCharacters(Ljava/lang/StringBuilder;)Z
    .locals 8
    .param p1, "s"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v7, 0x31

    .line 5029
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v5

    if-nez v5, :cond_1

    .line 5030
    :cond_0
    const/4 v5, 0x0

    .line 5076
    :goto_0
    return v5

    .line 5033
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v1, v5, :cond_b

    .line 5034
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 5036
    .local v0, "c":C
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5037
    const/16 v5, 0x27

    if-ne v0, v5, :cond_3

    .line 5038
    invoke-virtual {p1, v1, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 5033
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5043
    :cond_3
    const/16 v5, 0x41

    if-gt v5, v0, :cond_6

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_6

    .line 5044
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->altCharacterText:Ljava/lang/StringBuilder;

    add-int/lit8 v6, v0, -0x41

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v1, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 5049
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 5050
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 5051
    .local v2, "index":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lt v2, v5, :cond_7

    .line 5053
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5054
    add-int/lit8 v3, v3, -0x1

    .line 5049
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 5045
    .end local v2    # "index":I
    .end local v3    # "j":I
    :cond_6
    const/16 v5, 0x61

    if-gt v5, v0, :cond_4

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_4

    .line 5046
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->altCharacterText:Ljava/lang/StringBuilder;

    add-int/lit8 v6, v0, -0x61

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v1, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    .line 5057
    .restart local v2    # "index":I
    .restart local v3    # "j":I
    :cond_7
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    if-ne v5, v6, :cond_5

    .line 5058
    const/16 v5, 0x30

    invoke-virtual {p1, v1, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_4

    .line 5062
    .end local v2    # "index":I
    :cond_8
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_5
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 5063
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 5064
    .restart local v2    # "index":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lt v2, v5, :cond_a

    .line 5066
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5067
    add-int/lit8 v4, v4, -0x1

    .line 5062
    :cond_9
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 5070
    :cond_a
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x32

    if-ne v5, v6, :cond_9

    .line 5071
    invoke-virtual {p1, v1, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_6

    .line 5076
    .end local v0    # "c":C
    .end local v2    # "index":I
    .end local v3    # "j":I
    .end local v4    # "k":I
    :cond_b
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method private deactivateCategoryDatabase()V
    .locals 8

    .prologue
    .line 5245
    new-instance v0, Lcom/nuance/swype/input/CategoryDBList;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v0, v5, v6}, Lcom/nuance/swype/input/CategoryDBList;-><init>(Landroid/content/Context;Z)V

    .line 5246
    .local v0, "cdbList":Lcom/nuance/swype/input/CategoryDBList;
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v5, v5, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/CategoryDBList;->getAvailableCDBs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 5247
    .local v1, "cdbNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 5248
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5249
    .local v4, "st":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/CategoryDBList;->getFileId(Ljava/lang/String;)I

    move-result v3

    .line 5250
    .local v3, "id":I
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setCategoryDb(IIZ)I

    goto :goto_0

    .line 5253
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":I
    .end local v4    # "st":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private flashBackground()V
    .locals 6

    .prologue
    .line 3093
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mErrorFlashBackground:Landroid/text/style/BackgroundColorSpan;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x121

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3097
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3098
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 3099
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3101
    :cond_0
    return-void
.end method

.method private flashError()V
    .locals 1

    .prologue
    .line 3079
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3080
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashBackground()V

    .line 3081
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInlineString(Z)V

    .line 3083
    :cond_0
    return-void
.end method

.method private flashErrorIfNeededInStroke()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1285
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getInputDelimiterCount()I

    move-result v0

    .line 1286
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1287
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 1288
    .local v1, "wdSource":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->defaultHighlightWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v4, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWord(ILjava/lang/StringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    .line 1289
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->defaultHighlightWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    if-eq v3, v4, :cond_0

    .line 1290
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashRedError()V

    .line 1291
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->defaultHighlightWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1292
    const/4 v2, 0x1

    .line 1295
    .end local v1    # "wdSource":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_0
    return v2
.end method

.method private flashRedError()V
    .locals 4

    .prologue
    .line 3086
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3087
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashBackground()V

    .line 3088
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3090
    :cond_0
    return-void
.end method

.method private flushInineAltCharacters()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5147
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5149
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setAltCharacterConverted(Z)V

    .line 5150
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInlineWord()Z

    .line 5151
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys()Z

    .line 5152
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertedCharacterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5153
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5154
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5155
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5156
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    .line 5157
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCandidateSelectedEver:Z

    .line 5158
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTracedEver:Z

    .line 5159
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDelimiterPressedEver:Z

    .line 5160
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTone:Z

    .line 5161
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 5162
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 5163
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInternalStatus()V

    .line 5165
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 5166
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 5167
    const/4 v0, 0x1

    .line 5169
    :cond_0
    return v0
.end method

.method private flushInlineWord()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4129
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4130
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 4131
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4132
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 4134
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInitiativeAccept:Z

    .line 4135
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedUpdate:Z

    .line 4136
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4138
    :cond_0
    return v2
.end method

.method private getChineseCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4653
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseTraditional()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4654
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseCategrayListTraditional:Ljava/util/List;

    .line 4656
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseCategrayListSimplified:Ljava/util/List;

    goto :goto_0
.end method

.method private getCurrentInputModeHandwritingOnkeyboardKey(Z)Z
    .locals 2
    .param p1, "defaultValue"    # Z

    .prologue
    .line 4177
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 4179
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwritingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingOnKeyboardKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getExactWord(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "exactWord"    # Ljava/lang/StringBuffer;

    .prologue
    .line 5448
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 5449
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5454
    :cond_0
    :goto_0
    return-void

    .line 5453
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getExactWord(Ljava/lang/StringBuffer;)I

    goto :goto_0
.end method

.method private getInputContents()Ljava/lang/String;
    .locals 4

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 702
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v1, :cond_0

    .line 703
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 705
    .local v0, "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    .line 706
    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 709
    .end local v0    # "eText":Landroid/view/inputmethod/ExtractedText;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private getInputDelimiterCount()I
    .locals 4

    .prologue
    .line 4150
    const/4 v0, 0x0

    .line 4151
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4152
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPYDelimiter:C

    if-ne v2, v3, :cond_0

    .line 4153
    add-int/lit8 v0, v0, 0x1

    .line 4151
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4156
    :cond_1
    return v0
.end method

.method private getMinSpeechPopupViewHeight()I
    .locals 2

    .prologue
    .line 4716
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v0

    .line 4718
    .local v0, "height":I
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 4719
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 4722
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 4723
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 4725
    :cond_1
    return v0
.end method

.method private getValidStrokeCandidateIndex()I
    .locals 7

    .prologue
    const/16 v6, 0x7e

    const/4 v5, 0x1

    const v4, 0x9fff

    const/4 v3, 0x0

    .line 2660
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->suggestions()Ljava/util/List;

    move-result-object v1

    .line 2661
    .local v1, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_2

    .line 2663
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2664
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2665
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_1

    .line 2672
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v0

    .line 2664
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    move v0, v3

    .line 2672
    goto :goto_1
.end method

.method private handleAutoPunct()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3187
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 3188
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 3196
    :goto_0
    return-void

    .line 3191
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 3192
    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3194
    const-string v0, "\u3002"

    .line 3195
    .local v0, "autopunct":Ljava/lang/CharSequence;
    invoke-interface {v1, v0, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method private handleChar(C)V
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 3670
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 3671
    const/16 p1, 0xa

    .line 3676
    :cond_0
    :goto_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 3677
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendBackspace(I)V

    .line 3685
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    .line 3686
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 3687
    return-void

    .line 3672
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 3673
    const/16 p1, 0x20

    goto :goto_0

    .line 3678
    :cond_2
    const/16 v0, 0x20

    if-ne p1, v0, :cond_3

    .line 3679
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->acceptHWRRecognitionWord()Z

    .line 3680
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendSpace()V

    goto :goto_1

    .line 3682
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->acceptHWRRecognitionWord()Z

    .line 3683
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto :goto_1
.end method

.method private handlePrediction(Landroid/graphics/Point;I[IJ)V
    .locals 10
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "eventTime"    # J

    .prologue
    .line 2281
    const/4 v7, 0x0

    .line 2282
    .local v7, "success":Z
    const/4 v8, 0x0

    .line 2286
    .local v8, "triedMT":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapIsInvalid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidIndex:I

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentIndex:I

    if-eq v0, v1, :cond_3

    .line 2288
    :cond_0
    const/4 v7, 0x0

    .line 2356
    :cond_1
    :goto_0
    if-nez v7, :cond_c

    .line 2357
    if-nez v8, :cond_c

    .line 2358
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashError()V

    .line 2363
    :cond_2
    :goto_1
    return-void

    .line 2291
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2292
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-object v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v7

    .line 2294
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/EditState;->characterTyped(C)V

    .line 2295
    if-nez v7, :cond_5

    .line 2296
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isMaxKeysCangjieOrQuickCangjie()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2297
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapTimeOut()V

    goto :goto_0

    .line 2301
    :cond_4
    iput p2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidKey:I

    .line 2302
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentIndex:I

    iput v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidIndex:I

    .line 2303
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTapCount:I

    iput v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidTapCount:I

    .line 2304
    const/4 v8, 0x1

    goto :goto_0

    .line 2307
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapClearInvalid()V

    goto :goto_0

    .line 2311
    :cond_6
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "stroke"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 2314
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 2315
    .local v6, "inlineWordlen":I
    const/4 v0, 0x3

    if-ne p2, v0, :cond_7

    const/4 v0, 0x2

    if-lt v6, v0, :cond_7

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x4e28

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v6, -0x2

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x4e36

    if-eq v0, v1, :cond_2

    .line 2321
    :cond_7
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-object v1, p1

    move v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v7

    .line 2322
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/EditState;->characterTyped(C)V

    goto :goto_0

    .line 2325
    .end local v6    # "inlineWordlen":I
    :cond_8
    if-eqz p3, :cond_1

    .line 2326
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-object v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v7

    .line 2328
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/EditState;->characterTyped(C)V

    .line 2329
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isMixedInput()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTone:Z

    if-nez v0, :cond_b

    .line 2331
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2332
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getExactWord(Ljava/lang/StringBuffer;)V

    .line 2333
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isValidExactKeyboardPhrase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2334
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_a

    .line 2336
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_9

    .line 2337
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 2338
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 2351
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasTone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2352
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 2353
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    goto/16 :goto_0

    .line 2341
    :cond_a
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 2342
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    goto :goto_2

    .line 2347
    :cond_b
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 2348
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 2349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    goto :goto_2

    .line 2362
    :cond_c
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto/16 :goto_1
.end method

.method private handleSeparator(I[I)V
    .locals 3
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v1, 0x1

    .line 2380
    const/16 v0, 0x3f

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPhoneticKeypad()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2423
    :cond_1
    :goto_0
    return-void

    .line 2383
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 2384
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInineAltCharacters()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2387
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto :goto_0

    .line 2391
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2393
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isFullSentenceActive()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isHasSegmentDelimiter(Landroid/text/SpannableStringBuilder;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isComponent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2395
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashError()V

    goto :goto_0

    .line 2397
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2398
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashErrorIfNeededInStroke()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2402
    :cond_7
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_PUNCTUATION:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 2403
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2404
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 2405
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->commitComposingText()V

    .line 2410
    :goto_1
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto :goto_0

    .line 2408
    :cond_8
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    goto :goto_1

    .line 2415
    :cond_9
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recognitionCandidatesAvailable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2416
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->commitInlineWord()V

    .line 2417
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2420
    :cond_a
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    .line 2422
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private hasActiveKeySeq()Z
    .locals 1

    .prologue
    .line 3179
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapIsInvalid()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasDigitTone()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4660
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4669
    :cond_0
    :goto_0
    return v1

    .line 4664
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 4665
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x35

    if-gt v2, v3, :cond_2

    .line 4666
    const/4 v1, 0x1

    goto :goto_0

    .line 4664
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private hasTone()Z
    .locals 1

    .prologue
    .line 4142
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4144
    const/4 v0, 0x0

    .line 4146
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTone:Z

    goto :goto_0
.end method

.method private hideFunctionBarList()V
    .locals 1

    .prologue
    .line 5195
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-nez v0, :cond_0

    .line 5199
    :goto_0
    return-void

    .line 5198
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    goto :goto_0
.end method

.method private hideGridCandidatesView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3199
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mContextWindowShowing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3200
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->hideContextWindow(Landroid/view/View;)V

    .line 3201
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mContextWindowShowing:Z

    .line 3202
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->setMinimumHeight(I)V

    .line 3204
    :cond_0
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    .line 3205
    return-void
.end method

.method private hideSymbolView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3209
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->removeView(Landroid/view/View;)V

    .line 3210
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->setMinimumHeight(I)V

    .line 3211
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 3212
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSymbolKeyLabel(Z)V

    .line 3213
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsSymbolPageShown:Z

    .line 3214
    iput v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSelectedSymbolCategaryIndex:I

    .line 3215
    return-void
.end method

.method private initialSymbolList()V
    .locals 6

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$array;->chinese_symbol:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 317
    .local v3, "symbol":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v3    # "symbol":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$array;->chinese_common:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 321
    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 322
    .restart local v3    # "symbol":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseCommonList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 324
    .end local v3    # "symbol":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$array;->chinese_categray_simplified:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 325
    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 326
    .restart local v3    # "symbol":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseCategrayListSimplified:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 329
    .end local v3    # "symbol":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$array;->chinese_categray_traditional:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 330
    array-length v2, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 331
    .restart local v3    # "symbol":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseCategrayListTraditional:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 333
    .end local v3    # "symbol":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$array;->english_symbol:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 334
    array-length v2, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 335
    .restart local v3    # "symbol":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->englishSymbolList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 338
    .end local v3    # "symbol":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$array;->chinese_emotion:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 339
    array-length v2, v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 340
    .restart local v3    # "symbol":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseEmotionList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 343
    .end local v3    # "symbol":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$array;->chinese_network:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 344
    array-length v2, v0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    .line 345
    .restart local v3    # "symbol":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseNetworkList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 348
    .end local v3    # "symbol":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$array;->picture_symbols:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 349
    array-length v2, v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 350
    .restart local v3    # "symbol":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->pictureSymbolList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 352
    .end local v3    # "symbol":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private inputModeName2IntegralValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "inputModeName"    # Ljava/lang/String;

    .prologue
    .line 681
    const/4 v0, -0x1

    .line 683
    .local v0, "inputMode":I
    invoke-static {p1}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModePinyin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    const/4 v0, 0x0

    .line 697
    :cond_0
    :goto_0
    return v0

    .line 685
    :cond_1
    invoke-static {p1}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeZhuyin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 686
    const/4 v0, 0x1

    goto :goto_0

    .line 687
    :cond_2
    const-string v1, "stroke"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 689
    const/4 v0, 0x2

    goto :goto_0

    .line 690
    :cond_3
    const-string v1, "doublepinyin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 691
    const/4 v0, 0x3

    goto :goto_0

    .line 692
    :cond_4
    invoke-static {p1}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeCangjie(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 693
    const/4 v0, 0x4

    goto :goto_0

    .line 694
    :cond_5
    invoke-static {p1}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeQuickCangjie(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private isAllNumberOneRemoved()Z
    .locals 1

    .prologue
    .line 4940
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPressedNumOneKey:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAlphabeticCharacter(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 5024
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAltCharacterToggled()Z
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getAltCharacterConverted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCangjieKeypad()Z
    .locals 2

    .prologue
    .line 2872
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 2873
    .local v0, "mode":Ljava/lang/String;
    const-string v1, "cangjie_nine_keys"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "quick_cangjie_nine_keys"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isComponent()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 4160
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v5, 0x1e

    invoke-virtual {v1, v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/util/List;

    move-result-object v0

    .line 4162
    .local v0, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v3, 0x9fff

    if-ne v1, v3, :cond_0

    .line 4165
    const/4 v1, 0x1

    .line 4168
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isHasSegmentDelimiter(Landroid/text/SpannableStringBuilder;)Z
    .locals 1
    .param p1, "inlineString"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 3071
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isHasSegmentDelimiter()Z

    move-result v0

    return v0
.end method

.method private isModeBPMF()Z
    .locals 1

    .prologue
    .line 2897
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeZhuyin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isModeCangjie()Z
    .locals 2

    .prologue
    .line 2866
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 2867
    .local v0, "mode":Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeCangjie(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeQuickCangjie(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isModeDoublePinyin()Z
    .locals 2

    .prologue
    .line 2892
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "doublepinyin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isModeNineKeyPinyin()Z
    .locals 1

    .prologue
    .line 2888
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->isChineseNineKeyPinyin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isModePinyin()Z
    .locals 1

    .prologue
    .line 2883
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModePinyin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isModeStroke()Z
    .locals 2

    .prologue
    .line 2901
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "stroke"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNumberTypeInputField()Z
    .locals 1

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-nez v0, :cond_0

    .line 1576
    const/4 v0, 0x0

    .line 1578
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v0

    goto :goto_0
.end method

.method private isPhoneticKeypad()Z
    .locals 2

    .prologue
    .line 2878
    const-string v0, "pinyin_nine_keys"

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v1, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "zhuyin_nine_keys"

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v1, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isQwertyLayout()Z
    .locals 2

    .prologue
    .line 3067
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidExactKeyboardPhrase(Ljava/lang/String;)Z
    .locals 6
    .param p1, "exactWord"    # Ljava/lang/String;

    .prologue
    .line 6161
    const/4 v3, 0x0

    .line 6162
    .local v3, "valid":Z
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 6163
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->chineseDelimiter()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 6164
    .local v0, "delimiter":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6165
    const/4 v3, 0x1

    .line 6169
    .end local v0    # "delimiter":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6171
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6172
    .local v2, "inlineWord":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 6173
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x5

    if-ge v1, v4, :cond_1

    .line 6174
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mBPMFTones:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6175
    const/4 v3, 0x0

    .line 6176
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v4, :cond_1

    .line 6177
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 6184
    .end local v1    # "i":I
    .end local v2    # "inlineWord":Ljava/lang/String;
    :cond_1
    return v3

    .line 6173
    .restart local v1    # "i":I
    .restart local v2    # "inlineWord":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isZhuyinTone(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1582
    const/16 v0, 0xb5

    if-gt p1, v0, :cond_0

    const/16 v0, 0xb1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchAddOnDictionary()V
    .locals 2

    .prologue
    .line 4974
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleClose()V

    .line 4975
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 4976
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showAddonDictionaries()V

    .line 4977
    return-void
.end method

.method private loadKeyboardGesture()V
    .locals 3

    .prologue
    .line 1925
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    .line 1927
    if-eqz v2, :cond_0

    .line 1930
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getGestureManager()Lcom/nuance/swype/input/GestureManager;

    move-result-object v0

    .line 1931
    .local v0, "gestureManager":Lcom/nuance/swype/input/GestureManager;
    invoke-virtual {v0}, Lcom/nuance/swype/input/GestureManager;->loadGestures()Z

    .line 1932
    invoke-virtual {v0}, Lcom/nuance/swype/input/GestureManager;->getGestures()Ljava/util/List;

    move-result-object v1

    .line 1933
    .local v1, "gestures":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->loadGestures(Ljava/util/List;)Z

    .line 1935
    .end local v0    # "gestureManager":Lcom/nuance/swype/input/GestureManager;
    .end local v1    # "gestures":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;>;"
    :cond_0
    return-void
.end method

.method private loadSettings()V
    .locals 7

    .prologue
    const/16 v6, 0x900

    const/16 v5, 0x600

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4184
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 4185
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    .line 4186
    .local v1, "lastHandwritingOn":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteChineseBuildEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4187
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_0
    iget v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    if-ne v2, v6, :cond_b

    .line 4189
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isTraceBuildEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    .line 4190
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputModeHandwritingOnkeyboardKey(Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    .line 4198
    :goto_0
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    .line 4199
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    if-nez v2, :cond_2

    .line 4200
    if-eqz v1, :cond_1

    .line 4202
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, p0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 4203
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->finishSession()V

    .line 4205
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingOnKeyboardKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 4208
    iget v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    if-ne v2, v5, :cond_d

    .line 4209
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getTraceOnKeyboardKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 4225
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isTraceBuildEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4226
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getTraceOnKeyboardKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTraceOn:Z

    .line 4228
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    if-eq v2, v6, :cond_6

    .line 4230
    :cond_5
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTraceOn:Z

    .line 4232
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mBPMFTones:[Ljava/lang/String;

    if-nez v2, :cond_7

    .line 4233
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$array;->bpmf_tones:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mBPMFTones:[Ljava/lang/String;

    .line 4236
    :cond_7
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateKbdTraceState()V

    .line 4237
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    if-eq v2, v5, :cond_9

    :cond_8
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4240
    :cond_9
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setPressDownPreviewEnabled(Z)V

    .line 4242
    :cond_a
    return-void

    .line 4195
    :cond_b
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputModeHandwritingOnkeyboardKey(Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    goto/16 :goto_0

    :cond_c
    move v2, v4

    .line 4198
    goto/16 :goto_1

    .line 4213
    :cond_d
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v2

    if-nez v2, :cond_e

    .line 4214
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getTraceOnKeyboardKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 4218
    :cond_e
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getTraceOnKeyboardKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2
.end method

.method private moveCursorToMiddle(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .locals 11
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 5478
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$string;->mappings_symbol:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 5479
    .local v6, "mapping":[C
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5480
    .local v5, "map":Ljava/lang/StringBuilder;
    move-object v0, v6

    .local v0, "arr$":[C
    array-length v4, v6

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-char v1, v0, v3

    .line 5481
    .local v1, "c":C
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5480
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5483
    .end local v1    # "c":C
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 5484
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 5485
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x7d0

    const/4 v10, 0x0

    invoke-interface {p1, v9, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5486
    .local v7, "s":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 5487
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {p1, v8, v9}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 5492
    .end local v7    # "s":Ljava/lang/String;
    :cond_1
    return-void

    .line 5483
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private moveHighlightToHeardOrTail(Z)Z
    .locals 7
    .param p1, "head"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 6022
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v5, v5, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 6024
    :cond_0
    if-eqz p1, :cond_2

    .line 6025
    const/16 v3, 0x7a

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyToApplication(I)V

    :goto_0
    move v3, v4

    .line 6078
    :cond_1
    :goto_1
    return v3

    .line 6027
    :cond_2
    const/16 v3, 0x7b

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyToApplication(I)V

    goto :goto_0

    .line 6032
    :cond_3
    if-nez p1, :cond_7

    .line 6033
    const/4 v2, 0x0

    .line 6034
    .local v2, "wordCandidatesCount":I
    const/4 v0, 0x0

    .line 6036
    .local v0, "istoomany":Z
    :goto_2
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v4, v4, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_4

    .line 6037
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v4, v4, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 6038
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    sub-int v4, v2, v4

    const/16 v5, 0x3c

    if-lt v4, v5, :cond_5

    .line 6039
    const/4 v0, 0x1

    .line 6046
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 6047
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->requestLayout()V

    .line 6048
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->invalidate()V

    .line 6050
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ge v4, v2, :cond_1

    .line 6051
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6052
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 6053
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v4, v4, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 6054
    .local v1, "word":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 6055
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6056
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 6057
    if-nez v0, :cond_6

    .line 6058
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollEnd()V

    goto :goto_1

    .line 6042
    .end local v1    # "word":Ljava/lang/CharSequence;
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->addMoreSuggestions()V

    goto :goto_2

    .line 6059
    .restart local v1    # "word":Ljava/lang/CharSequence;
    :cond_6
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v5, v5, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    aget v5, v5, v6

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getLeftDistance()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateScrollPosition(I)V

    goto/16 :goto_1

    .line 6063
    .end local v0    # "istoomany":Z
    .end local v1    # "word":Ljava/lang/CharSequence;
    .end local v2    # "wordCandidatesCount":I
    :cond_7
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-eqz v5, :cond_1

    .line 6065
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 6066
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->requestLayout()V

    .line 6067
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->invalidate()V

    .line 6069
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6070
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 6071
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v4, v4, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 6072
    .restart local v1    # "word":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 6073
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6074
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 6075
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollHead()V

    goto/16 :goto_1
.end method

.method private moveHighlightToWordListNearCandidate(I)V
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    const/4 v4, 0x1

    .line 5973
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6018
    :cond_0
    :goto_0
    return-void

    .line 5976
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setScrollContainer(Z)V

    .line 5977
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->enableHighlight()V

    .line 5978
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v2, v2, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 5979
    .local v1, "wordCandidatesCount":I
    const/4 v0, 0x0

    .line 5980
    .local v0, "isRight":Ljava/lang/Boolean;
    const/16 v2, 0x16

    if-ne p1, v2, :cond_4

    .line 5981
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 5985
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    .line 5988
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-gtz v2, :cond_5

    .line 5989
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getLeftArrowStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5990
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    goto :goto_0

    .line 5982
    :cond_4
    const/16 v2, 0x15

    if-ne p1, v2, :cond_2

    .line 5983
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 5995
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5996
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 6002
    :goto_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 6003
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v2, v2, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6005
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 6006
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->requestLayout()V

    .line 6007
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isKeyOutofRightBound(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6008
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v3, v3, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    aget v3, v3, v4

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getLeftDistance()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateScrollPosition(I)V

    .line 6016
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    goto/16 :goto_0

    .line 5997
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5998
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_2

    .line 6010
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isKeyOutofLeftBound(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6011
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_0

    .line 6013
    :cond_9
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-gtz v2, :cond_a

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6014
    :cond_a
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollPrev()V

    goto :goto_3
.end method

.method private performDelayWriteRecognition()V
    .locals 2

    .prologue
    .line 3776
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 3777
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCachedWritePoints:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onWrite(Ljava/util/List;)V

    .line 3779
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->resetWrite()V

    .line 3780
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->invalidate()V

    .line 3781
    return-void
.end method

.method private postDelayResumeSpeech()V
    .locals 4

    .prologue
    const/16 v1, 0xb

    .line 669
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 673
    return-void
.end method

.method private produceAltCharacterText()V
    .locals 10

    .prologue
    .line 4980
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->altCharacterText:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v7

    if-nez v7, :cond_1

    .line 5019
    :cond_0
    :goto_0
    return-void

    .line 4984
    :cond_1
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4985
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->altCharacterText:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$string;->mappings_keypad_pinyin:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4988
    :cond_2
    new-instance v5, Ljava/util/TreeSet;

    new-instance v7, Lcom/nuance/swype/input/chinese/ChineseInputView$14;

    invoke-direct {v7, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$14;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    invoke-direct {v5, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 4996
    .local v5, "keySet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    .local v0, "arr$":[Lcom/nuance/swype/input/KeyboardEx$Key;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v6, :cond_4

    aget-object v4, v0, v2

    .line 4997
    .local v4, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v7, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    iget-object v7, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-direct {p0, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAlphabeticCharacter(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4998
    invoke-interface {v5, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 4996
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5002
    .end local v4    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_4
    invoke-interface {v5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 5003
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 5004
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 5005
    .restart local v4    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v7, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_5

    .line 5006
    iget-object v1, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    .line 5010
    .local v1, "csAltLabel":Ljava/lang/CharSequence;
    if-nez v1, :cond_6

    .line 5012
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->altCharacterText:Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 5014
    :cond_6
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->altCharacterText:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 5018
    .end local v1    # "csAltLabel":Ljava/lang/CharSequence;
    .end local v4    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_7
    invoke-interface {v5}, Ljava/util/SortedSet;->clear()V

    goto :goto_0
.end method

.method private readStyles(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/high16 v6, -0x10000

    .line 3105
    sget v4, Lcom/nuance/swype/input/R$style;->InlineStringChinese:I

    sget-object v5, Lcom/nuance/swype/input/R$styleable;->InlineStringChinese:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3108
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 3110
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 3111
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 3113
    .local v1, "attr":I
    sget v4, Lcom/nuance/swype/input/R$styleable;->InlineStringChinese_isUnderlined:I

    if-ne v1, v4, :cond_1

    .line 3114
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3115
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mUnderline:Landroid/text/style/UnderlineSpan;

    .line 3110
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3117
    :cond_1
    sget v4, Lcom/nuance/swype/input/R$styleable;->InlineStringChinese_errorFlashBackgroundColor:I

    if-ne v1, v4, :cond_2

    .line 3118
    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mErrorFlashBackground:Landroid/text/style/BackgroundColorSpan;

    goto :goto_1

    .line 3120
    :cond_2
    sget v4, Lcom/nuance/swype/input/R$styleable;->InlineStringChinese_invalidForegroundColor:I

    if-ne v1, v4, :cond_0

    .line 3121
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidForeground:Landroid/text/style/ForegroundColorSpan;

    goto :goto_1

    .line 3125
    .end local v1    # "attr":I
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3128
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPntWrite:Landroid/graphics/Paint;

    .line 3129
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPntWrite:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3130
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPntWrite:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 3131
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPntWrite:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 3132
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPntWrite:Landroid/graphics/Paint;

    iget v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 3133
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPntWrite:Landroid/graphics/Paint;

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3134
    return-void
.end method

.method private recognitionCandidatesAvailable()Z
    .locals 1

    .prologue
    .line 4172
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recordActiveWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "spelling"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 2207
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    .line 2208
    .local v0, "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    if-eqz v0, :cond_0

    .line 2209
    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordActiveWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    :cond_0
    return-void
.end method

.method private recordCommittedSentence(Ljava/lang/String;)V
    .locals 2
    .param p1, "sentence"    # Ljava/lang/String;

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    .line 2215
    .local v0, "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    if-eqz v0, :cond_0

    .line 2216
    invoke-interface {v0, p1}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordCommittedSentence(Ljava/lang/String;)V

    .line 2218
    :cond_0
    return-void
.end method

.method private recordSetContext(Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Ljava/lang/String;

    .prologue
    .line 2221
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    .line 2222
    .local v0, "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    if-eqz v0, :cond_0

    .line 2223
    invoke-interface {v0, p1}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordSetContext(Ljava/lang/String;)V

    .line 2225
    :cond_0
    return-void
.end method

.method private recordTextBuffer()V
    .locals 3

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    .line 715
    .local v0, "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    if-eqz v0, :cond_0

    .line 716
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getInputContents()Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 718
    invoke-interface {v0, v1}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordTextBuffer(Ljava/lang/String;)V

    .line 721
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private removeDelayWriteRecognitionMsg()V
    .locals 2

    .prologue
    .line 3772
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDelayWriteRecognizeHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3773
    return-void
.end method

.method private resetWrite()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3749
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mVctWrite:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3750
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mVctWrite:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3753
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWritePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3754
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWritePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3757
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteStrokes:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 3758
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteStrokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3760
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCachedWritePoints:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 3761
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCachedWritePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3763
    :cond_3
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsWriting:Z

    .line 3764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteNewSession:Z

    .line 3765
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRepaintWrite:Z

    .line 3766
    return-void
.end method

.method private selectDefault()V
    .locals 3

    .prologue
    .line 2909
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 2910
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys()Z

    .line 2911
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapClearInvalid()V

    .line 2912
    return-void
.end method

.method private selectSymbolCategory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3218
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->removeView(Landroid/view/View;)V

    .line 3219
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->setMinimumHeight(I)V

    .line 3220
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSymbolKeyLabel(Z)V

    .line 3221
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsSymbolPageShown:Z

    .line 3222
    iput v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSelectedSymbolCategaryIndex:I

    .line 3223
    return-void
.end method

.method private sendPlaceHolderKey(ILjava/util/List;J)V
    .locals 9
    .param p1, "placeHolder"    # I
    .param p3, "eventTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p2, "indexList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1533
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    .line 1536
    invoke-direct {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 1537
    invoke-direct {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 1538
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->produceAltCharacterText()V

    .line 1539
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setAltCharacterConverted(Z)V

    .line 1541
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v0, :cond_2

    .line 1543
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1545
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getExactInputText(Ljava/lang/StringBuilder;)Z

    move-result v0

    .line 1546
    if-eqz v0, :cond_0

    .line 1547
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1548
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertToAltCharacters(Ljava/lang/StringBuilder;)Z

    .line 1553
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertedCharacterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1554
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertedCharacterList:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1556
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertedCharacterList:Ljava/util/List;

    invoke-virtual {v0, v1, v7}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 1557
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recognitionCandidatesAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1559
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 1560
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1561
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1564
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 1565
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 1566
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInlineAltCharacters()V

    .line 1569
    :cond_2
    return-void
.end method

.method private setContext(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "context"    # Ljava/lang/CharSequence;
    .param p2, "update"    # Z

    .prologue
    .line 788
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v0, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setContext(Ljava/lang/CharSequence;Z)Z

    .line 792
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 793
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recordSetContext(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWordListToSuggestions(Ljava/util/List;Ljava/util/List;)V
    .locals 6
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
    .local p1, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p2, "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2723
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPressedNumOneKey:Z

    .line 2724
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2725
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setAltCharacterConverted(Z)V

    .line 2726
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/FunctionBarListView;->clear()V

    .line 2727
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 2729
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 2730
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 2732
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getAutoImportContacts()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    sget-object v5, Lcom/nuance/swype/input/chinese/ChineseInputView;->SHOW_CONATCT_MENU_TOAST:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2734
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2735
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v2

    const/4 v5, 0x6

    if-ne v2, v5, :cond_3

    .line 2737
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showHowToUseToast()V

    .line 2742
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_2

    .line 2743
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2744
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getExactWord(Ljava/lang/StringBuffer;)V

    .line 2745
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isValidExactKeyboardPhrase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2746
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isExactKeyboardShowable()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2749
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, p1, v3, p2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;ILjava/util/List;)V

    .line 2751
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    .line 2752
    .local v1, "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    if-eqz v1, :cond_2

    .line 2753
    invoke-interface {v1, p1}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordSelectionListOptionString(Ljava/util/List;)V

    .line 2756
    .end local v1    # "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    :cond_2
    return-void

    .line 2734
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_4
    move v2, v4

    .line 2746
    goto :goto_1
.end method

.method private showAddOnDictionary()V
    .locals 4

    .prologue
    .line 4946
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4947
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 4948
    .local v1, "userPref":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreement()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreementNotAsk()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4949
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    new-instance v3, Lcom/nuance/swype/input/chinese/ChineseInputView$13;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$13;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    invoke-static {v2, v3}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 4964
    .local v0, "cndlg":Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/IME;->attachDialog(Landroid/app/Dialog;)V

    .line 4965
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4971
    .end local v0    # "cndlg":Landroid/app/AlertDialog;
    .end local v1    # "userPref":Lcom/nuance/swype/input/UserPreferences;
    :goto_0
    return-void

    .line 4970
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->launchAddOnDictionary()V

    goto :goto_0
.end method

.method private showConvertedCandidates()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5096
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 5127
    :cond_1
    :goto_0
    return v0

    .line 5099
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5101
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5102
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getExactInputText(Ljava/lang/StringBuilder;)Z

    .line 5114
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertToAltCharacters(Ljava/lang/StringBuilder;)Z

    move-result v0

    .line 5116
    .local v0, "success":Z
    if-eqz v0, :cond_1

    .line 5118
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertedCharacterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 5119
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertedCharacterList:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5120
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_1

    .line 5121
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertedCharacterList:Ljava/util/List;

    invoke-virtual {v2, v3, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 5122
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 5123
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    goto :goto_0

    .line 5104
    .end local v0    # "success":Z
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getExactWord(Ljava/lang/StringBuffer;)I

    .line 5105
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 5107
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    move v0, v1

    .line 5110
    goto :goto_0
.end method

.method private showFunctionBarList()V
    .locals 1

    .prologue
    .line 5173
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-nez v0, :cond_1

    .line 5192
    :cond_0
    :goto_0
    return-void

    .line 5176
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recognitionCandidatesAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5178
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 5179
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 5180
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 5181
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 5182
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    goto :goto_0

    .line 5185
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 5186
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 5187
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hidePhraseListView()V

    .line 5188
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 5189
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showFunctionBarListView()V

    .line 5190
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    goto :goto_0
.end method

.method private showGridCandidatesView(Ljava/util/List;)V
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
    .line 3446
    .local p1, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showGridCandidatesView(Ljava/util/List;Ljava/util/List;)V

    .line 3447
    return-void
.end method

.method private showGridCandidatesView(Ljava/util/List;Ljava/util/List;)V
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
    .line 3451
    .local p1, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p2, "aWordSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3616
    :cond_0
    :goto_0
    return-void

    .line 3453
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mContextWindowShowing:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 3455
    invoke-super/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->isSpeechViewShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3459
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupDataList:Ljava/util/List;

    .line 3460
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3461
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    .line 3462
    .local v10, "cs":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const v4, 0x9fff

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    invoke-interface {v10, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x7e

    if-eq v3, v4, :cond_2

    .line 3463
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->showDataList:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3467
    .end local v10    # "cs":Ljava/lang/CharSequence;
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hidePhraseListView()V

    .line 3470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v3, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isMixedInput()Z

    move-result v3

    if-nez v3, :cond_9

    .line 3471
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 3472
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 3473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getHeight()I

    move-result v8

    .line 3474
    .local v8, "candidateHeight":I
    if-eqz v8, :cond_8

    .line 3475
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHeight()I

    move-result v3

    add-int v7, v3, v8

    .line 3486
    .end local v8    # "candidateHeight":I
    .local v7, "height":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v17

    .line 3487
    .local v17, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v3, v7}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->setMinimumHeight(I)V

    .line 3489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move/from16 v0, v17

    if-eq v3, v0, :cond_5

    .line 3490
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    .line 3492
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    if-nez v3, :cond_6

    .line 3494
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 3495
    .local v13, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 3497
    sget v3, Lcom/nuance/swype/input/R$layout;->candidates_popup:I

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    .line 3500
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3503
    .local v16, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3504
    const/high16 v3, -0x80000000

    move/from16 v0, v17

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 3505
    .local v18, "widthMeasureSpec":I
    const/high16 v3, -0x80000000

    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 3506
    .local v11, "heightMeasureSpec":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    move/from16 v0, v18

    invoke-virtual {v3, v0, v11}, Landroid/view/View;->measure(II)V

    .line 3508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    .line 3509
    .local v15, "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 3510
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setWordSource(Ljava/util/List;)V

    .line 3511
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setDoubleBuffered(Z)V

    .line 3513
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 3514
    .local v9, "closeButton":Landroid/view/View;
    new-instance v3, Lcom/nuance/swype/input/chinese/ChineseInputView$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView$4;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    invoke-virtual {v9, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3540
    new-instance v3, Lcom/nuance/swype/input/chinese/ChineseInputView$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView$5;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    invoke-virtual {v9, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3559
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->scroll_view:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    .line 3560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    .line 3563
    .end local v9    # "closeButton":Landroid/view/View;
    .end local v11    # "heightMeasureSpec":I
    .end local v13    # "inflater":Landroid/view/LayoutInflater;
    .end local v15    # "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    .end local v16    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v18    # "widthMeasureSpec":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 3564
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 3565
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setWordSource(Ljava/util/List;)V

    .line 3566
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->showDataList:Ljava/util/List;

    .line 3567
    .local v14, "keyboardDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setGridCandidates(Ljava/util/List;I)V

    .line 3568
    new-instance v2, Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$xml;->kbd_chinese_popup_template:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v6

    invoke-direct/range {v2 .. v7}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/util/List;II)V

    .line 3570
    .local v2, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 3571
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    .line 3573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->showDataList:Ljava/util/List;

    if-eqz v3, :cond_7

    .line 3574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->showDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 3577
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    new-instance v4, Lcom/nuance/swype/input/chinese/ChineseInputView$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView$6;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;Lcom/nuance/swype/input/KeyboardEx;)V

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 3612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v5

    invoke-direct {v4, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->showContextWindow(Landroid/view/View;)V

    .line 3615
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mContextWindowShowing:Z

    goto/16 :goto_0

    .line 3478
    .end local v2    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    .end local v7    # "height":I
    .end local v14    # "keyboardDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v17    # "width":I
    .restart local v8    # "candidateHeight":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$dimen;->candidates_list_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int v7, v3, v4

    .line 3482
    .restart local v7    # "height":I
    goto/16 :goto_2

    .line 3483
    .end local v7    # "height":I
    .end local v8    # "candidateHeight":I
    :cond_9
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 3484
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHeight()I

    move-result v7

    .restart local v7    # "height":I
    goto/16 :goto_2

    .restart local v17    # "width":I
    :cond_a
    move-object/from16 v14, p1

    .line 3566
    goto/16 :goto_3
.end method

.method private showHowToUseToast()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 4108
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 4109
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->SHOW_CONATCT_MENU_TOAST:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4110
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->SHOW_CONATCT_MENU_TOAST:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 4111
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->contact_action_menu_toast:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v2, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 4115
    :cond_0
    return-void
.end method

.method private showPinyinSelectionList(Ljava/util/List;IZ)V
    .locals 3
    .param p2, "activePrefixIndex"    # I
    .param p3, "highlightPrefix"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 3226
    .local p1, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3261
    :cond_0
    :goto_0
    return-void

    .line 3228
    :cond_1
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v1, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isMixedInput()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3231
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v1, p1, p2}, Lcom/nuance/swype/input/chinese/SpellListView;->setSuggestions(Ljava/util/List;I)V

    .line 3233
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    .line 3234
    .local v0, "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    if-eqz v0, :cond_2

    .line 3235
    invoke-interface {v0, p1}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordSelectionListOptionString(Ljava/util/List;)V

    .line 3238
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3242
    :cond_3
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    if-eqz v1, :cond_4

    .line 3243
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showSpellPrefixSuffixList()V

    .line 3250
    .end local v0    # "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3253
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTraceInputEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3255
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    if-eqz v1, :cond_0

    .line 3258
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTabletDevice()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPhoneticKeypad()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->setSpellPrefix(Z)V

    .line 3260
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->showPrefixList(Ljava/util/List;IZ)V

    goto :goto_0

    .line 3258
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private showSymbolPopup(Ljava/util/List;IZ)V
    .locals 13
    .param p2, "highlightIndex"    # I
    .param p3, "selectCategory"    # Z
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
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 4518
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4519
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v11, v1, 0x5

    .line 4523
    .local v11, "width":I
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v5

    .line 4524
    .local v5, "height":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopup:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v1, v11, :cond_0

    .line 4525
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopup:Landroid/view/View;

    .line 4527
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopup:Landroid/view/View;

    if-nez v1, :cond_1

    .line 4528
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 4529
    .local v8, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 4531
    sget v1, Lcom/nuance/swype/input/R$layout;->symbol_popup:I

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopup:Landroid/view/View;

    .line 4533
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v10, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4536
    .local v10, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopup:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4537
    move v12, v11

    .line 4538
    .local v12, "widthMeasureSpec":I
    const/high16 v1, -0x80000000

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 4539
    .local v7, "heightMeasureSpec":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopup:Landroid/view/View;

    invoke-virtual {v1, v12, v7}, Landroid/view/View;->measure(II)V

    .line 4541
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopup:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    .line 4542
    .local v9, "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    invoke-virtual {v9, p0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 4543
    invoke-virtual {v9, p1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setSymbolSource(Ljava/util/List;)V

    .line 4544
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setDoubleBuffered(Z)V

    .line 4545
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopup:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->scroll_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopupScrollView:Landroid/widget/ScrollView;

    .line 4546
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopup:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    .line 4548
    .end local v7    # "heightMeasureSpec":I
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v9    # "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    .end local v10    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "widthMeasureSpec":I
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->setMinimumHeight(I)V

    .line 4549
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopupScrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 4550
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopupScrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 4551
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 4552
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setSymbolSource(Ljava/util/List;)V

    .line 4553
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopupScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v4

    .line 4554
    .local v4, "showWidth":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopupScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_2

    .line 4555
    move v4, v11

    .line 4557
    :cond_2
    invoke-virtual {p0, p1, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setGridCandidates(Ljava/util/List;I)V

    .line 4558
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$xml;->kbd_chinese_symbol_template:I

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/util/List;IILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 4560
    .local v0, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    new-instance v2, Lcom/nuance/swype/input/chinese/ChineseInputView$10;

    invoke-direct {v2, p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView$10;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;Lcom/nuance/swype/input/KeyboardEx;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 4585
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopupScrollView:Landroid/widget/ScrollView;

    new-instance v2, Lcom/nuance/swype/input/chinese/ChineseInputView$11;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$11;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4607
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    new-instance v2, Lcom/nuance/swype/input/chinese/ChineseInputView$12;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$12;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4628
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 4629
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->keypadSymbolLayout:Landroid/widget/FrameLayout$LayoutParams;

    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 4630
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->keypadSymbolLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4631
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->keypadSymbolLayout:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4632
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4633
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->keypadSymbolLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 4637
    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopup:Landroid/view/View;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->keypadSymbolLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4638
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolPopup:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->addView(Landroid/view/View;)V

    .line 4639
    if-nez p3, :cond_3

    .line 4640
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getChineseCategoryList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, p2, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 4642
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSymbolKeyLabel(Z)V

    .line 4643
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsSymbolPageShown:Z

    .line 4644
    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v2, 0x600

    if-eq v1, v2, :cond_4

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4647
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setPressDownPreviewEnabled(Z)V

    .line 4650
    :cond_5
    return-void

    .line 4521
    .end local v0    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    .end local v4    # "showWidth":I
    .end local v5    # "height":I
    .end local v11    # "width":I
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x48

    div-int/lit8 v11, v1, 0x64

    .restart local v11    # "width":I
    goto/16 :goto_0

    .line 4635
    .restart local v0    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    .restart local v4    # "showWidth":I
    .restart local v5    # "height":I
    :cond_7
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->keypadSymbolLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0xe

    div-int/lit8 v2, v2, 0x64

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method private switchHandWritingOrTraceOnKeyboard()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 5424
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 5425
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    if-eqz v1, :cond_0

    .line 5426
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v1, p0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 5428
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->finishSession()V

    .line 5429
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingOnKeyboardKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 5430
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->getTraceOnKeyboardKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 5431
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->functionbar_hwtoggle_toast_off:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1, v2, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 5442
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 5443
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v1, v2, v5}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 5445
    return-void

    .line 5435
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingOnKeyboardKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 5436
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->getTraceOnKeyboardKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 5437
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->functionbar_hwtoggle_toast_on:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1, v2, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method

.method private updateAltCharacters(Ljava/util/List;Ljava/util/List;)I
    .locals 6
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
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p2, "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2680
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasTone()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recognitionCandidatesAvailable()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2686
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->confirmDisplayConvertedCandidates()Z

    .line 2688
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAllNumberOneRemoved()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2689
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->lastKeypadBilingualState:Z

    .line 2690
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v5, 0x1e

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/util/List;

    move-result-object p1

    .line 2692
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWordsSource()Ljava/util/List;

    move-result-object p2

    .line 2693
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setWordListToSuggestions(Ljava/util/List;Ljava/util/List;)V

    .line 2695
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPrefixes(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    move-result-object v0

    .line 2696
    .local v0, "prefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2697
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {p0, v0, v2, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 2699
    :cond_2
    invoke-direct {p0, v1, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 2704
    .end local v0    # "prefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 2716
    :goto_0
    return v1

    .line 2707
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setAltCharacterConverted(Z)V

    .line 2708
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 2709
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/FunctionBarListView;->showFunctionBar()V

    .line 2710
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPressedNumOneKey:Z

    .line 2711
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2712
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2715
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    move v1, v2

    .line 2716
    goto :goto_0
.end method

.method private updateClearKeyLabel(Z)V
    .locals 9
    .param p1, "isClearKey"    # Z

    .prologue
    .line 3011
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isShowVoiceKeyEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3013
    const/4 p1, 0x1

    .line 3018
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechProvider()I

    move-result v0

    .line 3020
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3021
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    .line 3022
    .local v6, "app":Lcom/nuance/swype/input/IMEApplication;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isTalkBackOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3023
    const/4 p1, 0x1

    .line 3026
    .end local v6    # "app":Lcom/nuance/swype/input/IMEApplication;
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3048
    :cond_3
    :goto_0
    return-void

    .line 3029
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3032
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieKeypad()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3033
    const/4 p1, 0x1

    .line 3035
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v8

    .line 3036
    .local v8, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    if-eqz v8, :cond_3

    instance-of v0, v8, Lcom/nuance/swype/input/XT9Keyboard;

    if-eqz v0, :cond_3

    .line 3037
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isNoMicrophone()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3039
    const/4 p1, 0x1

    :cond_6
    move-object v0, v8

    .line 3041
    check-cast v0, Lcom/nuance/swype/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v3

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTabletDevice()Z

    move-result v5

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/XT9Keyboard;->updateClearKeyLabel(ZZZZZ)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v7

    .line 3043
    .local v7, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v7, :cond_3

    .line 3044
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 3045
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsClearKeyLabelUpdated:Z

    goto :goto_0
.end method

.method private updateContext()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 803
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 824
    :cond_0
    :goto_0
    return v2

    .line 807
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 808
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 812
    const/4 v3, 0x2

    invoke-interface {v0, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 813
    .local v1, "newContext":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 817
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 818
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->breakContext()Z

    .line 819
    const/4 v2, 0x1

    goto :goto_0

    .line 821
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setContext(Ljava/lang/CharSequence;)Z

    .line 823
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recordSetContext(Ljava/lang/String;)V

    .line 824
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsIMEActive:Z

    goto :goto_0
.end method

.method private updateDelimiterKeyLabel(Z)V
    .locals 8
    .param p1, "isDelimiter"    # Z

    .prologue
    .line 2990
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3008
    :cond_0
    :goto_0
    return-void

    .line 2993
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2996
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2997
    const/4 p1, 0x0

    .line 2999
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    .line 3000
    .local v7, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    if-eqz v7, :cond_0

    instance-of v0, v7, Lcom/nuance/swype/input/XT9Keyboard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v7

    .line 3001
    check-cast v0, Lcom/nuance/swype/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v3

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTabletDevice()Z

    move-result v5

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/XT9Keyboard;->updateDelimiterKeyLabel(ZZZZZ)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v6

    .line 3003
    .local v6, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v6, :cond_0

    .line 3004
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 3005
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsDelimiterKeyLabelUpdated:Z

    goto :goto_0
.end method

.method private updateInline()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x121

    const/4 v5, 0x0

    .line 2945
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recognitionCandidatesAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2946
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v1, :cond_1

    .line 2987
    :cond_0
    :goto_0
    return-void

    .line 2948
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getInlineString(Landroid/text/SpannableStringBuilder;)Z

    .line 2949
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 2950
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recordActiveWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2953
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2954
    .local v0, "wd":Ljava/lang/String;
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "word length: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2955
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2956
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2957
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2961
    .end local v0    # "wd":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2962
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->doublePinyinTailKeyUnicode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2963
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->doublePinyinTailKeyUnicode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getTailDoublePinyinUnicode(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    .line 2964
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "Tail double pinyin unicode value: "

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->doublePinyinTailKeyUnicode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2967
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapIsInvalid()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2968
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidKey:I

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 2969
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidForeground:Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2973
    :cond_5
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 2974
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mUnderline:Landroid/text/style/UnderlineSpan;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 2978
    :cond_6
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    .line 2979
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCandidateSelectedEver:Z

    .line 2980
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDelimiterPressedEver:Z

    .line 2981
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTracedEver:Z

    .line 2982
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTone:Z

    .line 2983
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_0

    .line 2984
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    goto/16 :goto_0
.end method

.method private updateInlineAltCharacters()V
    .locals 6

    .prologue
    .line 5132
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 5133
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 5134
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 5135
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5136
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 5137
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mUnderline:Landroid/text/style/UnderlineSpan;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x121

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5141
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 5143
    :cond_1
    return-void
.end method

.method private updateInlineString(Z)V
    .locals 3
    .param p1, "setEmptyComposingText"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2923
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInline()V

    .line 2924
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2925
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2926
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2927
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsDelimiterKeyLabelUpdated:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v1, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDealGesture:Z

    if-nez v1, :cond_1

    .line 2930
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 2932
    :cond_1
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsClearKeyLabelUpdated:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v1, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDealGesture:Z

    if-nez v1, :cond_2

    .line 2935
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 2939
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2940
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->invalidateKeyboardImage()V

    .line 2942
    :cond_3
    return-void
.end method

.method private updateKbdTraceState()V
    .locals 2

    .prologue
    .line 1911
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isTraceBuildEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTraceOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isPhoneMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTraceEnabledOnKeyboard:Z

    .line 1922
    return-void

    .line 1911
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateListViews(ZZ)V
    .locals 1
    .param p1, "updateSpells"    # Z
    .param p2, "setEmptyComposingText"    # Z

    .prologue
    .line 2770
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2771
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 2775
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2777
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInlineAltCharacters()V

    .line 2797
    :goto_0
    return-void

    .line 2784
    :cond_0
    if-eqz p1, :cond_2

    .line 2785
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    if-eqz v0, :cond_2

    .line 2787
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updatePrefixes()V

    .line 2790
    :cond_2
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 2793
    :cond_3
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsUpdateInline:Z

    if-eqz v0, :cond_4

    .line 2794
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInlineString(Z)V

    .line 2796
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsUpdateInline:Z

    goto :goto_0
.end method

.method private updateMaxKeyTimeout()V
    .locals 1

    .prologue
    .line 3141
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->checkCurLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3149
    :goto_0
    return-void

    .line 3144
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isMaxKeysCangjieOrQuickCangjie()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mMutitapMaxKeyTimeout:Z

    goto :goto_0

    .line 3147
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mMutitapMaxKeyTimeout:Z

    goto :goto_0
.end method

.method private updatePrefixes()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 2439
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPhoneticKeypad()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTraceInputEnabled()Z

    move-result v7

    if-nez v7, :cond_b

    .line 2440
    const/4 v6, 0x1

    .line 2441
    .local v6, "updatePrefixList":Z
    const/4 v2, 0x1

    .line 2442
    .local v2, "isPrefix":Z
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7, v8}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPrefixes(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    move-result-object v4

    .line 2444
    .local v4, "prefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 2445
    const/4 v2, 0x0

    .line 2447
    :cond_0
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPinyinCandidates:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 2449
    .local v5, "prefixSize":I
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasBilingualPrefix()Z

    move-result v0

    .line 2450
    .local v0, "currentBilingual":Z
    if-lez v5, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_3

    .line 2451
    const/4 v6, 0x0

    .line 2460
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPinyinCandidates:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-le v5, v10, :cond_1

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPinyinCandidates:Ljava/util/List;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v5, -0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    iget-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->lastKeypadBilingualState:Z

    if-eq v7, v0, :cond_3

    .line 2465
    :cond_2
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->lastKeypadBilingualState:Z

    .line 2466
    const/4 v6, 0x1

    .line 2469
    :cond_3
    if-eqz v6, :cond_4

    .line 2470
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPinyinCandidates:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 2471
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 2472
    .local v3, "prefix":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPinyinCandidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2475
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "prefix":Ljava/lang/CharSequence;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 2476
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2477
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    if-eqz v7, :cond_6

    .line 2479
    if-eqz v0, :cond_5

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v7, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2482
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$string;->label_chn_eng_key:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2484
    :cond_5
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v7, v4, v9, v10}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->showPrefixList(Ljava/util/List;IZ)V

    .line 2547
    .end local v0    # "currentBilingual":Z
    .end local v2    # "isPrefix":Z
    .end local v4    # "prefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v5    # "prefixSize":I
    .end local v6    # "updatePrefixList":Z
    :cond_6
    :goto_1
    return-void

    .line 2490
    .restart local v0    # "currentBilingual":Z
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "isPrefix":Z
    .restart local v4    # "prefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v5    # "prefixSize":I
    .restart local v6    # "updatePrefixList":Z
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 2491
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2493
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_a

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v7, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v7

    if-nez v7, :cond_a

    .line 2496
    if-eqz v6, :cond_6

    .line 2497
    if-eqz v2, :cond_9

    .line 2498
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v0, :cond_9

    .line 2499
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$string;->label_chn_eng_key:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2502
    :cond_9
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-direct {p0, v4, v7, v10}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    goto :goto_1

    .line 2505
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsSymbolPageShown:Z

    if-nez v7, :cond_6

    .line 2506
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    invoke-direct {p0, v7, v9, v11}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    goto :goto_1

    .line 2509
    .end local v0    # "currentBilingual":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isPrefix":Z
    .end local v4    # "prefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v5    # "prefixSize":I
    .end local v6    # "updatePrefixList":Z
    :cond_b
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTraceInputEnabled()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isHasTraceInfo()Z

    move-result v7

    if-nez v7, :cond_d

    :cond_c
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v7, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isMixedInput()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2511
    :cond_d
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7, v8}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPrefixes(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    move-result-object v4

    .line 2512
    .restart local v4    # "prefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x1

    .line 2513
    .restart local v2    # "isPrefix":Z
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_e

    .line 2514
    const/4 v2, 0x0

    .line 2516
    :cond_e
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPrefixesCount()I

    move-result v8

    if-le v7, v8, :cond_f

    .line 2517
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2520
    :cond_f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 2521
    if-lez v7, :cond_11

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v7, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v7

    if-nez v7, :cond_11

    .line 2523
    if-eqz v2, :cond_6

    .line 2524
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasBilingualPrefix()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 2525
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$string;->label_chn_eng_key:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2526
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    .line 2527
    if-ne v7, v9, :cond_10

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActivePrefixIndex()I

    move-result v7

    const/16 v8, 0xfe

    if-ne v7, v8, :cond_10

    .line 2529
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2532
    :cond_10
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-direct {p0, v4, v7, v10}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    goto/16 :goto_1

    .line 2536
    :cond_11
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v7, :cond_6

    .line 2539
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/SpellListView;->clear()V

    .line 2540
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showSpellPrefixSuffixList()V

    goto/16 :goto_1
.end method

.method private updateSymbolKeyLabel(Z)V
    .locals 3
    .param p1, "isSymbolPage"    # Z

    .prologue
    .line 3051
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3063
    :cond_0
    :goto_0
    return-void

    .line 3054
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    .line 3055
    .local v1, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/nuance/swype/input/XT9Keyboard;

    if-eqz v2, :cond_0

    .line 3056
    check-cast v1, Lcom/nuance/swype/input/XT9Keyboard;

    .end local v1    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v2, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/nuance/swype/input/XT9Keyboard;->updateSymbolKeyLabel(ZZ)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 3058
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_0

    .line 3059
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->invalidateKeyboardImage()V

    .line 3060
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_0
.end method


# virtual methods
.method public DelayIdentifyTone()V
    .locals 3

    .prologue
    .line 2842
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getExactWord(Ljava/lang/StringBuffer;)V

    .line 2843
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2844
    .local v0, "keySeq":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->chineseDelimiter()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2847
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTone:Z

    .line 2851
    :goto_0
    return-void

    .line 2849
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTone:Z

    goto :goto_0
.end method

.method public allowsMoreKey()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2242
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isMaxKeysCangjieOrQuickCangjie()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2243
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mMutitapMaxKeyTimeout:Z

    if-eqz v1, :cond_1

    .line 2248
    :goto_0
    return v0

    .line 2246
    :cond_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mMutitapMaxKeyTimeout:Z

    .line 2248
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cancelDelayRecognition()V
    .locals 0

    .prologue
    .line 3808
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->removeDelayWriteRecognitionMsg()V

    .line 3809
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->resetWrite()V

    .line 3810
    return-void
.end method

.method protected checkMultiTap(JI)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "keyIndex"    # I

    .prologue
    .line 4855
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPhoneticKeypad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4859
    :cond_0
    :goto_0
    return-void

    .line 4858
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->checkMultiTap(JI)V

    goto :goto_0
.end method

.method protected clearAllKeys()V
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys()Z

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 935
    return-void
.end method

.method public clearCurrentActiveWord()V
    .locals 0

    .prologue
    .line 859
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInlineWord()V

    .line 860
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 861
    return-void
.end method

.method protected clearKeyboardState()V
    .locals 0

    .prologue
    .line 3848
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->clearKeyboardState()V

    .line 3849
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->resetWrite()V

    .line 3850
    return-void
.end method

.method protected clearSuggestions()V
    .locals 3

    .prologue
    .line 922
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 926
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 927
    return-void
.end method

.method public closeGridCandidatesView()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v8, -0x2

    const/high16 v7, -0x80000000

    .line 6083
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideGridCandidatesView()V

    .line 6084
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    if-nez v4, :cond_0

    .line 6085
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$layout;->candidates_popup:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    .line 6087
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    sget v5, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 6088
    new-instance v5, Lcom/nuance/swype/input/chinese/ChineseInputView$17;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$17;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6111
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    sget v5, Lcom/nuance/swype/input/R$id;->scroll_view:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    .line 6112
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    sget v5, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    iput-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    .line 6115
    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 6118
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6119
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getHeight()I

    move-result v5

    add-int v0, v4, v5

    .line 6120
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v4

    .line 6121
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 6122
    .local v3, "widthMeasureSpec":I
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 6123
    .local v1, "heightMeasureSpec":I
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v4, v3, v1}, Landroid/view/View;->measure(II)V

    .line 6125
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v4, :cond_1

    .line 6126
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 6127
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 6128
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActivePrefixIndex()I

    move-result v4

    const/16 v5, 0xfe

    if-ne v4, v5, :cond_1

    .line 6130
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setActivePrefixIndex(I)Z

    .line 6133
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6134
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updatePrefixes()V

    .line 6137
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    .line 6138
    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 6140
    return-void
.end method

.method public confirmDisplayConvertedCandidates()Z
    .locals 2

    .prologue
    .line 5203
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasTone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recognitionCandidatesAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActivePrefixIndex()I

    move-result v0

    const/16 v1, 0xfe

    if-eq v0, v1, :cond_2

    .line 5212
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showConvertedCandidates()Z

    move-result v0

    .line 5215
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 2
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "t9write"    # Lcom/nuance/input/swypecorelib/T9Write;
    .param p4, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 283
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 284
    check-cast p2, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .end local p2    # "xt9coreinput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    iput-object p2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .line 285
    check-cast p3, Lcom/nuance/input/swypecorelib/T9WriteChinese;

    .end local p3    # "t9write":Lcom/nuance/input/swypecorelib/T9Write;
    iput-object p3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    .line 286
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-direct {v0, p1, v1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 287
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 289
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseInputView$ChineseGetMoreWordsHandler;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$ChineseGetMoreWordsHandler;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$ChineseGetMoreWordsHandler;

    .line 292
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 294
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setProximityCorrectionEnabled(Z)V

    .line 296
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$integer;->chinese_delimiter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPYDelimiter:C

    .line 299
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->readStyles(Landroid/content/Context;)V

    .line 300
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->initialSymbolList()V

    .line 302
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->acChineseInput:Lcom/nuance/dlm/ACChineseInput;

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    new-instance v1, Lcom/nuance/swype/input/chinese/ChineseInputView$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$2;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect;->doPostStart(Ljava/lang/Runnable;)V

    .line 312
    :cond_0
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

    .line 387
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v2, :cond_0

    .line 439
    :goto_0
    return-object v1

    .line 391
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-nez v2, :cond_1

    .line 393
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 396
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/nuance/swype/input/R$layout;->chinese_candidates:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    .line 398
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->setKeyboardViewEx(Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 399
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->initViews()V

    .line 401
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getCJKCandidatesListView()Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 404
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getSpellPrefixSuffixWordListView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/SpellListView;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    .line 406
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V

    .line 407
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getFunctionBarListView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/FunctionBarListView;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    .line 410
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    new-instance v2, Lcom/nuance/swype/input/chinese/ChineseInputView$3;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v2, p0, v3, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$3;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->setOnFunctionBarListener(Lcom/nuance/swype/input/FunctionBarListView$OnFunctionBarListener;)V

    .line 422
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$ChineseGetMoreWordsHandler;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setGetMoreWordsHandler(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;)V

    .line 427
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/SpellListView;->setOnWordSelectActionListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V

    .line 430
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v1, :cond_2

    .line 431
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->finishSession()V

    .line 432
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->startSession()V

    .line 435
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 436
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 437
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    .line 439
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 359
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->destroy()V

    .line 360
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->acChineseInput:Lcom/nuance/dlm/ACChineseInput;

    if-eqz v0, :cond_0

    .line 361
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->acChineseInput:Lcom/nuance/dlm/ACChineseInput;

    invoke-virtual {v0}, Lcom/nuance/dlm/ACChineseInput;->release()V

    .line 362
    sput-object v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->acChineseInput:Lcom/nuance/dlm/ACChineseInput;

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteChineseBuildEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 368
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->finishSession()V

    .line 371
    :cond_1
    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 372
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->cancelQueryTask()V

    .line 373
    return-void
.end method

.method protected detectAndSendKeyWrapper(IIJ)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    const-wide/16 v6, 0x64

    const/16 v4, 0x3f0

    .line 5462
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedDefer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5463
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandler:Landroid/os/Handler;

    add-long v2, p3, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5469
    :goto_0
    return-void

    .line 5467
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->detectAndSendKey(IIJ)V

    goto :goto_0
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 1097
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCompletionOn:Z

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/Completions;->update([Landroid/view/inputmethod/CompletionInfo;)V

    .line 1099
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Completions;->getDisplayItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 1101
    :cond_0
    return-void
.end method

.method public finishInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 727
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v0, :cond_0

    .line 776
    :goto_0
    return-void

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->endSession()V

    .line 731
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 732
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->deactivateCategoryDatabase()V

    .line 734
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsIMEActive:Z

    .line 735
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->lastKeypadBilingualState:Z

    .line 736
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInternalStatus()V

    .line 738
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideSymbolView()V

    .line 739
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideGridCandidatesView()V

    .line 741
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->cancelDelayRecognition()V

    .line 742
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 743
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 744
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 745
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 746
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 747
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 749
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->acceptHWRRecognitionWord()Z

    move-result v0

    if-nez v0, :cond_1

    .line 750
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->commitComposingText()V

    .line 752
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsDelimiterKeyLabelUpdated:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 755
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 757
    :cond_2
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsClearKeyLabelUpdated:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 760
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 762
    :cond_3
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSymbolKeyLabel(Z)V

    .line 763
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->finishSession()V

    .line 765
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteChineseBuildEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_4

    .line 770
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 771
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->finishSession()V

    .line 773
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dimissRemoveUdbWordDialog()V

    .line 774
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->recycleBitmap()V

    .line 775
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    goto/16 :goto_0
.end method

.method public flushCurrentActiveWord()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 830
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->cancelQueryTask()V

    .line 832
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasBilingualPrefix()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActivePrefixIndex()I

    move-result v0

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_0

    .line 834
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->commitInlineWord()V

    .line 837
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefaultSuggestion()V

    .line 838
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->acceptHWRRecognitionWord()Z

    move-result v0

    if-nez v0, :cond_2

    .line 839
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsDelimiterKeyLabelUpdated:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 841
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 843
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsClearKeyLabelUpdated:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 845
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 849
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInternalStatus()V

    .line 850
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dimissRemoveUdbWordDialog()V

    .line 851
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->altCharacterText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 852
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    .line 853
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCandidateSelectedEver:Z

    .line 854
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTracedEver:Z

    .line 855
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInineAltCharacters()Z

    .line 856
    return-void
.end method

.method getHighlightVowels(I)[Ljava/lang/String;
    .locals 2
    .param p1, "consonant"    # I

    .prologue
    .line 5358
    packed-switch p1, :pswitch_data_0

    .line 5408
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5360
    :pswitch_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->b_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5362
    :pswitch_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->p_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5364
    :pswitch_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->m_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5366
    :pswitch_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->f_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5368
    :pswitch_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->d_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5370
    :pswitch_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->t_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5372
    :pswitch_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->n_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5374
    :pswitch_8
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->l_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5376
    :pswitch_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->g_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5378
    :pswitch_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->k_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5380
    :pswitch_b
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->h_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5382
    :pswitch_c
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->j_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5384
    :pswitch_d
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->q_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5386
    :pswitch_e
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->x_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5388
    :pswitch_f
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->zh_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5390
    :pswitch_10
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->ch_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5392
    :pswitch_11
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->sh_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5394
    :pswitch_12
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->r_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5396
    :pswitch_13
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->z_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5398
    :pswitch_14
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->c_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5400
    :pswitch_15
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->s_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5402
    :pswitch_16
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->y_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5404
    :pswitch_17
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->w_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5406
    :pswitch_18
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->star_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5358
    :pswitch_data_0
    .packed-switch 0xf231
        :pswitch_1
        :pswitch_14
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_d
        :pswitch_12
        :pswitch_15
        :pswitch_11
        :pswitch_6
        :pswitch_17
        :pswitch_e
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_18
    .end packed-switch
.end method

.method public getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .locals 2

    .prologue
    .line 3913
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 3915
    .local v0, "shiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShiftedPopupMenu:Z

    if-eqz v1, :cond_0

    .line 3918
    .end local v0    # "shiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :goto_0
    return-object v0

    .restart local v0    # "shiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :cond_0
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    goto :goto_0
.end method

.method public getWordCandidateListContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    return-object v0
.end method

.method public getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    return-object v0
.end method

.method public handleBackspace(I)Z
    .locals 4
    .param p1, "repeatedCount"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1598
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapIsInvalid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1599
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapClearInvalid()V

    .line 1646
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isMultitapping()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1647
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v1, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1649
    invoke-direct {p0, v3, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 1655
    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1656
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1657
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1658
    const-string v1, ""

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1663
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateMaxKeyTimeout()V

    .line 1664
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsDelimiterKeyLabelUpdated:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1665
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 1667
    :cond_1
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsClearKeyLabelUpdated:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1668
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 1670
    :cond_2
    :goto_2
    return v2

    .line 1600
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1601
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->deleteOneKeyAndRefresh()Z

    goto :goto_0

    .line 1603
    :cond_4
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recognitionCandidatesAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1605
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInlineWord()V

    .line 1606
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1607
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDealingBackspace:Z

    .line 1608
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 1609
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    goto :goto_2

    .line 1613
    :cond_5
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/FunctionBarListView;->isFunctionBarDisabledOrZeroItem()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1617
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 1633
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 1635
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsDelimiterKeyLabelUpdated:Z

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v1, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1637
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 1639
    :cond_7
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsClearKeyLabelUpdated:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v1, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1641
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    goto :goto_2

    .line 1622
    :cond_8
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isCandidateListEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1623
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->breakContext()Z

    .line 1624
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 1627
    :cond_9
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDealingBackspace:Z

    .line 1628
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1629
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    goto :goto_3

    .line 1651
    :cond_a
    invoke-direct {p0, v2, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto/16 :goto_1
.end method

.method public handleCharKey(Landroid/graphics/Point;I[IJ)V
    .locals 10
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "eventTime"    # J

    .prologue
    const/16 v9, 0x41

    const/16 v8, 0x30

    const/16 v6, 0x20

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 1300
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/input/InputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    .line 1302
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1303
    int-to-char v4, p2

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    .line 1523
    :cond_0
    :goto_0
    return-void

    .line 1310
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v4

    .line 1312
    if-ge v4, v6, :cond_0

    .line 1316
    if-ne p2, v8, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1320
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->acceptHWRAndUpdateListView()V

    .line 1323
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShifted()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1324
    int-to-char v0, p2

    .line 1325
    .local v0, "ch":C
    const/16 v4, 0x61

    if-gt v4, v0, :cond_5

    const/16 v4, 0x7a

    if-gt v0, v4, :cond_5

    .line 1326
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 1328
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1329
    if-gt v9, v0, :cond_7

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_7

    .line 1330
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 1331
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->processUpperLetterPress(I)Z

    .line 1332
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v4

    if-lt v4, v6, :cond_6

    .line 1333
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto :goto_0

    .line 1336
    :cond_6
    invoke-direct {p0, v7, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 1337
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto :goto_0

    .line 1339
    :cond_7
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    .line 1340
    :cond_8
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto :goto_0

    .line 1348
    .end local v0    # "ch":C
    :cond_9
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v4, :cond_b

    .line 1349
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v4}, Lcom/nuance/swype/input/EditState;->end()V

    .line 1350
    int-to-char v4, p2

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    .line 1522
    :cond_a
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recordUsedTimeTapDisplaySelectionList()V

    goto/16 :goto_0

    .line 1351
    :cond_b
    const/16 v4, 0x27

    if-ne p2, v4, :cond_10

    .line 1353
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInineAltCharacters()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1355
    int-to-char v4, p2

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_0

    .line 1360
    :cond_c
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1361
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1366
    const/16 v4, 0x32

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    invoke-direct {p0, v4, v5, p4, p5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendPlaceHolderKey(ILjava/util/List;J)V

    goto/16 :goto_0

    .line 1372
    :cond_d
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1373
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v4, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1375
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->cycleTone()Z

    move-result v3

    .line 1377
    .local v3, "success":Z
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v4, :cond_e

    .line 1378
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 1379
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 1381
    :cond_e
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDelimiterPressedEver:Z

    .line 1382
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTone:Z

    .line 1383
    if-eqz v3, :cond_0

    .line 1384
    invoke-direct {p0, v7, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_1

    .line 1396
    .end local v3    # "success":Z
    :cond_f
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 1398
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1399
    const-string v4, "\'"

    invoke-interface {v2, v4, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1400
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_1

    .line 1402
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_10
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isZhuyinTone(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1403
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addToneForZhuyin(I)Z

    move-result v4

    .line 1405
    if-eqz v4, :cond_11

    .line 1406
    invoke-direct {p0, v7, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto/16 :goto_1

    .line 1408
    :cond_11
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashRedError()V

    goto/16 :goto_1

    .line 1410
    :cond_12
    const/16 v4, 0xa

    if-ne p2, v4, :cond_15

    .line 1411
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1412
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1413
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getValidStrokeCandidateIndex()I

    move-result v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v4, v5, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto/16 :goto_0

    .line 1415
    :cond_13
    const/4 v4, 0x0

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v5, v4, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto/16 :goto_0

    .line 1419
    :cond_14
    int-to-char v4, p2

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_1

    .line 1421
    :cond_15
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v1

    .line 1422
    .local v1, "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPopupKeyboardShowing()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1423
    invoke-direct {p0, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleSeparator(I[I)V

    goto/16 :goto_1

    .line 1424
    :cond_16
    if-eqz p3, :cond_1c

    if-ne p2, v8, :cond_1c

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1429
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActivePrefixIndex()I

    move-result v4

    const/16 v6, 0xfe

    if-eq v4, v6, :cond_1b

    .line 1430
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNumberTypeInputField()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1434
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1a

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    :goto_2
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAlphabeticCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasDigitTone()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1444
    :cond_17
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recognitionCandidatesAvailable()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v4

    if-nez v4, :cond_18

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_18

    .line 1447
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->commitInlineWord()V

    .line 1450
    :cond_18
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v4

    if-nez v4, :cond_19

    .line 1451
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    const/4 v6, -0x1

    invoke-direct {p0, v4, v6, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 1452
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPressedNumOneKey:Z

    .line 1458
    :cond_19
    const/16 v4, 0x39

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    invoke-direct {p0, v4, v5, p4, p5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendPlaceHolderKey(ILjava/util/List;J)V

    goto/16 :goto_1

    :cond_1a
    move v4, v5

    .line 1434
    goto :goto_2

    .line 1461
    :cond_1b
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashError()V

    goto/16 :goto_1

    .line 1463
    :cond_1c
    iget v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v5, 0x600

    if-ne v4, v5, :cond_1f

    if-eqz p3, :cond_1f

    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNumberTypeInputField()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 1466
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    if-nez p1, :cond_1e

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPhoneticKeypad()Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieKeypad()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1468
    :cond_1d
    invoke-direct {p0, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleSeparator(I[I)V

    goto/16 :goto_1

    .line 1472
    :cond_1e
    invoke-direct/range {p0 .. p5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handlePrediction(Landroid/graphics/Point;I[IJ)V

    goto/16 :goto_1

    .line 1474
    :cond_1f
    iget v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v5, 0x900

    if-ne v4, v5, :cond_21

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->getEnableChineseBilingual()Z

    move-result v4

    if-eqz v4, :cond_21

    if-eqz p3, :cond_21

    if-nez p1, :cond_21

    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNumberTypeInputField()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1478
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1479
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v4, p2, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addExplicitKey(ILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 1480
    invoke-direct {p0, v7, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto/16 :goto_1

    .line 1482
    :cond_20
    invoke-direct {p0, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleSeparator(I[I)V

    goto/16 :goto_1

    .line 1484
    :cond_21
    invoke-virtual {v1, p2}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v4

    if-eqz v4, :cond_24

    iget v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v5, 0x900

    if-ne v4, v5, :cond_24

    const v4, 0xff1f

    if-ne p2, v4, :cond_24

    :cond_22
    if-nez p3, :cond_23

    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDigit(I)Z

    move-result v4

    if-nez v4, :cond_24

    :cond_23
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v4, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isAlphabetMode()Z

    move-result v4

    if-nez v4, :cond_25

    .line 1493
    :cond_24
    invoke-direct {p0, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleSeparator(I[I)V

    goto/16 :goto_1

    .line 1495
    :cond_25
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNumberTypeInputField()Z

    move-result v4

    if-eqz v4, :cond_26

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v4, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isAlphabetMode()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1496
    int-to-char v4, p2

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_1

    .line 1497
    :cond_26
    if-nez p1, :cond_2a

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1498
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->getEnableChineseBilingual()Z

    move-result v4

    if-eqz v4, :cond_29

    int-to-char v4, p2

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAlphabeticCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1501
    if-gt v9, p2, :cond_28

    const/16 v4, 0x5a

    if-gt p2, v4, :cond_28

    .line 1502
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 1503
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->processUpperLetterPress(I)Z

    .line 1504
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v4

    if-lt v4, v6, :cond_27

    .line 1505
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto/16 :goto_0

    .line 1508
    :cond_27
    invoke-direct {p0, v7, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 1509
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto/16 :goto_1

    .line 1510
    :cond_28
    const/16 v4, 0x61

    if-gt v4, p2, :cond_a

    const/16 v4, 0x7a

    if-gt p2, v4, :cond_a

    .line 1511
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    .line 1512
    int-to-char v4, p2

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_1

    .line 1515
    :cond_29
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefaultSuggestion()V

    .line 1516
    int-to-char v4, p2

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_1

    .line 1519
    :cond_2a
    invoke-direct/range {p0 .. p5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handlePrediction(Landroid/graphics/Point;I[IJ)V

    goto/16 :goto_1
.end method

.method public handleClose()V
    .locals 1

    .prologue
    .line 1781
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recordTextBuffer()V

    .line 1782
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->cancelDelayRecognition()V

    .line 1783
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsIMEActive:Z

    .line 1784
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dimissRemoveUdbWordDialog()V

    .line 1785
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->recycleBitmap()V

    .line 1786
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 1787
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->resume()V

    .line 1788
    return-void
.end method

.method public handleHardKeyCapsLock(Z)Z
    .locals 1
    .param p1, "iscapslockon"    # Z

    .prologue
    .line 5496
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleShiftKey()V

    .line 5497
    const/4 v0, 0x1

    return v0
.end method

.method public handleHardKeyDirectionKey(I)Z
    .locals 4
    .param p1, "keycode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5533
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v3, v3, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isShown()Z

    move-result v3

    if-nez v3, :cond_4

    .line 5535
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5536
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 5537
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 5540
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys()Z

    .line 5541
    const-string v3, ""

    invoke-interface {v0, v3, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 5542
    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 5544
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 5545
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 5552
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyToApplication(I)V

    .line 5566
    :cond_2
    :goto_0
    return v1

    .line 5547
    :cond_3
    const/16 v2, 0x15

    if-eq p1, v2, :cond_2

    const/16 v2, 0x16

    if-eq p1, v2, :cond_2

    const/16 v2, 0x13

    if-eq p1, v2, :cond_2

    const/16 v2, 0x14

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 5555
    :cond_4
    packed-switch p1, :pswitch_data_0

    :goto_1
    move v1, v2

    .line 5566
    goto :goto_0

    .line 5558
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->moveHighlightToWordListNearCandidate(I)V

    goto :goto_1

    .line 5562
    :pswitch_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleHardKeySelectHighlightedCandidate()V

    .line 5563
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    goto :goto_0

    .line 5555
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public handleHardKeyEndKey()Z
    .locals 1

    .prologue
    .line 5571
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->moveHighlightToHeardOrTail(Z)Z

    move-result v0

    return v0
.end method

.method public handleHardKeyEscapeKey()Z
    .locals 5

    .prologue
    const/16 v4, 0x6f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5722
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5723
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 5724
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 5726
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys()Z

    .line 5727
    const-string v1, ""

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 5728
    invoke-direct {p0, v3, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 5730
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 5731
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 5732
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyToApplication(I)V

    move v1, v2

    .line 5770
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return v1

    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    move v1, v3

    .line 5735
    goto :goto_0

    .line 5737
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->isShown()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 5738
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 5739
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 5741
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isMultitapping()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5743
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateContext()Z

    .line 5744
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    instance-of v1, v1, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v1, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5747
    invoke-direct {p0, v3, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 5753
    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 5754
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 5755
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    .line 5756
    const-string v1, ""

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 5761
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateMaxKeyTimeout()V

    .line 5762
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsDelimiterKeyLabelUpdated:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5763
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    :cond_3
    move v1, v2

    .line 5765
    goto :goto_0

    .line 5749
    :cond_4
    invoke-direct {p0, v2, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_1

    .line 5768
    :cond_5
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyToApplication(I)V

    .line 5769
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    move v1, v3

    .line 5770
    goto :goto_0
.end method

.method public handleHardKeyHomeKey()Z
    .locals 1

    .prologue
    .line 5576
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->moveHighlightToHeardOrTail(Z)Z

    move-result v0

    return v0
.end method

.method public handleHardKeyResize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6150
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6151
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideSymbolView()V

    .line 6152
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->hideSymbolList()V

    .line 6153
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSymbolKeyLabel(Z)V

    .line 6154
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6155
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 6158
    :cond_0
    return-void
.end method

.method public handleHardKeySelectHighlightedCandidate()V
    .locals 3

    .prologue
    .line 5620
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5623
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recognitionCandidatesAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5624
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 5625
    .local v0, "index":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 5626
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 5637
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 5628
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v1, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5630
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 5631
    .restart local v0    # "index":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 5632
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0
.end method

.method public handleHardkeyBackspace(I)Z
    .locals 1
    .param p1, "repeatedCount"    # I

    .prologue
    .line 5587
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleBackspace(I)Z

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
    .line 5776
    if-nez p1, :cond_1

    .line 5970
    :cond_0
    :goto_0
    return-void

    .line 5779
    :cond_1
    if-nez p2, :cond_2

    .line 5780
    const/4 v0, 0x1

    new-array p2, v0, [I

    .end local p2    # "keyCodes":[I
    const/4 v0, 0x0

    aput p1, p2, v0

    .line 5782
    .restart local p2    # "keyCodes":[I
    :cond_2
    const/16 v0, 0x7a

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5783
    const p1, 0xff1f

    .line 5785
    :cond_3
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    .line 5786
    .local v4, "eventTime":J
    :goto_1
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-super/range {v0 .. v5}, Lcom/nuance/swype/input/InputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    .line 5789
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v0

    .line 5790
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 5794
    const/16 v0, 0x30

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isHardkeyKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5798
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->acceptHWRRecognitionWord()Z

    .line 5801
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5802
    int-to-char v6, p1

    .line 5803
    .local v6, "ch":C
    const/16 v0, 0x61

    if-gt v0, v6, :cond_7

    const/16 v0, 0x7a

    if-gt v6, v0, :cond_7

    .line 5804
    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    .line 5806
    :cond_7
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5807
    const/16 v0, 0x41

    if-gt v0, v6, :cond_a

    const/16 v0, 0x5a

    if-gt v6, v0, :cond_a

    .line 5808
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 5809
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->processUpperLetterPress(I)Z

    .line 5810
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_9

    .line 5811
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto/16 :goto_0

    .line 5785
    .end local v4    # "eventTime":J
    .end local v6    # "ch":C
    :cond_8
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 5814
    .restart local v4    # "eventTime":J
    .restart local v6    # "ch":C
    :cond_9
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 5815
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto/16 :goto_0

    .line 5817
    :cond_a
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    .line 5818
    :cond_b
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_0

    .line 5826
    .end local v6    # "ch":C
    :cond_c
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v0, :cond_e

    .line 5827
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->end()V

    .line 5828
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    .line 5969
    :cond_d
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recordUsedTimeTapDisplaySelectionList()V

    goto/16 :goto_0

    .line 5829
    :cond_e
    const/16 v0, 0x27

    if-ne p1, v0, :cond_12

    .line 5831
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInineAltCharacters()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5833
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_0

    .line 5838
    :cond_f
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5839
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5844
    const/16 v0, 0x32

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendPlaceHolderKey(ILjava/util/List;J)V

    goto/16 :goto_0

    .line 5850
    :cond_10
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5851
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5853
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->cycleTone()Z

    move-result v8

    .line 5855
    .local v8, "success":Z
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_11

    .line 5856
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 5859
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTone:Z

    .line 5860
    if-eqz v8, :cond_0

    .line 5861
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_2

    .line 5875
    .end local v8    # "success":Z
    :cond_12
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isZhuyinTone(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5876
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addToneForZhuyin(I)Z

    move-result v0

    .line 5878
    if-eqz v0, :cond_13

    .line 5879
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 5880
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_2

    .line 5882
    :cond_13
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashRedError()V

    goto/16 :goto_2

    .line 5884
    :cond_14
    const/16 v0, 0xa

    if-ne p1, v0, :cond_16

    .line 5885
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5886
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 5888
    :cond_15
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_2

    .line 5890
    :cond_16
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v7

    .line 5891
    .local v7, "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPopupKeyboardShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5892
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleSeparator(I[I)V

    goto/16 :goto_2

    .line 5894
    :cond_17
    if-eqz p2, :cond_18

    const/16 v0, 0x30

    if-ne p1, v0, :cond_18

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isHardkeyKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 5898
    :cond_18
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isHardkeyKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz p2, :cond_1d

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNumberTypeInputField()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 5901
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPopupKeyboardShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPhoneticKeypad()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieKeypad()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 5903
    :cond_19
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleSeparator(I[I)V

    goto/16 :goto_2

    .line 5907
    :cond_1a
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_1b

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 5908
    :cond_1b
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 5910
    :cond_1c
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5911
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsIMEActive:Z

    .line 5912
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 5913
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handlePrediction(Landroid/graphics/Point;I[IJ)V

    goto/16 :goto_2

    .line 5915
    :cond_1d
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getEnableChineseBilingual()Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz p2, :cond_1f

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPopupKeyboardShowing()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNumberTypeInputField()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5919
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5920
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, p1, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addExplicitKey(ILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 5921
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto/16 :goto_2

    .line 5923
    :cond_1e
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleSeparator(I[I)V

    goto/16 :goto_2

    .line 5925
    :cond_1f
    invoke-virtual {v7, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-ne v0, v1, :cond_21

    const v0, 0xff1f

    if-ne p1, v0, :cond_21

    :cond_20
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-nez v0, :cond_22

    .line 5934
    :cond_21
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleSeparator(I[I)V

    goto/16 :goto_2

    .line 5936
    :cond_22
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNumberTypeInputField()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 5938
    :cond_23
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPopupKeyboardShowing()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 5939
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getEnableChineseBilingual()Z

    move-result v0

    if-eqz v0, :cond_26

    int-to-char v0, p1

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAlphabeticCharacter(C)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5942
    const/16 v0, 0x41

    if-gt v0, p1, :cond_25

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_25

    .line 5943
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 5944
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->processUpperLetterPress(I)Z

    .line 5945
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_24

    .line 5946
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto/16 :goto_0

    .line 5949
    :cond_24
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 5950
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto/16 :goto_2

    .line 5951
    :cond_25
    const/16 v0, 0x61

    if-gt v0, p1, :cond_d

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_d

    .line 5952
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    .line 5953
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_2

    .line 5956
    :cond_26
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    .line 5957
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_2

    .line 5960
    :cond_27
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_28

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-nez v0, :cond_29

    .line 5961
    :cond_28
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 5963
    :cond_29
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsIMEActive:Z

    .line 5965
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 5966
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handlePrediction(Landroid/graphics/Point;I[IJ)V

    goto/16 :goto_2
.end method

.method public handleHardkeyDelete(I)Z
    .locals 7
    .param p1, "repeatedCount"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 5502
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v2, v2, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 5505
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recognitionCandidatesAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5506
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 5507
    .local v1, "index":I
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    if-ltz v1, :cond_0

    .line 5508
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v1, v2, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 5514
    .end local v1    # "index":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 5515
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 5516
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v2, :cond_1

    if-nez v0, :cond_3

    .line 5528
    :cond_1
    :goto_1
    return v5

    .line 5511
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v2, v3, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    .line 5520
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3
    invoke-interface {v0, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 5521
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 5522
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 5523
    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 5524
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 5527
    :cond_4
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateMaxKeyTimeout()V

    goto :goto_1
.end method

.method public handleHardkeyEnter()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 5592
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->isShown()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 5595
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recognitionCandidatesAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5596
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 5597
    .local v0, "index":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 5598
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v0, v1, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .end local v0    # "index":I
    :cond_0
    :goto_0
    move v1, v2

    .line 5616
    :goto_1
    return v1

    .line 5601
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 5602
    .restart local v0    # "index":I
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isExactKeyboardShowable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5603
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v0, v1, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    .line 5606
    :cond_2
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v0, v1, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    .line 5610
    .end local v0    # "index":I
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->acceptHWRRecognitionWord()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5611
    const/4 v1, 0x1

    goto :goto_1

    .line 5613
    :cond_4
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyToApplication(I)V

    goto :goto_0
.end method

.method public handleHardkeyShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 1
    .param p1, "state"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 5581
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleShiftKey()V

    .line 5582
    const/4 v0, 0x1

    return v0
.end method

.method public handleHardkeySpace(ZI)Z
    .locals 10
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 5642
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5644
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInineAltCharacters()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5717
    :cond_0
    :goto_0
    return v7

    .line 5649
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v6, 0x900

    if-ne v5, v6, :cond_2

    .line 5650
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    const/16 v6, 0xb1

    invoke-virtual {v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addToneForZhuyin(I)Z

    move-result v5

    .line 5652
    if-eqz v5, :cond_2

    .line 5653
    invoke-direct {p0, v7, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0

    .line 5657
    :cond_2
    sget-object v5, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_SPACE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 5658
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recognitionCandidatesAvailable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5659
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 5660
    .local v4, "index":I
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_0

    if-ltz v4, :cond_0

    .line 5661
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v4, v5, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    .line 5663
    .end local v4    # "index":I
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5664
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v5, v9, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    .line 5665
    :cond_4
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v5, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v5

    if-nez v5, :cond_5

    .line 5667
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v5, v9, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    .line 5669
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashError()V

    goto :goto_0

    .line 5672
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recognitionCandidatesAvailable()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 5673
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 5674
    .restart local v4    # "index":I
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_7

    if-ltz v4, :cond_7

    .line 5675
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v4, v5, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 5677
    :cond_7
    invoke-direct {p0, v7, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto/16 :goto_0

    .line 5680
    .end local v4    # "index":I
    :cond_8
    const/4 v0, 0x1

    .line 5684
    .local v0, "addSpace":Z
    if-eqz p1, :cond_a

    if-ge p2, v8, :cond_a

    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mAutoPunctuationOn:Z

    if-eqz v5, :cond_a

    .line 5685
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 5687
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_a

    .line 5688
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 5689
    invoke-interface {v3, v8, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5695
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v2

    .line 5697
    .local v2, "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v8, :cond_9

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v5

    if-nez v5, :cond_9

    .line 5705
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleAutoPunct()V

    .line 5706
    const/4 v0, 0x0

    .line 5709
    :cond_9
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 5712
    .end local v1    # "cSeqBefore":Ljava/lang/CharSequence;
    .end local v2    # "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_a
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v5}, Lcom/nuance/swype/input/EditState;->spaceKey()V

    .line 5713
    if-eqz v0, :cond_0

    .line 5714
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_0
.end method

.method public handleKey(IZI)Z
    .locals 4
    .param p1, "primaryCode"    # I
    .param p2, "quickPressed"    # Z
    .param p3, "repeatedCount"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1147
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsSymbolPageShown:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolViewItemPressed:Z

    if-eqz v2, :cond_0

    .line 1210
    :goto_0
    return v0

    .line 1150
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1210
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    goto :goto_0

    .line 1152
    :sswitch_0
    if-nez p2, :cond_1

    .line 1153
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 1154
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->startSpeech()V

    :cond_1
    move v0, v1

    .line 1157
    goto :goto_0

    .line 1159
    :sswitch_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->toggleLastKeyboard()V

    .line 1160
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRecordLastSymbolPageShown:Z

    if-eqz v2, :cond_2

    .line 1161
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideSymbolView()V

    .line 1162
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->englishSymbolList:Ljava/util/List;

    invoke-direct {p0, v2, v0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showSymbolPopup(Ljava/util/List;IZ)V

    .line 1163
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRecordLastSymbolPageShown:Z

    :cond_2
    move v0, v1

    .line 1165
    goto :goto_0

    .line 1167
    :sswitch_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideSymbolView()V

    move v0, v1

    .line 1169
    goto :goto_0

    .line 1171
    :sswitch_3
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsSymbolPageShown:Z

    if-eqz v2, :cond_3

    .line 1172
    invoke-direct {p0, v1, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0

    .line 1175
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInlineWord()V

    .line 1176
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 1177
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getAltCharacterConverted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1178
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setAltCharacterConverted(Z)V

    .line 1180
    :cond_4
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->lastKeypadBilingualState:Z

    .line 1181
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    invoke-direct {p0, v2, v3, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 1182
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 1183
    invoke-direct {p0, v1, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    move v0, v1

    .line 1184
    goto :goto_0

    .line 1186
    :sswitch_4
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    if-eqz v2, :cond_5

    .line 1187
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideGridCandidatesView()V

    .line 1189
    :cond_5
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    .line 1190
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 1191
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    .line 1193
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mShowFunctionBar:Z

    if-eqz v2, :cond_8

    .line 1194
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 1198
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1200
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideSymbolView()V

    .line 1201
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->hideSymbolList()V

    .line 1202
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSymbolKeyLabel(Z)V

    .line 1203
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1204
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    invoke-direct {p0, v2, v3, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    :cond_7
    move v0, v1

    .line 1207
    goto/16 :goto_0

    .line 1196
    :cond_8
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearSuggestions()V

    goto :goto_1

    .line 1150
    :sswitch_data_0
    .sparse-switch
        -0x1a -> :sswitch_2
        -0x19 -> :sswitch_3
        0xb54 -> :sswitch_4
        0x193f -> :sswitch_0
        0xaa38 -> :sswitch_1
    .end sparse-switch
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x16

    const/16 v4, 0x15

    const/16 v3, 0x14

    const/16 v2, 0x13

    const/4 v0, 0x1

    .line 1105
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1106
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eq p1, v4, :cond_0

    if-eq p1, v5, :cond_0

    if-eq p1, v2, :cond_0

    if-eq p1, v3, :cond_0

    const/16 v1, 0x43

    if-ne p1, v1, :cond_3

    .line 1113
    :cond_0
    const/16 v1, 0x43

    if-ne p1, v1, :cond_1

    .line 1114
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleBackspace(I)Z

    .line 1128
    :cond_1
    :goto_0
    return v0

    .line 1119
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eq p1, v4, :cond_1

    if-eq p1, v5, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v3, :cond_1

    .line 1128
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    .line 1221
    :cond_0
    const/4 v0, 0x1

    .line 1223
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handlePossibleActionAfterUniversalKeyboardResize(Z)V
    .locals 3
    .param p1, "hideSymbolView"    # Z

    .prologue
    const/4 v2, 0x0

    .line 4814
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideGridCandidatesView()V

    .line 4815
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    .line 4816
    if-eqz p1, :cond_1

    .line 4817
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 4818
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mShowFunctionBar:Z

    if-eqz v0, :cond_2

    .line 4819
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 4823
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4824
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideSymbolView()V

    .line 4825
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->hideSymbolList()V

    .line 4826
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSymbolKeyLabel(Z)V

    .line 4827
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4828
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 4832
    :cond_1
    return-void

    .line 4821
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearSuggestions()V

    goto :goto_0
.end method

.method protected handleScrollDown()V
    .locals 2

    .prologue
    .line 4682
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 4683
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->end()V

    .line 4684
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 4685
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 4687
    :cond_0
    return-void
.end method

.method protected handleScrollLeft()V
    .locals 1

    .prologue
    .line 4691
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4692
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->MULTITAP_TOGGLE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 4693
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->end()V

    .line 4694
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleKeyboard()V

    .line 4695
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideSymbolView()V

    .line 4697
    :cond_0
    return-void
.end method

.method protected handleScrollRight()V
    .locals 1

    .prologue
    .line 4701
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4702
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->MULTITAP_TOGGLE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 4703
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->end()V

    .line 4704
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleKeyboard()V

    .line 4705
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideSymbolView()V

    .line 4707
    :cond_0
    return-void
.end method

.method public handleShiftKey()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1753
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1754
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTabletDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDoublePinyinMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1755
    :cond_0
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 1772
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1773
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShifted()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 1777
    :goto_1
    return-void

    .line 1757
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getEnableChineseBilingual()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1758
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefaultSuggestion()V

    .line 1760
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->updateShiftStateToggle()V

    .line 1761
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    .line 1762
    .local v0, "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    if-eqz v0, :cond_4

    .line 1763
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 1766
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->invalidateKeyboardImage()V

    goto :goto_0

    .line 1769
    .end local v0    # "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    :cond_5
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->cycleShiftState()V

    .line 1770
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->invalidateKeyboardImage()V

    goto :goto_0

    .line 1775
    :cond_6
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    goto :goto_1
.end method

.method public handleSpace(ZI)Z
    .locals 9
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1677
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isSourceFromPressSpace:Z

    .line 1678
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v4, :cond_7

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1680
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInineAltCharacters()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1748
    :cond_0
    :goto_0
    return v5

    .line 1685
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v7, 0x900

    if-ne v4, v7, :cond_2

    .line 1686
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    const/16 v7, 0xb1

    invoke-virtual {v4, v7}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addToneForZhuyin(I)Z

    move-result v4

    .line 1688
    if-eqz v4, :cond_2

    .line 1689
    invoke-direct {p0, v5, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0

    .line 1693
    :cond_2
    sget-object v4, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_SPACE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1694
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1695
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    goto :goto_0

    .line 1696
    :cond_3
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v4, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1699
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1700
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getValidStrokeCandidateIndex()I

    move-result v4

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v4, v8, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    .line 1702
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isExactKeyboardShowable()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_1
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v4, v8, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    :cond_5
    move v4, v6

    goto :goto_1

    .line 1705
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashError()V

    goto :goto_0

    .line 1708
    :cond_7
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->acceptHWRRecognitionWord()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1709
    invoke-direct {p0, v5, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0

    .line 1712
    :cond_8
    const/4 v0, 0x1

    .line 1716
    .local v0, "addSpace":Z
    if-eqz p1, :cond_a

    if-ge p2, v7, :cond_a

    iget-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mAutoPunctuationOn:Z

    if-eqz v4, :cond_a

    .line 1717
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 1719
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_a

    .line 1720
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1721
    invoke-interface {v3, v7, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1727
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v2

    .line 1729
    .local v2, "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v7, :cond_9

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1736
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleAutoPunct()V

    .line 1737
    const/4 v0, 0x0

    .line 1740
    :cond_9
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1743
    .end local v1    # "cSeqBefore":Ljava/lang/CharSequence;
    .end local v2    # "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_a
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v4}, Lcom/nuance/swype/input/EditState;->spaceKey()V

    .line 1744
    if-eqz v0, :cond_0

    .line 1745
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_0
.end method

.method protected handleTouchAction(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V
    .locals 22
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p3, "action"    # I

    .prologue
    .line 3924
    invoke-virtual/range {p0 .. p3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->subHandleTouchInitialized(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)Z

    move-result v17

    if-nez v17, :cond_1

    .line 4099
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 3928
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentKeyIndex()I

    move-result v9

    .line 3930
    .local v9, "keyIndex":I
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentLocation()Landroid/graphics/Point;

    move-result-object v14

    .line 3932
    .local v14, "touch":Landroid/graphics/Point;
    if-eqz v14, :cond_0

    .line 3935
    iget v15, v14, Landroid/graphics/Point;->x:I

    .line 3936
    .local v15, "touchX":I
    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    .line 3937
    .local v16, "touchY":I
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->eventTime:J

    .line 3939
    .local v6, "eventTime":J
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 3942
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isWriteInputEnabled()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 3943
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteNewSession:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 3944
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->resetWrite()V

    .line 3945
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteNewSession:Z

    .line 3947
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->removeDelayWriteRecognitionMsg()V

    .line 3948
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3949
    .local v10, "newStroke":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    new-instance v17, Landroid/graphics/Point;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteStrokes:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mVctWrite:Ljava/util/List;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3954
    .end local v10    # "newStroke":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsWriting:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 3958
    invoke-super/range {p0 .. p3}, Lcom/nuance/swype/input/InputView;->subHandleTouchDown(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    goto :goto_0

    .line 3965
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isWriteInputEnabled()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 3967
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsWriting:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyRepeated:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->isTraceDetected()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 3971
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentKey:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentKey:I

    move/from16 v17, v0

    if-ltz v17, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentKey:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentKey:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentKey:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v9, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentKey:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_4

    .line 3976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentKey:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    sparse-switch v17, :sswitch_data_0

    .line 3989
    :cond_4
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRepaintWrite:Z

    .line 3990
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsWriting:Z

    .line 3991
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setWritingRecognitionDone(Z)V

    .line 3994
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mVctWrite:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 3995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mVctWrite:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteStrokes:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 4000
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4002
    .local v11, "newStroke":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteStrokes:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4004
    .end local v11    # "newStroke":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteStrokes:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteStrokes:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 4005
    .local v5, "curStroke":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 4006
    .local v4, "base":I
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    sub-int v12, v17, v18

    .line 4007
    .local v12, "offset":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v12, :cond_7

    .line 4008
    new-instance v18, Landroid/graphics/Point;

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v17

    add-int v19, v4, v8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Point;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v17

    add-int v20, v4, v8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Point;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4007
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 4012
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsWriting:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 4013
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInMultiTap:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 4014
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->resetMultiTap()V

    .line 4017
    :cond_8
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentKey:I

    .line 4018
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentKeyTime:J

    .line 4020
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPointerId()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideKeyPreview(I)V

    .line 4021
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dismissSingleAltCharPopup()V

    .line 4023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x3eb

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 4024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x3eb

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 4026
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x68

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 4027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x68

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 4029
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x3ed

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 4030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x3ed

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 4032
    :cond_b
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->move(Landroid/view/MotionEvent;)V

    .line 4033
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->invalidate()V

    .line 4034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/KeyboardEx;->isKeyboardMiniDockMode()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 4036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 4037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/view/InputContainerView;->invalidate()V

    goto/16 :goto_0

    .line 4043
    :cond_c
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentKey:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v9, v0, :cond_0

    .line 4044
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentKeyTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mLastMoveTime:J

    move-wide/from16 v20, v0

    sub-long v20, v6, v20

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentKeyTime:J

    goto/16 :goto_0

    .line 4049
    .end local v4    # "base":I
    .end local v5    # "curStroke":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .end local v8    # "i":I
    .end local v12    # "offset":I
    :cond_d
    invoke-super/range {p0 .. p3}, Lcom/nuance/swype/input/InputView;->subHandleTouchMove(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    goto/16 :goto_0

    .line 4057
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsWriting:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 4058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mVctWrite:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 4059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mVctWrite:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteStrokes:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteStrokes:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 4062
    .restart local v5    # "curStroke":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 4063
    .restart local v4    # "base":I
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    sub-int v12, v17, v18

    .line 4064
    .restart local v12    # "offset":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v12, :cond_e

    .line 4065
    new-instance v18, Landroid/graphics/Point;

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v17

    add-int v19, v4, v8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Point;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v17

    add-int v20, v4, v8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Point;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4064
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 4069
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mVctWrite:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v13

    .line 4070
    .local v13, "size":I
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v13, :cond_f

    .line 4071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCachedWritePoints:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mVctWrite:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4070
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 4074
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCachedWritePoints:Ljava/util/List;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Point;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDelayWriteRecognizeHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x65

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteRecognizeDelay:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4077
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsLastOpWriting:Z

    .line 4078
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->release(Landroid/view/MotionEvent;)V

    .line 4079
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPointerId()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideKeyPreview(I)V

    goto/16 :goto_0

    .line 4082
    .end local v4    # "base":I
    .end local v5    # "curStroke":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .end local v8    # "i":I
    .end local v12    # "offset":I
    .end local v13    # "size":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mVctWrite:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 4083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCachedWritePoints:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 4084
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteNewSession:Z

    .line 4085
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsLastOpWriting:Z

    .line 4088
    invoke-super/range {p0 .. p3}, Lcom/nuance/swype/input/InputView;->subHandleTouchUp(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    .line 4089
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShiftedPopupMenu:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 4090
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShiftedPopupMenu:Z

    .line 4091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    move-object/from16 v17, v0

    sget-object v18, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual/range {v17 .. v18}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 4095
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->resetWrite()V

    goto/16 :goto_0

    .line 3939
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 3976
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
        0xb7c -> :sswitch_0
        0xb7d -> :sswitch_0
        0xb7e -> :sswitch_0
        0xfe4 -> :sswitch_0
        0x192d -> :sswitch_0
    .end sparse-switch
.end method

.method public handleTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
    .locals 8
    .param p1, "trace"    # Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1824
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShifted()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1892
    :cond_0
    :goto_0
    return-void

    .line 1827
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1828
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1831
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v2}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1835
    :cond_2
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1837
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isFullSentenceActive()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isHasSegmentDelimiter(Landroid/text/SpannableStringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1839
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashError()V

    .line 1840
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1847
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isTraceAutoAcceptEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1850
    const/16 v2, 0x64

    invoke-interface {v0, v2, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1855
    if-nez v2, :cond_4

    .line 1856
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1860
    :cond_4
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isCandidateListEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 1863
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInitiativeAccept:Z

    .line 1864
    sget-object v2, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->SWYPE_NEXT_WORD:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1865
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    .line 1869
    :cond_5
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->getTimes()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->processTrace(Ljava/util/List;Ljava/util/List;Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v2

    .line 1870
    if-eqz v2, :cond_8

    .line 1871
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    move-result v1

    .line 1876
    .local v1, "wordCount":I
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsUpdateInline:Z

    if-eqz v2, :cond_6

    .line 1877
    invoke-direct {p0, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInlineString(Z)V

    .line 1879
    :cond_6
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsUpdateInline:Z

    .line 1880
    if-nez v1, :cond_7

    .line 1881
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setNotMatchToolTipSuggestion()V

    .line 1891
    .end local v1    # "wordCount":I
    :goto_1
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 1883
    .restart local v1    # "wordCount":I
    :cond_7
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTracedEver:Z

    goto :goto_1

    .line 1886
    .end local v1    # "wordCount":I
    :cond_8
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashError()V

    .line 1887
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys()Z

    .line 1888
    invoke-direct {p0, v6, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_1
.end method

.method public handleWrite(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "write":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v5, 0x0

    .line 1792
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->checkCurLanguage()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1818
    :goto_0
    return-void

    .line 1796
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1797
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->applyChangedSettings()V

    .line 1798
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->startArcsAddingSequence()V

    .line 1800
    :cond_1
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1801
    const/4 v2, 0x0

    .line 1802
    .local v2, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 1803
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-nez v3, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-nez v3, :cond_3

    .line 1805
    move v0, v1

    .line 1806
    .local v0, "end":I
    if-ltz v2, :cond_2

    if-le v0, v2, :cond_2

    .line 1807
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 1809
    :cond_2
    add-int/lit8 v2, v0, 0x1

    .line 1802
    .end local v0    # "end":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1812
    :cond_4
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v3, :cond_5

    .line 1813
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3, v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 1817
    .end local v1    # "i":I
    .end local v2    # "start":I
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public hideFunctionBar()V
    .locals 1

    .prologue
    .line 5090
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mShowFunctionBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    .line 5091
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideFunctionBarList()V

    .line 5093
    :cond_0
    return-void
.end method

.method public highlightKeyArea(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .locals 10
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 5310
    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v7

    if-nez v7, :cond_1

    .line 5311
    :cond_0
    sget-object v7, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->NONE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v4

    .line 5354
    :goto_0
    return v4

    .line 5313
    :cond_1
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->doublePinyinTailKeyUnicode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHighlightVowels(I)[Ljava/lang/String;

    move-result-object v6

    .line 5314
    .local v6, "vowels":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 5315
    .local v2, "label":Ljava/lang/String;
    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v7, :cond_2

    .line 5316
    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5318
    :cond_2
    const/4 v0, 0x0

    .line 5319
    .local v0, "altLabel":Ljava/lang/String;
    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    .line 5320
    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5322
    :cond_3
    const/4 v3, 0x0

    .line 5323
    .local v3, "leftAltLabel":Ljava/lang/String;
    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->leftAltLabel:Ljava/lang/CharSequence;

    if-eqz v7, :cond_4

    .line 5324
    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->leftAltLabel:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5327
    :cond_4
    if-nez v6, :cond_8

    .line 5329
    if-eqz v2, :cond_5

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isZhChSh(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 5330
    sget-object v7, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->CONSONANT_LABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v4

    goto :goto_0

    .line 5331
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isZhChSh(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 5332
    sget-object v7, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->CONSONANT_ALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v4

    goto :goto_0

    .line 5333
    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isZhChSh(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 5334
    sget-object v7, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->CONSONANT_LEFTALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v4

    goto :goto_0

    .line 5336
    :cond_7
    sget-object v7, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->NONE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v4

    goto :goto_0

    .line 5339
    :cond_8
    sget-object v7, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v8, "isToHighlightKey... key label: "

    invoke-virtual {v7, v8, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5340
    sget-object v7, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->NONE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v4

    .line 5341
    .local v4, "ret":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v6

    if-ge v1, v7, :cond_c

    .line 5342
    aget-object v5, v6, v1

    .line 5343
    .local v5, "vowel":Ljava/lang/String;
    if-eqz v2, :cond_9

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 5344
    sget-object v7, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_LABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v7

    or-int/2addr v4, v7

    .line 5346
    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 5347
    sget-object v7, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_ALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v7

    or-int/2addr v4, v7

    .line 5349
    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 5350
    sget-object v7, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_LEFTALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v7

    or-int/2addr v4, v7

    .line 5341
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5353
    .end local v5    # "vowel":Ljava/lang/String;
    :cond_c
    sget-object v7, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v8, "isToHighlightKey...ret: "

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method isDigit(I)Z
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 2862
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

.method public isDoublePinyinMode()Z
    .locals 1

    .prologue
    .line 5457
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v0

    return v0
.end method

.method public isLanguageSwitchableOnSpace()Z
    .locals 1

    .prologue
    .line 4732
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLastOpWriting()Z
    .locals 1

    .prologue
    .line 3792
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsLastOpWriting:Z

    return v0
.end method

.method public isMaxKeysCangjieOrQuickCangjie()Z
    .locals 3

    .prologue
    .line 2252
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 2253
    .local v0, "mode":Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeCangjie(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeQuickCangjie(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isMultitapHandledInCore()Z
    .locals 1

    .prologue
    .line 2366
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2367
    const/4 v0, 0x0

    .line 2369
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isNormalTextInputMode()Z
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z
    .locals 2
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    const/4 v0, 0x1

    .line 4402
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4412
    :cond_0
    :goto_0
    return v0

    .line 4404
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4405
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4406
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsUseHardkey:Z

    if-nez v1, :cond_0

    .line 4410
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSupportMultitouchGesture()Z
    .locals 1

    .prologue
    .line 4711
    const/4 v0, 0x1

    return v0
.end method

.method public isSymbolPageShown()Z
    .locals 1

    .prologue
    .line 6188
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsSymbolPageShown:Z

    return v0
.end method

.method protected isTraceInputEnabled()Z
    .locals 1

    .prologue
    .line 4104
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTraceEnabledOnKeyboard:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isWriteInputEnabled()Z
    .locals 2

    .prologue
    .line 3735
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteChineseBuildEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTraceOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isPhoneMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPopupKeyboardShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsSymbolPageShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWriting()Z
    .locals 1

    .prologue
    .line 3843
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsWriting:Z

    return v0
.end method

.method protected isWritingRecognitionDone()Z
    .locals 1

    .prologue
    .line 3784
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsWritingRecognitionDone:Z

    return v0
.end method

.method isZhChSh(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 5412
    const/4 v0, 0x0

    .line 5413
    .local v0, "ret":Z
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->doublePinyinZh:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5414
    const/4 v0, 0x1

    .line 5420
    :cond_0
    :goto_0
    return v0

    .line 5415
    :cond_1
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->doublePinyinCh:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5416
    const/4 v0, 0x1

    goto :goto_0

    .line 5417
    :cond_2
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->doublePinyinSh:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5418
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 5
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    const/4 v4, 0x0

    .line 4267
    instance-of v2, p1, Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-eqz v2, :cond_1

    .line 4291
    :cond_0
    :goto_0
    return-void

    .line 4270
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dismissPopupKeyboard()V

    .line 4271
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-ne p1, v2, :cond_0

    .line 4272
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isLastOpWriting()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isWritingRecognitionDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4275
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recognitionCandidatesAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4276
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showGridCandidatesView(Ljava/util/List;Ljava/util/List;)V

    .line 4282
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v2, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isMixedInput()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4284
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updatePrefixes()V

    .line 4286
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_0

    .line 4287
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 4288
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    goto :goto_0

    .line 4278
    :cond_4
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPopupList()Ljava/util/List;

    move-result-object v0

    .line 4279
    .local v0, "candList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPopupWordSourceList()Ljava/util/List;

    move-result-object v1

    .line 4280
    .local v1, "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showGridCandidatesView(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1
.end method

.method public onApplicationUnbind()V
    .locals 0

    .prologue
    .line 4418
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dimissRemoveUdbWordDialog()V

    .line 4419
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onApplicationUnbind()V

    .line 4420
    return-void
.end method

.method public onCandidateLongPressed(ILjava/lang/String;ILcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "wdSource"    # I
    .param p4, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 4778
    packed-switch p3, :pswitch_data_0

    .line 4784
    :goto_0
    return-void

    .line 4780
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showRemoveUdbWordDialog(Ljava/lang/String;I)V

    goto :goto_0

    .line 4783
    :pswitch_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, p2, v1}, Lcom/nuance/swype/util/ContactUtils;->getContactNumberFromPhoneBook(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 4778
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 3814
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->onDraw(Landroid/graphics/Canvas;)V

    .line 3815
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isWriteInputEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3816
    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsWriting:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRepaintWrite:Z

    if-eqz v3, :cond_2

    .line 3826
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteStrokes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 3827
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWritePath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 3828
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteStrokes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3829
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteStrokes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3830
    .local v0, "aStroke":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWritePath:Landroid/graphics/Path;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3831
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3832
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWritePath:Landroid/graphics/Path;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3831
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3828
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3836
    .end local v0    # "aStroke":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWritePath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPntWrite:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3839
    :cond_2
    return-void
.end method

.method public onHandleUdbWordRemoval(Ljava/lang/String;)V
    .locals 6
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4737
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v1, :cond_0

    .line 4738
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->udbDelete(Ljava/lang/String;)Z

    move-result v1

    .line 4740
    if-eqz v1, :cond_1

    .line 4741
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->delete_success:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4744
    .local v0, "removeMgs":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v0, v4, v2}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 4747
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInlineWord()V

    .line 4748
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 4749
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->lastKeypadBilingualState:Z

    .line 4750
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 4751
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 4752
    invoke-direct {p0, v5, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 4762
    .end local v0    # "removeMgs":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 4754
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->delete_failed:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4757
    .restart local v0    # "removeMgs":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v0, v4, v2}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method

.method public onHandleWriteEvent(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;

    .prologue
    const-wide/16 v4, 0x5

    .line 3700
    iget v0, p1, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 3715
    :goto_0
    return-void

    .line 3702
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 3706
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 3711
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 3700
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v0, 0x0

    .line 3863
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v2, 0x31

    if-ne v1, v2, :cond_1

    .line 3871
    :cond_0
    :goto_0
    return v0

    .line 3867
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    .line 3871
    :cond_2
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->onLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMultitapTimeout()V
    .locals 1

    .prologue
    .line 3157
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->MULTITAP_TIMEOUT:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 3158
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateMaxKeyTimeout()V

    .line 3159
    return-void
.end method

.method public onScrollContentChanged()V
    .locals 1

    .prologue
    .line 6144
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v0, :cond_0

    .line 6145
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->updateScrollArrowVisibility()V

    .line 6147
    :cond_0
    return-void
.end method

.method protected onShortPress(Lcom/nuance/swype/input/KeyboardEx$Key;II)V
    .locals 10
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "keyIndex"    # I
    .param p3, "pointerId"    # I

    .prologue
    const/16 v9, 0x3ed

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3877
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 3878
    .local v4, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v7, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x61

    if-lt v7, v8, :cond_1

    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v7, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x7a

    if-gt v7, v8, :cond_1

    .line 3909
    :cond_0
    :goto_0
    return-void

    .line 3882
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3883
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasAltSymbolOrCode(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 3884
    .local v0, "hasAltKeyEvent":Z
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasSymbolSelectPopupResource(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v1, v6

    .line 3886
    .local v1, "hasSymbolSelectPopup":Z
    :goto_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShifted()Z

    move-result v7

    if-nez v7, :cond_4

    move v2, v6

    .line 3887
    .local v2, "isAltDigitQwerty":Z
    :goto_2
    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v7, :cond_6

    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v7, v7, v5

    const/16 v8, 0xfed

    if-ne v7, v8, :cond_5

    move v3, v6

    .line 3888
    .local v3, "isSymbolKey":Z
    :goto_3
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v2, :cond_7

    if-nez v3, :cond_7

    .line 3889
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->displaysAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3890
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isSlideSelectEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3891
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3892
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .end local v1    # "hasSymbolSelectPopup":Z
    .end local v2    # "isAltDigitQwerty":Z
    .end local v3    # "isSymbolKey":Z
    :cond_3
    move v1, v5

    .line 3884
    goto :goto_1

    .restart local v1    # "hasSymbolSelectPopup":Z
    :cond_4
    move v2, v5

    .line 3886
    goto :goto_2

    .restart local v2    # "isAltDigitQwerty":Z
    :cond_5
    move v3, v5

    .line 3887
    goto :goto_3

    :cond_6
    move v3, v5

    goto :goto_3

    .line 3898
    .restart local v3    # "isSymbolKey":Z
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShifted()Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3899
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v7, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v5, v7}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 3900
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShiftedPopupMenu:Z

    .line 3903
    .end local v0    # "hasAltKeyEvent":Z
    .end local v1    # "hasSymbolSelectPopup":Z
    .end local v2    # "isAltDigitQwerty":Z
    .end local v3    # "isSymbolKey":Z
    :cond_8
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsSymbolPageShown:Z

    if-eqz v5, :cond_9

    iget-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v5, :cond_9

    iget-object v5, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    sget v6, Lcom/nuance/swype/input/R$string;->label_chn_key:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    if-eq v5, v6, :cond_0

    .line 3908
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->onShortPress(Lcom/nuance/swype/input/KeyboardEx$Key;II)V

    goto/16 :goto_0
.end method

.method public onSpeechViewDismissed()V
    .locals 0

    .prologue
    .line 1134
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 1135
    return-void
.end method

.method public onSpeechViewShowedUp()V
    .locals 0

    .prologue
    .line 1139
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1229
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1230
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1276
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1234
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInineAltCharacters()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1236
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1237
    invoke-interface {v0, p1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1238
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1241
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasBilingualPrefix()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActivePrefixIndex()I

    move-result v1

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_3

    .line 1243
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->commitInlineWord()V

    .line 1244
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1245
    invoke-interface {v0, p1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1246
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1249
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->acceptHWRAndUpdateListView()V

    .line 1251
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1252
    :cond_4
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1253
    invoke-interface {v0, p1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1254
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1256
    :cond_5
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isFullSentenceActive()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isHasSegmentDelimiter(Landroid/text/SpannableStringBuilder;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isComponent()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1258
    :cond_7
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashError()V

    goto :goto_0

    .line 1260
    :cond_8
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1261
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashErrorIfNeededInStroke()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1265
    :cond_9
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    .line 1266
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v1, :cond_a

    .line 1267
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 1269
    :cond_a
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1270
    invoke-interface {v0, p1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1271
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1272
    invoke-direct {p0, v4, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto/16 :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 10
    .param p1, "visibility"    # I

    .prologue
    .line 4246
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v6

    const-string v7, "pen_color"

    const/16 v8, 0x18

    invoke-static {v6, v7, v8}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v4

    .line 4249
    .local v4, "penColor":I
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setWritePenColor(I)V

    .line 4250
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 4251
    .local v2, "dm":Landroid/util/DisplayMetrics;
    const/4 v3, 0x0

    .line 4252
    .local v3, "isTablet":Z
    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v6

    .line 4254
    .local v1, "displayHeight":F
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$dimen;->max_height_for_fullscreen:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 4256
    .local v0, "dimen":F
    cmpl-float v6, v1, v0

    if-ltz v6, :cond_0

    .line 4257
    const/4 v3, 0x1

    .line 4259
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v7

    const-string v8, "hwr_pen_size"

    if-eqz v3, :cond_1

    const/16 v6, 0x9

    :goto_0
    int-to-float v6, v6

    iget v9, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    invoke-static {v7, v8, v6}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v5

    .line 4262
    .local v5, "penSize":I
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setWritePenSize(I)V

    .line 4263
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->onWindowVisibilityChanged(I)V

    .line 4264
    return-void

    .line 4259
    .end local v5    # "penSize":I
    :cond_1
    const/4 v6, 0x6

    goto :goto_0
.end method

.method protected popupMiniKeyboardOrLongPress()Z
    .locals 1

    .prologue
    .line 3855
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3856
    const/4 v0, 0x0

    .line 3858
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->popupMiniKeyboardOrLongPress()Z

    move-result v0

    goto :goto_0
.end method

.method public postAddMoreSuggestions()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2834
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2835
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2839
    :cond_0
    return-void
.end method

.method public prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 5
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    const/4 v4, 0x0

    .line 4364
    instance-of v2, p1, Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-eqz v2, :cond_1

    .line 4398
    :cond_0
    :goto_0
    return-void

    .line 4367
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-ne p1, v2, :cond_2

    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDelimiterPressedEver:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4368
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getExactWord(Ljava/lang/StringBuffer;)V

    .line 4369
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isValidExactKeyboardPhrase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4370
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 4371
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 4372
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showLeftArrow(Z)V

    .line 4373
    const/4 v2, 0x1

    invoke-direct {p0, v4, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0

    .line 4378
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-ne p1, v2, :cond_0

    .line 4379
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isLastOpWriting()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isWritingRecognitionDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4382
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recognitionCandidatesAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4383
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showGridCandidatesView(Ljava/util/List;Ljava/util/List;)V

    .line 4389
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v2, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isMixedInput()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4391
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updatePrefixes()V

    .line 4393
    :cond_4
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_0

    .line 4394
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 4395
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    goto :goto_0

    .line 4385
    :cond_5
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPopupList()Ljava/util/List;

    move-result-object v0

    .line 4386
    .local v0, "candList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPopupWordSourceList()Ljava/util/List;

    move-result-object v1

    .line 4387
    .local v1, "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showGridCandidatesView(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1
.end method

.method public selectDefaultSuggestion()V
    .locals 2

    .prologue
    .line 864
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_2

    .line 865
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 866
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 867
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 880
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return-void

    .line 870
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 871
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 872
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 877
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsUseHardkey:Z

    if-nez v1, :cond_0

    .line 878
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    goto :goto_0

    .line 874
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    goto :goto_1
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 11
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/CharSequence;
    .param p3, "source"    # Landroid/view/View;

    .prologue
    const/16 v5, 0xfe

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1939
    const/16 v4, 0xfdf

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->shouldDisableInput(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2204
    .end local p3    # "source":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1943
    .restart local p3    # "source":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 1945
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    instance-of v4, p3, Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-eqz v4, :cond_e

    .line 1946
    iget-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsSymbolPageShown:Z

    if-nez v4, :cond_c

    .line 1947
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->acceptHWRAndUpdateListView()V

    .line 1948
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1949
    :cond_2
    if-eqz v3, :cond_0

    .line 1952
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1953
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v3, v4, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1954
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->moveCursorToMiddle(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 1955
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1957
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1959
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1960
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isComponent()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1961
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashRedError()V

    goto :goto_0

    .line 1964
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashErrorIfNeededInStroke()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1968
    :cond_7
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    .line 1969
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInineAltCharacters()Z

    .line 1970
    if-eqz v3, :cond_0

    .line 1973
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1974
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v3, v4, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1975
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->moveCursorToMiddle(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 1976
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 1980
    :cond_8
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dismissPopupKeyboard()V

    .line 1981
    check-cast p3, Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    .end local p3    # "source":Landroid/view/View;
    invoke-virtual {p3}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->suggestions()Ljava/util/List;

    move-result-object v1

    .line 1982
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasBilingualPrefix()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1983
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_a

    .line 1984
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setActivePrefixIndex(I)Z

    .line 1992
    :goto_1
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, p1, :cond_9

    .line 1993
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1994
    .local v0, "candidate":Ljava/lang/CharSequence;
    if-eqz v0, :cond_9

    .line 1995
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v9, v9, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recordActiveWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    .end local v0    # "candidate":Ljava/lang/CharSequence;
    :cond_9
    invoke-direct {p0, v8, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto/16 :goto_0

    .line 1986
    :cond_a
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setActivePrefixIndex(I)Z

    goto :goto_1

    .line 1989
    :cond_b
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setActivePrefixIndex(I)Z

    goto :goto_1

    .line 2001
    .end local v1    # "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local p3    # "source":Landroid/view/View;
    :cond_c
    iget-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolViewItemPressed:Z

    if-eqz v4, :cond_d

    .line 2002
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symbolViewCategarySelected:Z

    goto/16 :goto_0

    .line 2005
    :cond_d
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectSymbolCategory()V

    .line 2006
    packed-switch p1, :pswitch_data_0

    .line 2023
    :goto_2
    iput p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSelectedSymbolCategaryIndex:I

    goto/16 :goto_0

    .line 2008
    :pswitch_0
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->englishSymbolList:Ljava/util/List;

    invoke-direct {p0, v4, v8, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showSymbolPopup(Ljava/util/List;IZ)V

    goto :goto_2

    .line 2011
    :pswitch_1
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    invoke-direct {p0, v4, v7, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showSymbolPopup(Ljava/util/List;IZ)V

    goto :goto_2

    .line 2014
    :pswitch_2
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseEmotionList:Ljava/util/List;

    invoke-direct {p0, v4, v10, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showSymbolPopup(Ljava/util/List;IZ)V

    goto :goto_2

    .line 2017
    :pswitch_3
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseNetworkList:Ljava/util/List;

    const/4 v5, 0x3

    invoke-direct {p0, v4, v5, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showSymbolPopup(Ljava/util/List;IZ)V

    goto :goto_2

    .line 2020
    :pswitch_4
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->pictureSymbolList:Ljava/util/List;

    const/4 v5, 0x4

    invoke-direct {p0, v4, v5, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showSymbolPopup(Ljava/util/List;IZ)V

    goto :goto_2

    .line 2029
    :cond_e
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInineAltCharacters()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2033
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dismissPopupKeyboard()V

    .line 2034
    if-eqz v3, :cond_0

    .line 2035
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2042
    iget-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCompletionOn:Z

    if-eqz v4, :cond_f

    if-ltz p1, :cond_f

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v4}, Lcom/nuance/swype/input/Completions;->size()I

    move-result v4

    if-ge p1, v4, :cond_f

    .line 2043
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v4, p1}, Lcom/nuance/swype/input/Completions;->get(I)Landroid/view/inputmethod/CompletionInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 2044
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 2045
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 2048
    :cond_f
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-ne p3, v4, :cond_27

    .line 2049
    if-eqz p2, :cond_10

    .line 2050
    sget-object v4, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->SELECTION_WCL:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 2052
    :cond_10
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recognitionCandidatesAvailable()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 2053
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2054
    if-nez p2, :cond_11

    .line 2055
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 2058
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    .line 2059
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_12

    .line 2060
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-interface {v3, v4, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2061
    invoke-interface {v3, v10, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setContext(Ljava/lang/CharSequence;Z)V

    .line 2133
    :cond_12
    :goto_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapClearInvalid()V

    .line 2134
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v4, :cond_13

    .line 2135
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4, v8}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 2136
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4, v8}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 2139
    :cond_13
    iput-boolean v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedUpdate:Z

    .line 2140
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedDefer:Z

    .line 2141
    invoke-direct {p0, v7, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 2143
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/SpellListView;->disableHighlight()V

    .line 2182
    .end local p3    # "source":Landroid/view/View;
    :cond_14
    :goto_4
    iget-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsDelimiterKeyLabelUpdated:Z

    if-eqz v4, :cond_15

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v4, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v4

    if-nez v4, :cond_15

    .line 2186
    invoke-direct {p0, v8}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 2189
    :cond_15
    iget-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsClearKeyLabelUpdated:Z

    if-eqz v4, :cond_16

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v4

    if-nez v4, :cond_16

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v4, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v4

    if-nez v4, :cond_16

    .line 2193
    invoke-direct {p0, v8}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 2196
    :cond_16
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2197
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 2198
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->udbDelete(Ljava/lang/String;)Z

    .line 2200
    :cond_17
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_18

    .line 2201
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recordSetContext(Ljava/lang/String;)V

    .line 2203
    :cond_18
    iput-boolean v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTracedEver:Z

    goto/16 :goto_0

    .line 2066
    .restart local p3    # "source":Landroid/view/View;
    :cond_19
    const-string v2, ""

    .line 2067
    .local v2, "defaultCandidate":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->suggestions()Ljava/util/List;

    move-result-object v1

    .line 2068
    .restart local v1    # "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-nez p1, :cond_1d

    if-eqz p2, :cond_1d

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isExactKeyboardShowable()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2069
    iput-boolean v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsUpdateInline:Z

    .line 2070
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2071
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getExactWord(Ljava/lang/StringBuffer;)V

    .line 2072
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-interface {v3, v4, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2073
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys()Z

    .line 2074
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 2075
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/SpellListView;->clear()V

    .line 2077
    :cond_1a
    if-eqz v1, :cond_1b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v7, :cond_1b

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 2078
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "defaultCandidate":Ljava/lang/CharSequence;
    check-cast v2, Ljava/lang/CharSequence;

    .line 2079
    .restart local v2    # "defaultCandidate":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v9, v9}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recordActiveWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    :cond_1b
    iput-boolean v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    .line 2082
    iput-boolean v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCandidateSelectedEver:Z

    .line 2123
    :goto_5
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1c

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 2125
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recordCommittedSentence(Ljava/lang/String;)V

    .line 2128
    :cond_1c
    if-eqz p2, :cond_12

    .line 2129
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v4, p2, v2}, Lcom/nuance/swype/input/EditState;->selectWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2083
    :cond_1d
    if-nez p1, :cond_1e

    if-nez p2, :cond_1e

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isExactKeyboardShowable()Z

    move-result v4

    if-nez v4, :cond_1f

    :cond_1e
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isExactKeyboardShowable()Z

    move-result v4

    if-nez v4, :cond_23

    .line 2086
    :cond_1f
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->selectWord(ILjava/lang/StringBuilder;)Z

    .line 2088
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v4

    if-nez v4, :cond_20

    iget-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInitiativeAccept:Z

    if-nez v4, :cond_20

    .line 2090
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/SpellListView;->clear()V

    .line 2094
    :cond_20
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_21

    .line 2095
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-interface {v3, v4, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2099
    :cond_21
    if-eqz v1, :cond_22

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_22

    .line 2100
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "defaultCandidate":Ljava/lang/CharSequence;
    check-cast v2, Ljava/lang/CharSequence;

    .line 2101
    .restart local v2    # "defaultCandidate":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v9, v9}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recordActiveWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    :cond_22
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    .line 2104
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCandidateSelectedEver:Z

    goto :goto_5

    .line 2106
    :cond_23
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    add-int/lit8 v5, p1, -0x1

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->selectWord(ILjava/lang/StringBuilder;)Z

    .line 2107
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v4

    if-nez v4, :cond_24

    .line 2108
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/SpellListView;->clear()V

    .line 2111
    :cond_24
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_25

    .line 2112
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-interface {v3, v4, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2113
    invoke-interface {v3, v10, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v4, v8}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setContext(Ljava/lang/CharSequence;Z)V

    .line 2116
    :cond_25
    if-eqz v1, :cond_26

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v7, :cond_26

    .line 2117
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "defaultCandidate":Ljava/lang/CharSequence;
    check-cast v2, Ljava/lang/CharSequence;

    .line 2118
    .restart local v2    # "defaultCandidate":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v9, v9}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recordActiveWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    :cond_26
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    .line 2121
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCandidateSelectedEver:Z

    goto/16 :goto_5

    .line 2144
    .end local v1    # "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v2    # "defaultCandidate":Ljava/lang/CharSequence;
    :cond_27
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    if-ne p3, v4, :cond_14

    .line 2147
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/SpellListView;->enableHighlight()V

    .line 2148
    check-cast p3, Lcom/nuance/swype/input/chinese/SpellListView;

    .end local p3    # "source":Landroid/view/View;
    invoke-virtual {p3}, Lcom/nuance/swype/input/chinese/SpellListView;->suggestions()Ljava/util/List;

    move-result-object v1

    .line 2150
    .restart local v1    # "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasBilingualPrefix()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2151
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_2a

    .line 2152
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setActivePrefixIndex(I)Z

    .line 2159
    :goto_6
    sget-object v4, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_PREFIX:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 2161
    if-eqz v1, :cond_28

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, p1, :cond_28

    .line 2162
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 2163
    .restart local v0    # "candidate":Ljava/lang/CharSequence;
    if-eqz v0, :cond_28

    .line 2164
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v9, v9, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recordActiveWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    .end local v0    # "candidate":Ljava/lang/CharSequence;
    :cond_28
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v4, :cond_29

    .line 2168
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4, v8}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 2169
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4, v8}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 2171
    :cond_29
    iget-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    if-eqz v4, :cond_2c

    .line 2172
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideGridCandidatesView()V

    .line 2173
    invoke-direct {p0, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInlineString(Z)V

    .line 2174
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v4, p1}, Lcom/nuance/swype/input/chinese/SpellListView;->drawCandidates(I)V

    .line 2175
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateGridViewByPrefix(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    goto/16 :goto_4

    .line 2154
    :cond_2a
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setActivePrefixIndex(I)Z

    goto :goto_6

    .line 2157
    :cond_2b
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setActivePrefixIndex(I)Z

    goto :goto_6

    .line 2177
    :cond_2c
    invoke-direct {p0, v8, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto/16 :goto_4

    .line 2006
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected setCandidatesViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 2229
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setCandidatesViewShown(Z)V

    .line 2230
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-nez v0, :cond_0

    .line 2238
    :goto_0
    return-void

    .line 2233
    :cond_0
    if-eqz p1, :cond_1

    .line 2234
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->setVisibility(I)V

    goto :goto_0

    .line 2236
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method public setContainerView(Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;)V
    .locals 0
    .param p1, "container"    # Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    .prologue
    .line 3183
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    .line 3184
    return-void
.end method

.method public setGridCandidates(Ljava/util/List;I)V
    .locals 16
    .param p2, "keyboardWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3271
    .local p1, "aLableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    div-int/lit8 v1, p2, 0x4

    .line 3272
    .local v1, "KEY_WIDTH_FOUR_COLUMNS":I
    div-int/lit8 v2, p2, 0x2

    .line 3274
    .local v2, "KEY_WIDTH_TWO_COLUMNS":I
    const/4 v5, 0x0

    .line 3276
    .local v5, "curRowNumber":I
    const/4 v9, 0x0

    .line 3277
    .local v9, "isFourLetterCandidatedStarted":Z
    const/4 v10, 0x0

    .line 3278
    .local v10, "isOneLetterCandidatedStarted":Z
    const/4 v3, 0x0

    .line 3279
    .local v3, "curColumnNumber":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 3280
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v8, v14, :cond_e

    .line 3282
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-gt v14, v5, :cond_1

    .line 3283
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3284
    .local v4, "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3289
    :goto_1
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3290
    .local v12, "str":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 3291
    new-instance v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    invoke-direct {v14, v2, v12}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3292
    add-int/lit8 v5, v5, 0x1

    .line 3293
    const/4 v9, 0x0

    .line 3294
    const/4 v10, 0x0

    .line 3295
    const/4 v3, 0x0

    .line 3281
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3286
    .end local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    .end local v12    # "str":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .restart local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    goto :goto_1

    .line 3299
    .restart local v12    # "str":Ljava/lang/String;
    :cond_2
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x6

    if-lt v14, v15, :cond_6

    .line 3300
    if-eqz v10, :cond_5

    .line 3302
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 3303
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 3304
    move/from16 v0, p2

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 3305
    add-int/lit8 v5, v5, 0x1

    .line 3306
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3307
    .restart local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3308
    new-instance v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move/from16 v0, p2

    invoke-direct {v14, v0, v12}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3309
    add-int/lit8 v5, v5, 0x1

    .line 3310
    const/4 v10, 0x0

    .line 3311
    const/4 v3, 0x0

    .line 3312
    goto :goto_2

    .line 3313
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_4

    .line 3314
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 3315
    iput v2, v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 3316
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 3317
    iput v2, v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 3318
    add-int/lit8 v5, v5, 0x1

    .line 3319
    const/4 v3, 0x0

    .line 3320
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3321
    .restart local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3322
    new-instance v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move/from16 v0, p2

    invoke-direct {v14, v0, v12}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3323
    add-int/lit8 v5, v5, 0x1

    .line 3324
    const/4 v10, 0x0

    .line 3325
    goto :goto_2

    .line 3326
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_8

    .line 3327
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 3328
    iput v2, v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 3329
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 3330
    iput v2, v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 3331
    add-int/lit8 v5, v5, 0x1

    .line 3332
    const/4 v14, 0x2

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 3333
    .local v13, "thirdKey":Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;
    move/from16 v0, p2

    iput v0, v13, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 3334
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3335
    .restart local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3336
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3337
    add-int/lit8 v5, v5, 0x1

    .line 3338
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3339
    .restart local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3340
    new-instance v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move/from16 v0, p2

    invoke-direct {v14, v0, v12}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3341
    const/4 v10, 0x0

    .line 3342
    add-int/lit8 v5, v5, 0x1

    .line 3343
    const/4 v3, 0x0

    .line 3344
    goto/16 :goto_2

    .line 3347
    .end local v13    # "thirdKey":Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;
    :cond_5
    new-instance v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move/from16 v0, p2

    invoke-direct {v14, v0, v12}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3348
    add-int/lit8 v5, v5, 0x1

    .line 3349
    const/4 v3, 0x0

    .line 3350
    goto/16 :goto_2

    .line 3352
    :cond_6
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x4

    if-lt v14, v15, :cond_b

    .line 3354
    if-eqz v10, :cond_a

    .line 3356
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    .line 3357
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 3358
    iput v2, v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 3359
    new-instance v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    invoke-direct {v14, v2, v12}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3360
    add-int/lit8 v5, v5, 0x1

    .line 3361
    const/4 v9, 0x0

    .line 3362
    const/4 v10, 0x0

    .line 3363
    const/4 v3, 0x0

    .line 3364
    goto/16 :goto_2

    .line 3365
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_9

    .line 3366
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 3367
    iput v2, v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 3368
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 3369
    iput v2, v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 3370
    add-int/lit8 v5, v5, 0x1

    .line 3371
    const/4 v3, 0x0

    .line 3372
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3373
    .restart local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3374
    new-instance v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    invoke-direct {v14, v2, v12}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3375
    const/4 v9, 0x1

    .line 3376
    const/4 v10, 0x0

    .line 3410
    :cond_8
    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ne v8, v14, :cond_0

    .line 3411
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    .line 3412
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 3413
    move/from16 v0, p2

    iput v0, v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    goto/16 :goto_2

    .line 3377
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_8

    .line 3378
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 3379
    iput v2, v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 3380
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 3381
    iput v2, v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 3382
    add-int/lit8 v5, v5, 0x1

    .line 3383
    const/4 v14, 0x2

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 3384
    .restart local v13    # "thirdKey":Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;
    iput v2, v13, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 3385
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3386
    .restart local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3387
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3388
    new-instance v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    invoke-direct {v14, v2, v12}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3389
    const/4 v9, 0x0

    .line 3390
    const/4 v10, 0x0

    .line 3391
    add-int/lit8 v5, v5, 0x1

    .line 3392
    const/4 v3, 0x0

    .line 3393
    goto :goto_3

    .line 3395
    .end local v13    # "thirdKey":Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;
    :cond_a
    new-instance v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    invoke-direct {v14, v2, v12}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3396
    const/4 v9, 0x1

    .line 3397
    const/4 v10, 0x0

    goto :goto_3

    .line 3400
    :cond_b
    const/4 v10, 0x1

    .line 3401
    new-instance v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    invoke-direct {v14, v1, v12}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3402
    add-int/lit8 v3, v3, 0x1

    .line 3403
    rem-int/lit8 v14, v3, 0x4

    if-nez v14, :cond_8

    .line 3404
    add-int/lit8 v5, v5, 0x1

    .line 3405
    const/4 v3, 0x0

    .line 3406
    const/4 v9, 0x0

    .line 3407
    const/4 v10, 0x0

    goto :goto_3

    .line 3414
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_d

    .line 3415
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 3416
    iput v2, v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 3417
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 3418
    iput v2, v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    goto/16 :goto_2

    .line 3419
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_0

    .line 3420
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 3421
    iput v2, v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 3422
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 3423
    iput v2, v14, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 3424
    const/4 v14, 0x2

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 3425
    .restart local v13    # "thirdKey":Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;
    move/from16 v0, p2

    iput v0, v13, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 3426
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3427
    .restart local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3428
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3433
    .end local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    .end local v12    # "str":Ljava/lang/String;
    .end local v13    # "thirdKey":Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;
    :cond_e
    const/4 v7, 0x0

    .line 3434
    .local v7, "iCandidatesInGridView":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 3435
    .local v11, "oneRow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/2addr v7, v14

    .line 3439
    goto :goto_4

    .line 3440
    .end local v11    # "oneRow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    :cond_f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-eq v7, v14, :cond_10

    .line 3441
    sget-object v14, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v15, "The size of grid is not equal candidate list"

    invoke-virtual {v14, v15}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 3443
    :cond_10
    return-void
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 2
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    const/4 v1, 0x0

    .line 1896
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1898
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1899
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTraceEnabledOnKeyboard:Z

    .line 1908
    :goto_0
    return-void

    .line 1902
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1903
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 1904
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 1906
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateKbdTraceState()V

    goto :goto_0
.end method

.method public setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .locals 7
    .param p1, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 4426
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 4508
    :cond_0
    :goto_0
    return-void

    .line 4429
    :cond_1
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 4431
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v1, :cond_b

    .line 4434
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getAltCharacterConverted()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4438
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4439
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setAltCharacterConverted(Z)V

    .line 4442
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPrefixes(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    move-result-object v0

    .line 4443
    .local v0, "prefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 4444
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v0, v1, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 4446
    :cond_4
    invoke-direct {p0, v5, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0

    .line 4448
    .end local v0    # "prefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_5
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPressedNumOneKey:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasDigitTone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4452
    :cond_6
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v1, :cond_b

    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCandidateSelectedEver:Z

    if-nez v1, :cond_b

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasTone()Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTracedEver:Z

    if-eqz v1, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_8
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    :goto_1
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAlphabeticCharacter(C)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4458
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->lastKeypadBilingualState:Z

    .line 4459
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->produceAltCharacterText()V

    .line 4460
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setAltCharacterConverted(Z)V

    .line 4461
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->confirmDisplayConvertedCandidates()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4462
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInlineAltCharacters()V

    .line 4463
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    invoke-direct {p0, v1, v6, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 4464
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    goto/16 :goto_0

    :cond_9
    move v1, v2

    .line 4452
    goto :goto_1

    .line 4467
    :cond_a
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setAltCharacterConverted(Z)V

    .line 4471
    :cond_b
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->startSession()V

    .line 4472
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dismissPopupKeyboard()V

    .line 4473
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 4474
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v1, :cond_d

    .line 4476
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v1, v3, v4, v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 4478
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideSymbolView()V

    .line 4479
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->englishSymbolList:Ljava/util/List;

    invoke-direct {p0, v1, v2, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showSymbolPopup(Ljava/util/List;IZ)V

    goto/16 :goto_0

    .line 4482
    :cond_d
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearSuggestions()V

    .line 4483
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v1, p1, v3, v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 4484
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v1

    if-nez v1, :cond_e

    .line 4485
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 4486
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/FunctionBarListView;->showFunctionBar()V

    .line 4488
    :cond_e
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_f
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4489
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideSymbolView()V

    .line 4490
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    invoke-direct {p0, v1, v6, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 4500
    :goto_2
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 4501
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSymbolKeyLabel(Z)V

    .line 4502
    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v3, 0x600

    if-eq v1, v3, :cond_10

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4505
    :cond_10
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setPressDownPreviewEnabled(Z)V

    goto/16 :goto_0

    .line 4492
    :cond_11
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsSymbolPageShown:Z

    if-eqz v1, :cond_12

    .line 4493
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRecordLastSymbolPageShown:Z

    .line 4497
    :goto_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideSymbolView()V

    .line 4498
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->hideSymbolList()V

    goto :goto_2

    .line 4495
    :cond_12
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRecordLastSymbolPageShown:Z

    goto :goto_3
.end method

.method protected setNotMatchToolTipSuggestion()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4836
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mShowFunctionBar:Z

    if-eqz v0, :cond_0

    .line 4850
    :goto_0
    return-void

    .line 4839
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 4840
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v0, :cond_1

    .line 4841
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 4842
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showLeftArrow(Z)V

    .line 4843
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 4844
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 4845
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 4847
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 4848
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 4849
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showNotMatchTootip()V

    goto :goto_0
.end method

.method protected setSwypeKeytoolTipSuggestion()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4796
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mShowFunctionBar:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4810
    :cond_0
    :goto_0
    return-void

    .line 4799
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 4800
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v0, :cond_2

    .line 4801
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 4802
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showLeftArrow(Z)V

    .line 4803
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 4804
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 4805
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 4807
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 4808
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 4809
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showSwypeTooltip()V

    goto :goto_0
.end method

.method protected setWritePenColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 3796
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPntWrite:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3797
    return-void
.end method

.method protected setWritePenSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 3800
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPntWrite:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3801
    return-void
.end method

.method protected setWriteRecognitionDelay(I)V
    .locals 0
    .param p1, "delay"    # I

    .prologue
    .line 3804
    iput p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteRecognizeDelay:I

    .line 3805
    return-void
.end method

.method protected setWritingRecognitionDone(Z)V
    .locals 0
    .param p1, "bWritingRecognitionDone"    # Z

    .prologue
    .line 3788
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsWritingRecognitionDone:Z

    .line 3789
    return-void
.end method

.method public shouldDisableInput(I)Z
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 5473
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldShowTips()Z
    .locals 1

    .prologue
    .line 4791
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTraceInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showEmojiInputView()V
    .locals 0

    .prologue
    .line 6200
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearCurrentActiveWord()V

    .line 6201
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->showEmojiInputView()V

    .line 6202
    return-void
.end method

.method public showFunctionBar()V
    .locals 1

    .prologue
    .line 5082
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mShowFunctionBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isCandidateListEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5084
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 5086
    :cond_0
    return-void
.end method

.method public showHardKeyPopupKeyboard(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 6193
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->showHardKeyPopupKeyboard(I)V

    .line 6195
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 6196
    return-void
.end method

.method public showQuickToggleMenu()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 5255
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5307
    :goto_0
    return-void

    .line 5258
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5259
    .local v2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 5260
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Title"

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->handwriting_trace_toggle:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5261
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5262
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 5263
    .local v9, "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Title"

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->cycling_keyboard:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5264
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5265
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/nuance/swype/input/R$layout;->quicktoggle_item:I

    new-array v4, v12, [Ljava/lang/String;

    const-string v5, "Title"

    aput-object v5, v4, v13

    new-array v5, v12, [I

    const v11, 0x1020014

    aput v11, v5, v13

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 5268
    .local v0, "listAdapter":Landroid/widget/SimpleAdapter;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5269
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5270
    new-instance v1, Lcom/nuance/swype/input/chinese/ChineseInputView$15;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$15;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 5279
    sget v1, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 5280
    const/high16 v1, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v6, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5281
    new-instance v1, Lcom/nuance/swype/input/chinese/ChineseInputView$16;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$16;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5296
    sget v1, Lcom/nuance/swype/input/R$string;->function_bar_quick_toggle:I

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5297
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, v1, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 5298
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    .line 5299
    .local v10, "window":Landroid/view/Window;
    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 5300
    .local v7, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 5302
    const/16 v1, 0x3eb

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5303
    invoke-virtual {v10, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5304
    const/high16 v1, 0x20000

    invoke-virtual {v10, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5305
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showRemoveUdbWordDialog(Ljava/lang/String;I)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "wordSource"    # I

    .prologue
    .line 4766
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    .line 4770
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4775
    :goto_0
    return-void

    .line 4774
    :cond_1
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->showRemoveUdbWordDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V
    .locals 11
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/16 v10, 0x66

    const/16 v7, 0x64

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 463
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v5, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v5, :cond_2

    .line 467
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateCandidatesSize()V

    .line 472
    :cond_2
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    if-eqz v5, :cond_3

    .line 473
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/SpellListView;->updateCandidatesSize()V

    .line 475
    :cond_3
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getVerContainer()Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 476
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getVerContainer()Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->updateCandidatesSize()V

    .line 478
    :cond_4
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys()Z

    .line 479
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->finishSession()V

    .line 481
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    if-eqz v5, :cond_5

    .line 484
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->getEditState()Lcom/nuance/swype/input/EditState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/EditState;->startSession()V

    .line 486
    :cond_5
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    if-eqz v5, :cond_6

    .line 487
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 490
    :cond_6
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPhraseCandidates:Ljava/util/List;

    if-eqz v5, :cond_7

    .line 491
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPhraseCandidates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 493
    :cond_7
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPinyinCandidates:Ljava/util/List;

    if-eqz v5, :cond_8

    .line 494
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPinyinCandidates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 497
    :cond_8
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v5, :cond_9

    .line 498
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 499
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v5, v8}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showLeftArrow(Z)V

    .line 501
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->cancelDelayRecognition()V

    .line 503
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 504
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 506
    iput-boolean v9, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsIMEActive:Z

    .line 507
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 508
    iput-boolean v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCompletionOn:Z

    .line 510
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/FunctionBarListView;->recycleBitmap()V

    .line 511
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getShowFunctionBar()Z

    move-result v5

    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mShowFunctionBar:Z

    .line 512
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dismissPopupKeyboard()V

    .line 513
    const/4 v2, 0x0

    .line 515
    .local v2, "enableNameInput":Z
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->startSession()V

    .line 517
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInternalStatus()V

    .line 521
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->checkCurLanguage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 525
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v4

    .line 526
    .local v4, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    sget-object v5, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v4, v5, :cond_a

    sget-object v5, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v4, v5, :cond_c

    .line 529
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v6, v6, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/nuance/swype/input/DatabaseConfig;->removeIncompatibleDBFiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 531
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v4

    .line 532
    sget-object v5, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v4, v5, :cond_b

    sget-object v5, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v4, v5, :cond_c

    .line 534
    :cond_b
    iput-boolean v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isLDBCompatible:Z

    .line 535
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->promptUserToUpdateLanguage()V

    .line 536
    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/chinese/ChineseInputView;->toggleKeyboard(Z)V

    .line 543
    :cond_c
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNameField()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 544
    const/4 v2, 0x1

    .line 547
    :cond_d
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getAltCharacterConverted()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 548
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5, v8}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setAltCharacterConverted(Z)V

    .line 550
    :cond_e
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    .line 551
    .local v0, "currentLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 552
    if-eqz p2, :cond_1b

    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v5, :cond_1b

    .line 555
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v5, v0, p1, v6}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 565
    :cond_f
    :goto_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->loadSettings()V

    .line 566
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mShowFunctionBar:Z

    if-eqz v5, :cond_10

    .line 567
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/FunctionBarListView;->recycleBitmap()V

    .line 568
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->addFunctionBarItem()V

    .line 571
    :cond_10
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v5}, Lcom/nuance/swype/input/Completions;->clear()V

    .line 572
    if-eqz v2, :cond_1c

    .line 573
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v5, v7, v9}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setAttribute(II)Z

    .line 579
    :goto_2
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    const/16 v6, 0x65

    iget v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFuzzyPinyin:I

    invoke-virtual {v5, v6, v7}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setAttribute(II)Z

    .line 580
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 581
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v5, v10, v8}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setAttribute(II)Z

    .line 588
    :goto_3
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearCommonChar()I

    .line 589
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v5

    if-nez v5, :cond_11

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v5

    if-nez v5, :cond_11

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 590
    :cond_11
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setFullSentence()I

    .line 592
    :cond_12
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    if-eqz v5, :cond_13

    .line 593
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/SpellListView;->disableHighlight()V

    .line 595
    :cond_13
    iput-boolean v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mMutitapMaxKeyTimeout:Z

    .line 597
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    if-eqz v5, :cond_14

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteChineseBuildEnabled()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v5

    if-nez v5, :cond_14

    .line 602
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v5, p0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 603
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->clearCategory()V

    .line 604
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addTextCategory()V

    .line 605
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addLatinLetterCategory()V

    .line 606
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addSymbolCategory()V

    .line 607
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addPunctuationCategory()V

    .line 608
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addNumberCategory()V

    .line 609
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    .line 610
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 611
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    const-string v6, "hwr_auto_recpgnize_delay"

    sget v7, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_default_ms:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/nuance/swype/input/settings/InputPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v1

    .line 615
    .local v1, "delay":I
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setWriteRecognitionDelay(I)V

    .line 616
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v5, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setRecognizerDelay(I)V

    .line 617
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->startSession(I)V

    .line 618
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->clearCommonChar()I

    .line 619
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    if-eqz v5, :cond_14

    .line 620
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 623
    .end local v1    # "delay":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_14
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPhraseCandidates:Ljava/util/List;

    if-eqz v5, :cond_15

    .line 624
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPhraseCandidates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 626
    :cond_15
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v6, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputModeName2IntegralValue(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setInputMode(I)Z

    .line 629
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getEnableChineseBilingual()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 630
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v5, v9}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setBilingual(Z)V

    .line 635
    :goto_4
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->activateCategoryDatabase()V

    .line 636
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v5

    if-nez v5, :cond_16

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 637
    :cond_16
    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 642
    :goto_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->initGestureDetector(II)V

    .line 644
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsSymbolPageShown:Z

    if-nez v5, :cond_17

    .line 645
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->hideSymbolList()V

    .line 647
    :cond_17
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideGridCandidatesView()V

    .line 649
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 650
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->triggerPasswordTip()V

    .line 653
    :cond_18
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->postDelayResumeSpeech()V

    .line 655
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsSymbolPageShown:Z

    if-nez v5, :cond_1a

    .line 656
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v5

    if-nez v5, :cond_19

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v5

    if-eqz v5, :cond_20

    :cond_19
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 657
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    const/4 v6, -0x1

    invoke-direct {p0, v5, v6, v8}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 661
    :goto_6
    invoke-direct {p0, v8}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSymbolKeyLabel(Z)V

    .line 664
    :cond_1a
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v6, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 665
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->loadKeyboardGesture()V

    goto/16 :goto_0

    .line 558
    :cond_1b
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v5, p1, v6}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 559
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 560
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v6, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto/16 :goto_1

    .line 576
    :cond_1c
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v5, v7, v8}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setAttribute(II)Z

    goto/16 :goto_2

    .line 584
    :cond_1d
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->correctionLevel:I

    invoke-virtual {v5, v10, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setAttribute(II)Z

    goto/16 :goto_3

    .line 632
    :cond_1e
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v5, v8}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setBilingual(Z)V

    goto/16 :goto_4

    .line 639
    :cond_1f
    invoke-direct {p0, v8, v8}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 640
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    goto/16 :goto_5

    .line 659
    :cond_20
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->hideSymbolList()V

    goto :goto_6
.end method

.method public updateGridViewByPrefix(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 9
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 4294
    instance-of v1, p1, Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-eqz v1, :cond_1

    .line 4361
    :cond_0
    :goto_0
    return-void

    .line 4298
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-ne p1, v1, :cond_0

    .line 4299
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isLastOpWriting()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isWritingRecognitionDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4302
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPopupList()Ljava/util/List;

    move-result-object v6

    .line 4303
    .local v6, "candList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPopupWordSourceList()Ljava/util/List;

    move-result-object v7

    .line 4304
    .local v7, "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4308
    iput-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupDataList:Ljava/util/List;

    .line 4310
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHeight()I

    move-result v5

    .line 4311
    .local v5, "height":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->setMinimumHeight(I)V

    .line 4312
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 4313
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 4314
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setWordSource(Ljava/util/List;)V

    .line 4316
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v6, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setGridCandidates(Ljava/util/List;I)V

    .line 4317
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$xml;->kbd_chinese_popup_template:I

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/util/List;II)V

    .line 4319
    .local v0, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 4320
    iput-boolean v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    .line 4322
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    new-instance v2, Lcom/nuance/swype/input/chinese/ChineseInputView$9;

    invoke-direct {v2, p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView$9;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;Lcom/nuance/swype/input/KeyboardEx;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 4356
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v3

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4358
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->showContextWindow(Landroid/view/View;)V

    .line 4359
    iput-boolean v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mContextWindowShowing:Z

    goto/16 :goto_0
.end method

.method public updateSelection(IIIIII)V
    .locals 9
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 941
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedDefer:Z

    .line 943
    invoke-super/range {p0 .. p6}, Lcom/nuance/swype/input/InputView;->updateSelection(IIIIII)V

    .line 945
    const/4 v1, 0x0

    .line 947
    .local v1, "cursorChanged":Z
    const/4 v0, 0x0

    .line 948
    .local v0, "contextNeedUpdate":Z
    const/4 v2, 0x0

    .line 949
    .local v2, "forceUpdate":Z
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v3

    .line 950
    .local v3, "hasActive":Z
    if-ne p3, p1, :cond_0

    if-eq p4, p2, :cond_10

    .line 952
    :cond_0
    const/4 v1, 0x1

    .line 954
    if-ne p5, p6, :cond_b

    if-ne p5, v5, :cond_b

    .line 959
    const/4 v0, 0x1

    .line 960
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsDelimiterKeyLabelUpdated:Z

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v5, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 964
    invoke-direct {p0, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 966
    :cond_1
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsClearKeyLabelUpdated:Z

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v5, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v5

    if-nez v5, :cond_2

    .line 970
    invoke-direct {p0, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 972
    :cond_2
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInitiativeAccept:Z

    if-eqz v5, :cond_a

    .line 973
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInitiativeAccept:Z

    .line 1032
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isEmojiKeyboardShown()Z

    move-result v5

    if-nez v5, :cond_12

    move v5, v6

    :goto_1
    and-int/2addr v5, v1

    if-eqz v5, :cond_4

    .line 1033
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dismissPopupKeyboard()V

    .line 1035
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dimissRemoveUdbWordDialog()V

    .line 1036
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v5, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isMixedInput()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1040
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideGridCandidatesView()V

    .line 1043
    :cond_6
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsIMEActive:Z

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShown()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1044
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1046
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 1049
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShown()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v5, :cond_8

    .line 1053
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 1054
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 1055
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 1056
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 1057
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 1060
    :cond_8
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedUpdate:Z

    if-nez v5, :cond_13

    .line 1061
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedUpdate:Z

    .line 1093
    :cond_9
    :goto_2
    return-void

    .line 975
    :cond_a
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInternalStatus()V

    goto/16 :goto_0

    .line 978
    :cond_b
    if-ne p4, p6, :cond_f

    .line 979
    if-ne p3, p4, :cond_c

    .line 981
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 984
    :cond_c
    const/4 v0, 0x1

    .line 985
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v4

    .line 986
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_e

    .line 987
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 988
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsDelimiterKeyLabelUpdated:Z

    if-eqz v5, :cond_d

    if-eqz v3, :cond_d

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v5, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v5

    if-nez v5, :cond_d

    .line 992
    invoke-direct {p0, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 994
    :cond_d
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsClearKeyLabelUpdated:Z

    if-eqz v5, :cond_e

    if-eqz v3, :cond_e

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v5, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isSymbolMode()Z

    move-result v5

    if-nez v5, :cond_e

    .line 998
    invoke-direct {p0, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 1001
    :cond_e
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInternalStatus()V

    goto/16 :goto_0

    .line 1007
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_f
    const/4 v0, 0x0

    .line 1009
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 1010
    invoke-direct {p0, v6, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto/16 :goto_0

    .line 1014
    :cond_10
    if-ne p5, p6, :cond_3

    if-ne p5, v5, :cond_3

    .line 1018
    const/4 v0, 0x1

    .line 1023
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInitiativeAccept:Z

    if-eqz v5, :cond_11

    .line 1024
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInitiativeAccept:Z

    goto/16 :goto_0

    .line 1026
    :cond_11
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInternalStatus()V

    .line 1027
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_12
    move v5, v7

    .line 1032
    goto/16 :goto_1

    .line 1065
    :cond_13
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDealingBackspace:Z

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/FunctionBarListView;->isFunctionBarShowing()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1070
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDealingBackspace:Z

    goto :goto_2

    .line 1073
    :cond_14
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isSourceFromPressSpace:Z

    if-eqz v5, :cond_15

    .line 1074
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isSourceFromPressSpace:Z

    .line 1075
    if-nez v3, :cond_15

    .line 1077
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->breakContext()Z

    .line 1079
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    goto :goto_2

    .line 1083
    :cond_15
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsIMEActive:Z

    if-eqz v5, :cond_9

    if-nez v0, :cond_16

    if-eqz v2, :cond_9

    .line 1085
    :cond_16
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/FunctionBarListView;->isFunctionBarDisabledOrZeroItem()Z

    move-result v5

    if-nez v5, :cond_17

    .line 1087
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    const-string v8, ""

    invoke-virtual {v5, v8}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setContext(Ljava/lang/CharSequence;)Z

    .line 1091
    :goto_3
    invoke-direct {p0, v6, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto/16 :goto_2

    .line 1089
    :cond_17
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateContext()Z

    goto :goto_3
.end method

.method public updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I
    .locals 11
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    const/16 v10, 0x1e

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2553
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-nez v6, :cond_1

    :cond_0
    move v5, v7

    .line 2651
    :goto_0
    return v5

    .line 2556
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v6

    if-nez v6, :cond_2

    move v5, v7

    .line 2557
    goto :goto_0

    .line 2560
    :cond_2
    iget-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsIMEActive:Z

    if-nez v6, :cond_3

    .line 2562
    iput-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    move v5, v7

    .line 2563
    goto :goto_0

    .line 2565
    :cond_3
    const/4 v5, 0x0

    .line 2566
    .local v5, "wordListCount":I
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recognitionCandidatesAvailable()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2567
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-nez v6, :cond_4

    move v5, v7

    .line 2568
    goto :goto_0

    .line 2570
    :cond_4
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 2571
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v6, :cond_5

    .line 2572
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v6, v8, v7}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 2573
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 2574
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 2575
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 2576
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 2578
    :cond_5
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2579
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2580
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v8, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 2582
    :cond_6
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v6, :cond_7

    move v5, v7

    .line 2583
    goto :goto_0

    .line 2585
    :cond_7
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2586
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2590
    invoke-direct {p0, v8, v8}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateAltCharacters(Ljava/util/List;Ljava/util/List;)I

    move-result v5

    goto :goto_0

    .line 2592
    :cond_8
    sget-object v6, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p1, v6, :cond_e

    .line 2593
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getCandidates()Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 2594
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isGesture(Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDealGesture:Z

    .line 2595
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleGesture(Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2596
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys()Z

    .line 2597
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDealGesture:Z

    .line 2598
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 2599
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/FunctionBarListView;->showFunctionBar()V

    .line 2600
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 2601
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v6, :cond_9

    .line 2602
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 2604
    :cond_9
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 2609
    :cond_a
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v8, v9, v10}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/util/List;

    move-result-object v4

    .line 2611
    .local v4, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWordsSource()Ljava/util/List;

    move-result-object v2

    .line 2612
    .local v2, "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_b

    .line 2613
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateIndex()I

    move-result v1

    .line 2614
    .local v1, "defaultCandidateIndex":I
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2615
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v8, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2617
    .end local v1    # "defaultCandidateIndex":I
    :cond_b
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDealGesture:Z

    .line 2618
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 2625
    .end local v0    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    :goto_1
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isExactKeyboardShowable()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2626
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-direct {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getExactWord(Ljava/lang/StringBuffer;)V

    .line 2627
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isValidExactKeyboardPhrase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2628
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2629
    .local v3, "word":Ljava/lang/StringBuilder;
    invoke-interface {v4, v7, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2630
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v2, v7, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2633
    .end local v3    # "word":Ljava/lang/StringBuilder;
    :cond_c
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 2634
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showLeftArrow(Z)V

    .line 2635
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_f

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2638
    :cond_d
    invoke-direct {p0, v4, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setWordListToSuggestions(Ljava/util/List;Ljava/util/List;)V

    .line 2649
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    goto/16 :goto_0

    .line 2620
    .end local v2    # "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    .end local v4    # "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_e
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v8, v9, v10}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/util/List;

    move-result-object v4

    .line 2622
    .restart local v4    # "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWordsSource()Ljava/util/List;

    move-result-object v2

    .restart local v2    # "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    goto :goto_1

    .line 2640
    :cond_f
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isSpeechViewShowing()Z

    move-result v6

    if-nez v6, :cond_10

    .line 2641
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 2643
    :cond_10
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/FunctionBarListView;->showFunctionBar()V

    .line 2644
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPressedNumOneKey:Z

    .line 2645
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 2646
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto :goto_2
.end method
