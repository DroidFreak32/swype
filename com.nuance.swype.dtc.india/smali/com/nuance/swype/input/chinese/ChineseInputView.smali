.class public Lcom/nuance/swype/input/chinese/ChineseInputView;
.super Lcom/nuance/swype/input/InputView;
.source "ChineseInputView.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;
.implements Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;
.implements Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$ChinesePredictionListener;
.implements Lcom/nuance/swype/widget/CustomHorizontalScrollView$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;,
        Lcom/nuance/swype/input/chinese/ChineseInputView$ChineseGetMoreWordsHandler;
    }
.end annotation


# static fields
.field private static final CHINESE_BILINGUAL_ACTIVE_INDEX:I = 0xfe

.field private static final CLOUD_PREDICTION_SCROLL_OFFSET:I = 0x14

.field public static final COMPONENT_MARKER:C = '\u9fff'

.field private static final DELAY_SENDKEY:I = 0x64

.field private static final GESTURE_CANDIDATE:I = -0x1

.field protected static final MSG_DELAY_REFRESH_GRID_TABLE_PREFIX:I = 0x1f4

.field private static final PRIMARY_KEYCODE_NUM_NINE_KEYPAD:I = 0x57

.field private static final PRIMARY_KEYCODE_NUM_NINE_KEYPAD_ALT_CHARACTER:I = 0x39

.field private static final PRIMARY_KEYCODE_NUM_ONE_KEYPAD:I = 0x31

.field private static final PRIMARY_KEYCODE_NUM_TWO_KEYPAD:I = 0x41

.field private static final PRIMARY_KEYCODE_NUM_TWO_KEYPAD_ALT_CHARACTER:I = 0x32

.field private static final PRIMARY_KEYCODE_NUM_ZERO_KEYPAD:I = 0x30

.field private static final STROKE_KEYCODE_NUM_FOUR:I = 0x4e36

.field private static final STROKE_KEYCODE_NUM_TWO:I = 0x4e28

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
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

.field private chinesePredictionView:Landroid/view/View;

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

.field private cloudImage:Landroid/widget/ImageView;

.field private cloudRec:Landroid/graphics/Rect;

.field private cloudScrollView:Lcom/nuance/swype/widget/CustomHorizontalScrollView;

.field private cloudText:Landroid/widget/TextView;

.field private conversionHistory:Ljava/util/List;
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

.field private currentPredictionResult:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

.field protected defaultHighlightWord:Ljava/lang/StringBuilder;

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

.field private duplicatePredictionResult:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

.field private exactInputText:Ljava/lang/StringBuilder;

.field private gridViewFunctionButtonPressed:Z

.field private inlineContainerView:Landroid/view/View;

.field private inlineScrollView:Lcom/nuance/swype/util/RightAlignedHorizontalScrollView;

.field private inputContextRequestHandler:Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;

.field inputViewCallback:Landroid/os/Handler$Callback;

.field inputViewHandler:Landroid/os/Handler;

.field private isCandidateSelectedEver:Z

.field private isCloudAnimationStarted:Z

.field private isCloudPredictionAllowed:Z

.field private isDealGesture:Z

.field private isDelimiterPressedEver:Z

.field private isPressedNumOneKey:Z

.field private isShiftedPopupMenu:Z

.field private isSourceFromPressSpace:Z

.field private isTracedEver:Z

.field private lastKeypadBilingualState:Z

.field private mChineseCloudPrediction:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

.field private mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

.field private mChinesePredictionResult:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;

.field private mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

.field private mDealingBackspace:Z

.field private mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mDefaultWord:Landroid/text/SpannableStringBuilder;

.field private mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mErrorFlashBackground:Landroid/text/style/BackgroundColorSpan;

.field private mExactWord:Ljava/lang/StringBuffer;

.field private mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

.field private mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$ChineseGetMoreWordsHandler;

.field mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

.field private mHandwritingOn:Z

.field private mInitiativeAccept:Z

.field public mInsertText:Ljava/lang/StringBuilder;

.field private mInvalidForeground:Landroid/text/style/ForegroundColorSpan;

.field private mIsIMEActive:Z

.field private mIsUpdateInline:Z

.field protected mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

.field private mPYDelimiter:C

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

.field private mPredictionSpell:Ljava/lang/StringBuilder;

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

.field private mSelectWord:Ljava/lang/String;

.field private mSelection:Ljava/lang/StringBuilder;

.field private mTerminateSession:Z

.field private mTextMeasurePaint:Landroid/graphics/Paint;

.field private mTone:Z

.field private mTraceOn:Z

.field private mUnderline:Landroid/text/style/UnderlineSpan;

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

.field private requestCloudDataCompare:[B

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

.field private symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

.field private topInlineView:Landroid/widget/TextView;

.field private touchKeyActionHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

.field private wclCjkChineseCloudBackgroundHighlight:Landroid/graphics/drawable/Drawable;

.field private wclCjkChineseCloudBackgroundImage:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const-string/jumbo v0, "ChineseInputView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x70

    .line 2871
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPinyinCandidates:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->showDataList:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->conversionHistory:Ljava/util/List;

    .line 126
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSelectWord:Ljava/lang/String;

    .line 127
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->defaultHighlightWord:Ljava/lang/StringBuilder;

    .line 148
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsUpdateInline:Z

    .line 149
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTextMeasurePaint:Landroid/graphics/Paint;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedDefer:Z

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPredictionSpell:Ljava/lang/StringBuilder;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->altCharacterText:Ljava/lang/StringBuilder;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertedCharacterList:Ljava/util/List;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    .line 210
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedUpdate:Z

    .line 213
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->doublePinyinTailKeyUnicode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSelection:Ljava/lang/StringBuilder;

    .line 241
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$1;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewCallback:Landroid/os/Handler$Callback;

    .line 354
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    .line 6128
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;Lcom/nuance/swype/input/chinese/ChineseInputView$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    .line 6471
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseInputView$10;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$10;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;

    .line 2872
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x70

    .line 2875
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPinyinCandidates:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->showDataList:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->conversionHistory:Ljava/util/List;

    .line 126
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSelectWord:Ljava/lang/String;

    .line 127
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->defaultHighlightWord:Ljava/lang/StringBuilder;

    .line 148
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsUpdateInline:Z

    .line 149
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTextMeasurePaint:Landroid/graphics/Paint;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedDefer:Z

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPredictionSpell:Ljava/lang/StringBuilder;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->altCharacterText:Ljava/lang/StringBuilder;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertedCharacterList:Ljava/util/List;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    .line 210
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedUpdate:Z

    .line 213
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->doublePinyinTailKeyUnicode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSelection:Ljava/lang/StringBuilder;

    .line 241
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$1;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewCallback:Landroid/os/Handler$Callback;

    .line 354
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    .line 6128
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;Lcom/nuance/swype/input/chinese/ChineseInputView$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    .line 6471
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseInputView$10;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$10;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;

    .line 2876
    return-void
.end method

.method private acceptHWRAndUpdateListView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3433
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 3434
    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->acceptHWRRecognitionWord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3435
    invoke-virtual {p0, v1, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 3437
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->addMoreSuggestions()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setSpeechViewHost()V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/nuance/swype/input/chinese/ChineseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$10100(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/nuance/swype/input/chinese/ChineseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/nuance/swype/input/chinese/ChineseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    return-void
.end method

.method static synthetic access$10500(Lcom/nuance/swype/input/chinese/ChineseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$10600(Lcom/nuance/swype/input/chinese/ChineseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/nuance/swype/input/chinese/ChineseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    return-void
.end method

.method static synthetic access$10800(Lcom/nuance/swype/input/chinese/ChineseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$10900(Lcom/nuance/swype/input/chinese/ChineseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->loadSettings()V

    return-void
.end method

.method static synthetic access$11000(Lcom/nuance/swype/input/chinese/ChineseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    return-void
.end method

.method static synthetic access$11100(Lcom/nuance/swype/input/chinese/ChineseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$11202(Lcom/nuance/swype/input/chinese/ChineseInputView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mLastInput:I

    return p1
.end method

.method static synthetic access$11300(Lcom/nuance/swype/input/chinese/ChineseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/nuance/swype/input/chinese/ChineseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    return-void
.end method

.method static synthetic access$11500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$11600(Lcom/nuance/swype/input/chinese/ChineseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$11702(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInMultiTap:Z

    return p1
.end method

.method static synthetic access$11802(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInMultiTap:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/Completions;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12100(Lcom/nuance/swype/input/chinese/ChineseInputView;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mLastInput:I

    return v0
.end method

.method static synthetic access$12200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    return-void
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/chinese/ChineseInputView;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFuzzyPinyin:I

    return v0
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/InputMethods$InputMode;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/nuance/swype/input/chinese/ChineseInputView;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputModeName2IntegralValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->resumeSpeech()V

    return-void
.end method

.method static synthetic access$2000(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieKeypad()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTraceEnabledOnKeyboard:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->activateCategoryDatabase()V

    return-void
.end method

.method static synthetic access$2400(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->loadKeyboardGesture()V

    return-void
.end method

.method static synthetic access$2500(Lcom/nuance/swype/input/chinese/ChineseInputView;ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;
    .param p3, "x3"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateChinesePredictionView(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->requestChinesePrediction()V

    return-void
.end method

.method static synthetic access$2800(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/InputView$WclPrompt;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->themeStoreWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->switchHandWritingOrTraceOnKeyboard()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/SpellListView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideGridCandidatesView()V

    return-void
.end method

.method static synthetic access$3400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updatePrefixes()V

    return-void
.end method

.method static synthetic access$3802(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->shouldStartChinesePrediction()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updatInlineTextView()V

    return-void
.end method

.method static synthetic access$4000(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChinesePredictionResult:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/nuance/swype/input/chinese/ChineseInputView;ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .prologue
    .line 108
    invoke-direct/range {p0 .. p5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->postUpdateChinesePredictionMessage(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;IJ)V

    return-void
.end method

.method static synthetic access$4200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridViewFunctionButtonPressed:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridViewFunctionButtonPressed:Z

    return p1
.end method

.method static synthetic access$4300()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/nuance/swype/input/chinese/ChineseInputView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wclCjkChineseCloudBackgroundHighlight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/widget/CustomHorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudScrollView:Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/nuance/swype/input/chinese/ChineseInputView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudRec:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/nuance/swype/input/chinese/ChineseInputView;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudRec:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wclCjkChineseCloudBackgroundImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCloudCandidateFixed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentPredictionResult:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/nuance/swype/input/chinese/ChineseInputView;Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;)Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentPredictionResult:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/nuance/swype/input/chinese/ChineseInputView;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSelection:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectPredictionWord()V

    return-void
.end method

.method static synthetic access$5902(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedUpdate:Z

    return p1
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/chinese/ChineseInputView;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseCloudPrediction:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/InputFieldInfo;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/nuance/swype/input/chinese/ChineseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/nuance/swype/input/chinese/ChineseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->pressKey([Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    return-void
.end method

.method static synthetic access$6500(Lcom/nuance/swype/input/chinese/ChineseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/nuance/swype/input/chinese/ChineseInputView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # I

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->resetTrace(I)V

    return-void
.end method

.method static synthetic access$6702(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShiftedPopupMenu:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/nuance/swype/input/chinese/ChineseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/nuance/swype/input/chinese/ChineseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/InputMethods$Language;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/nuance/swype/input/chinese/ChineseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/nuance/swype/input/chinese/ChineseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    return-void
.end method

.method static synthetic access$7200(Lcom/nuance/swype/input/chinese/ChineseInputView;I[F[F[IZI)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # [F
    .param p3, "x3"    # [F
    .param p4, "x4"    # [I
    .param p5, "x5"    # Z
    .param p6, "x6"    # I

    .prologue
    .line 108
    invoke-virtual/range {p0 .. p6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->onTouchMoved(I[F[F[IZI)V

    return-void
.end method

.method static synthetic access$7300(Lcom/nuance/swype/input/chinese/ChineseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/nuance/swype/input/chinese/ChineseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    return-void
.end method

.method static synthetic access$7500(Lcom/nuance/swype/input/chinese/ChineseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPinyinQwertyShiftedState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7700(Lcom/nuance/swype/input/chinese/ChineseInputView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDilimiter(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Lcom/nuance/swype/input/chinese/ChineseInputView;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mLastInput:I

    return v0
.end method

.method static synthetic access$7900(Lcom/nuance/swype/input/chinese/ChineseInputView;CZ)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # C
    .param p2, "x2"    # Z

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleFunctionKey(CZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/nuance/swype/input/chinese/ChineseInputView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAddingZhuyinTone(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8100(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isComponent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8300(Lcom/nuance/swype/input/chinese/ChineseInputView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieWildCard(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieQwerty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/nuance/swype/input/chinese/ChineseInputView;Landroid/graphics/Point;I[IJZ)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Landroid/graphics/Point;
    .param p2, "x2"    # I
    .param p3, "x3"    # [I
    .param p4, "x4"    # J
    .param p6, "x5"    # Z

    .prologue
    .line 108
    invoke-direct/range {p0 .. p6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInput(Landroid/graphics/Point;I[IJZ)V

    return-void
.end method

.method static synthetic access$8700(Lcom/nuance/swype/input/chinese/ChineseInputView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleSeparator(I)V

    return-void
.end method

.method static synthetic access$8802(Lcom/nuance/swype/input/chinese/ChineseInputView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$8902(Lcom/nuance/swype/input/chinese/ChineseInputView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mLastInput:I

    return p1
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/nuance/swype/input/chinese/ChineseInputView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # I

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->finishTrace(I)V

    return-void
.end method

.method static synthetic access$9100(Lcom/nuance/swype/input/chinese/ChineseInputView;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$9200(Lcom/nuance/swype/input/chinese/ChineseInputView;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidIndex:I

    return v0
.end method

.method static synthetic access$9302(Lcom/nuance/swype/input/chinese/ChineseInputView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidKey:I

    return p1
.end method

.method static synthetic access$9402(Lcom/nuance/swype/input/chinese/ChineseInputView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidIndex:I

    return p1
.end method

.method static synthetic access$9500(Lcom/nuance/swype/input/chinese/ChineseInputView;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$9600(Lcom/nuance/swype/input/chinese/ChineseInputView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # I

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->resetTrace(I)V

    return-void
.end method

.method static synthetic access$9702(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInMultiTap:Z

    return p1
.end method

.method static synthetic access$9800(Lcom/nuance/swype/input/chinese/ChineseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/nuance/swype/input/chinese/ChineseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    return-void
.end method

.method private activateCategoryDatabase()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 4526
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 4528
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    new-instance v1, Lcom/nuance/swype/input/CategoryDBList;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6, v9}, Lcom/nuance/swype/input/CategoryDBList;-><init>(Landroid/content/Context;Z)V

    .line 4529
    .local v1, "cdbList":Lcom/nuance/swype/input/CategoryDBList;
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v6, v6, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/nuance/swype/input/CategoryDBList;->getAvailableCDBs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 4530
    .local v2, "cdbNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 4531
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4532
    .local v5, "st":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/CategoryDBList;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4533
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/CategoryDBList;->getFileId(Ljava/lang/String;)I

    move-result v3

    .line 4534
    .local v3, "id":I
    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4535
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v8

    invoke-virtual {v7, v8, v3, v9}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setCategoryDb(IIZ)I

    goto :goto_0

    .line 4539
    .end local v3    # "id":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "st":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private addFunctionBarItem()V
    .locals 3

    .prologue
    .line 4197
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 4199
    .local v0, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getLanguageOption()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mLanguageOptionOn:Z

    .line 4200
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getSettings()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSettingsOn:Z

    .line 4201
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getInputMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputModeOn:Z

    .line 4202
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getQuickToggle()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mQuickToggleOn:Z

    .line 4203
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getEditKeyboard()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditKeyboardOn:Z

    .line 4204
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getNumberKeyboard()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mNumberKeyboardOn:Z

    .line 4205
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getThemes()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mThemesOn:Z

    .line 4206
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getAddOnDictionaries()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mAddOnDictionariesOn:Z

    .line 4207
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getChineseSettings()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseSettingsOn:Z

    .line 4208
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getEmojiOnFunctionBar()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEmojiFunctionBarOn:Z

    .line 4210
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSettingsOn:Z

    if-eqz v1, :cond_0

    .line 4211
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4214
    :cond_0
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mLanguageOptionOn:Z

    if-eqz v1, :cond_1

    .line 4215
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4218
    :cond_1
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputModeOn:Z

    if-eqz v1, :cond_2

    .line 4219
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4223
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4224
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditKeyboardOn:Z

    if-eqz v1, :cond_3

    .line 4225
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4228
    :cond_3
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mNumberKeyboardOn:Z

    if-eqz v1, :cond_4

    .line 4229
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4233
    :cond_4
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mQuickToggleOn:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4234
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    if-eqz v1, :cond_a

    .line 4235
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4246
    :cond_5
    :goto_0
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mThemesOn:Z

    if-eqz v1, :cond_6

    .line 4247
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4250
    :cond_6
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEmojiFunctionBarOn:Z

    if-eqz v1, :cond_7

    .line 4251
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x76

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4254
    :cond_7
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseSettingsOn:Z

    if-eqz v1, :cond_8

    .line 4255
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x71

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4258
    :cond_8
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mAddOnDictionariesOn:Z

    if-eqz v1, :cond_9

    .line 4259
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x70

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4262
    :cond_9
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x73

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    .line 4263
    return-void

    .line 4237
    :cond_a
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    const/16 v2, 0x75

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->addToolBarItem(I)V

    goto :goto_0
.end method

.method private addMoreSuggestions()V
    .locals 5

    .prologue
    .line 2833
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v2, :cond_1

    .line 2854
    :cond_0
    :goto_0
    return-void

    .line 2837
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2842
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 2843
    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->recognitionCandidatesAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2844
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 2845
    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isExactKeyboardShowable()Z

    move-result v3

    const/16 v4, 0x1e

    .line 2844
    invoke-virtual {v2, v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getMoreWords(ZI)Ljava/util/List;

    move-result-object v1

    .line 2847
    .local v1, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWordsSource()Ljava/util/List;

    move-result-object v0

    .line 2849
    .local v0, "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2850
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 2851
    invoke-virtual {v2, v1, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setMoreSuggestions(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method private allowChinesePrediction()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5783
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    .line 5784
    invoke-virtual {v4}, Lcom/nuance/swype/input/AppPreferences;->getChineseCloudNetworkOption()Ljava/lang/String;

    move-result-object v0

    .line 5786
    .local v0, "cloudOpt":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5803
    :cond_0
    :goto_0
    return v2

    .line 5788
    :cond_1
    const-string/jumbo v4, "chinese_cloud_diabled"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5790
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->isDataUsageOptInAccepted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5793
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getPlatformUtil()Lcom/nuance/swype/input/PlatformUtil;

    move-result-object v1

    .line 5794
    .local v1, "util":Lcom/nuance/swype/input/PlatformUtil;
    const-string/jumbo v4, "chinese_cloud_wifi_only"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5795
    invoke-virtual {v1}, Lcom/nuance/swype/input/PlatformUtil;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 5796
    goto :goto_0

    .line 5797
    :cond_2
    const-string/jumbo v4, "chinese_cloud_all"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5798
    invoke-virtual {v1}, Lcom/nuance/swype/input/PlatformUtil;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    .line 5799
    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->connectUseCellularData()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/input/PlatformUtil;->isMobileEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    move v2, v3

    .line 5800
    goto :goto_0
.end method

.method private cancelChinesePrediction()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5491
    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChinesePredictionResult:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;

    .line 5493
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseCloudPrediction:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->cancelChinesePrediction()V

    .line 5494
    const-wide/16 v4, 0x32

    move-object v0, p0

    move v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->postUpdateChinesePredictionMessage(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;IJ)V

    .line 5495
    return-void
.end method

.method private checkCurLanguage()Z
    .locals 1

    .prologue
    .line 3148
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
    .line 899
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 900
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 901
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 910
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return-void

    .line 904
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 905
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->breakContext()Z

    .line 906
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 907
    const-string/jumbo v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 908
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0
.end method

.method private clearInternalStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 914
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInitiativeAccept:Z

    .line 915
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys()Z

    .line 918
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapTimeOut()V

    .line 919
    iput v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidKey:I

    .line 920
    iput v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentIndex:I

    .line 921
    iput v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidIndex:I

    .line 922
    iput v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidTapCount:I

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_1

    .line 925
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 926
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_2

    .line 930
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->clearInternalStatus()V

    .line 933
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 934
    return-void
.end method

.method private commitComposingText()V
    .locals 2

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 781
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 782
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 783
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 784
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 786
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->conversionHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 787
    return-void
.end method

.method private convertToAltCharacters(Ljava/lang/StringBuilder;)Z
    .locals 8
    .param p1, "s"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v7, 0x31

    .line 4323
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4324
    :cond_0
    const/4 v5, 0x0

    .line 4372
    :goto_0
    return v5

    .line 4327
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v1, v5, :cond_b

    .line 4328
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 4330
    .local v0, "c":C
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4331
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDilimiter(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4332
    invoke-virtual {p1, v1, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 4327
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4337
    :cond_3
    const/16 v5, 0x41

    if-gt v5, v0, :cond_6

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_6

    .line 4338
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->altCharacterText:Ljava/lang/StringBuilder;

    add-int/lit8 v6, v0, -0x41

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v1, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 4343
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 4344
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 4345
    .local v2, "index":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lt v2, v5, :cond_7

    .line 4347
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4348
    add-int/lit8 v3, v3, -0x1

    .line 4343
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4339
    .end local v2    # "index":I
    .end local v3    # "j":I
    :cond_6
    const/16 v5, 0x61

    if-gt v5, v0, :cond_4

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_4

    .line 4340
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->altCharacterText:Ljava/lang/StringBuilder;

    add-int/lit8 v6, v0, -0x61

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v1, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    .line 4352
    .restart local v2    # "index":I
    .restart local v3    # "j":I
    :cond_7
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    if-ne v5, v6, :cond_5

    .line 4353
    const/16 v5, 0x30

    invoke-virtual {p1, v1, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_4

    .line 4357
    .end local v2    # "index":I
    :cond_8
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_5
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 4358
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 4359
    .restart local v2    # "index":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lt v2, v5, :cond_a

    .line 4361
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4362
    add-int/lit8 v4, v4, -0x1

    .line 4357
    :cond_9
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 4366
    :cond_a
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x32

    if-ne v5, v6, :cond_9

    .line 4367
    invoke-virtual {p1, v1, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_6

    .line 4372
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
    .line 4544
    new-instance v0, Lcom/nuance/swype/input/CategoryDBList;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5}, Lcom/nuance/swype/input/CategoryDBList;-><init>(Landroid/content/Context;Z)V

    .line 4545
    .local v0, "cdbList":Lcom/nuance/swype/input/CategoryDBList;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v4, v4, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/CategoryDBList;->getAvailableCDBs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4546
    .local v1, "cdbNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 4547
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4548
    .local v3, "st":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/CategoryDBList;->getFileId(Ljava/lang/String;)I

    move-result v2

    .line 4549
    .local v2, "id":I
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setCategoryDb(IIZ)I

    goto :goto_0

    .line 4552
    .end local v2    # "id":I
    .end local v3    # "st":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private detectCurrentHandwritingOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3649
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    .line 3650
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

    if-eqz v2, :cond_1

    .line 3651
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v3, 0x900

    if-ne v2, v3, :cond_2

    .line 3653
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

    if-nez v2, :cond_2

    .line 3656
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputModeHandwritingOnkeyboardKey(Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    .line 3662
    :goto_0
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    .line 3664
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    return v0

    .line 3659
    :cond_2
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputModeHandwritingOnkeyboardKey(Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 3662
    goto :goto_1
.end method

.method private filterChinesePreditionResult([Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;)Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;
    .locals 11
    .param p1, "predictions"    # [Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 5809
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_2

    :cond_0
    move-object v2, v5

    .line 5852
    :cond_1
    :goto_0
    return-object v2

    .line 5813
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_3

    .line 5814
    sget-object v4, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "ChinesePrediction result:"

    aput-object v7, v6, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x2

    const-string/jumbo v8, " "

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aget-object v8, p1, v0

    invoke-interface {v8}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getPhrase()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 5813
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5817
    :cond_3
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-nez v4, :cond_4

    move-object v2, v5

    .line 5818
    goto :goto_0

    .line 5821
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v4, v4, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5823
    .local v3, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 5824
    aget-object v2, p1, v9

    goto :goto_0

    .line 5827
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/nuance/swype/input/R$bool;->always_show_chinese_prediction_result:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5828
    aget-object v2, p1, v9

    goto :goto_0

    .line 5832
    :cond_6
    array-length v4, p1

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 5834
    if-lez v4, :cond_8

    .line 5836
    aget-object v2, p1, v9

    .line 5838
    .local v2, "prediction":Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 5839
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getPhrase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5841
    aget-object v4, p1, v9

    iput-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->duplicatePredictionResult:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    move-object v2, v5

    .line 5845
    goto :goto_0

    .line 5838
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "j":I
    .end local v2    # "prediction":Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;
    :cond_8
    move-object v2, v5

    .line 5852
    goto/16 :goto_0
.end method

.method private flashBackground()V
    .locals 6

    .prologue
    .line 3099
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mErrorFlashBackground:Landroid/text/style/BackgroundColorSpan;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    .line 3100
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x121

    .line 3099
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3103
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3104
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 3105
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3107
    :cond_0
    return-void
.end method

.method private flashError()V
    .locals 1

    .prologue
    .line 3080
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3081
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3082
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashBackground()V

    .line 3083
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInlineString(Z)V

    .line 3086
    :cond_0
    return-void
.end method

.method private flashErrorIfNeededInStroke()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1314
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getInputDelimiterCount()I

    move-result v0

    .line 1315
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1316
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 1317
    .local v1, "wdSource":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->defaultHighlightWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v4, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWord(ILjava/lang/StringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    .line 1318
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->defaultHighlightWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    if-eq v3, v4, :cond_0

    .line 1319
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashRedError()V

    .line 1320
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->defaultHighlightWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1321
    const/4 v2, 0x1

    .line 1324
    .end local v1    # "wdSource":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_0
    return v2
.end method

.method private flashRedError()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3089
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3090
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3091
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashBackground()V

    .line 3092
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3096
    :cond_0
    return-void
.end method

.method private flushInineAltCharacters()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4446
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4448
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v2, :cond_0

    .line 4449
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 4450
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_0

    .line 4451
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/view/InputContainerView;->hideWidgetView(Landroid/view/View;)V

    .line 4452
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineContainerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/view/InputContainerView;->hideWidgetView(Landroid/view/View;)V

    .line 4455
    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setAltCharacterConverted(Z)V

    .line 4456
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInlineWord()Z

    .line 4457
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->access$3000(Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;)V

    .line 4458
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertedCharacterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 4459
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4460
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 4461
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 4462
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    .line 4463
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCandidateSelectedEver:Z

    .line 4464
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTracedEver:Z

    .line 4465
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDelimiterPressedEver:Z

    .line 4466
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTone:Z

    .line 4467
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 4468
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 4469
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInternalStatus()V

    .line 4470
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 4471
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 4472
    const/4 v1, 0x1

    .line 4474
    :cond_1
    return v1
.end method

.method private getCloudTextSize()F
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 5739
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 5740
    .local v0, "sp":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$dimen;->cloud_prediction_text_size:I

    .line 5741
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const-string/jumbo v2, "Candidates_Size"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getCandidatesSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;F)F

    move-result v2

    mul-float/2addr v1, v2

    return v1
.end method

.method private getCurrentInputModeHandwritingOnkeyboardKey(Z)Z
    .locals 2
    .param p1, "defaultValue"    # Z

    .prologue
    .line 3642
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 3644
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwritingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 3645
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

.method private getExactTypeAsInline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6095
    .local v0, "inline":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getExactTypeAsInline(Ljava/lang/StringBuilder;)V

    .line 6096
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getExactWord(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "exactWord"    # Ljava/lang/StringBuffer;

    .prologue
    .line 4696
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 4697
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4702
    :cond_0
    :goto_0
    return-void

    .line 4701
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getExactWord(Ljava/lang/StringBuffer;)I

    goto :goto_0
.end method

.method private getInputContents()Ljava/lang/String;
    .locals 4

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 690
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v1, :cond_0

    .line 691
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v3, 0x0

    .line 692
    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 693
    .local v0, "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    .line 694
    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 697
    .end local v0    # "eText":Landroid/view/inputmethod/ExtractedText;
    :goto_0
    return-object v2

    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method private getInputDelimiterCount()I
    .locals 4

    .prologue
    .line 3619
    const/4 v0, 0x0

    .line 3620
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3621
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPYDelimiter:C

    if-ne v2, v3, :cond_0

    .line 3622
    add-int/lit8 v0, v0, 0x1

    .line 3620
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3625
    :cond_1
    return v0
.end method

.method private getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "candidate"    # Ljava/lang/CharSequence;

    .prologue
    .line 6072
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    if-nez v2, :cond_1

    .line 6080
    .end local p1    # "candidate":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 6075
    .restart local p1    # "candidate":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6076
    .local v0, "cand":Ljava/lang/String;
    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 6077
    .local v1, "index":I
    if-lez v1, :cond_0

    .line 6080
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getPureCandidates(Ljava/util/List;)Ljava/util/List;
    .locals 4
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
    .line 6084
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 6085
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6086
    .local v1, "pureCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 6087
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6086
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6090
    :cond_0
    return-object v1
.end method

.method private getValidStrokeCandidateIndex()I
    .locals 7

    .prologue
    const/16 v6, 0x7e

    const/4 v5, 0x1

    const v4, 0x9fff

    const/4 v3, 0x0

    .line 2704
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->suggestions()Ljava/util/List;

    move-result-object v1

    .line 2705
    .local v1, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

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

    .line 2706
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_2

    .line 2707
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2708
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2709
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    .line 2710
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 2711
    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_1

    .line 2716
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v0

    .line 2708
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    move v0, v3

    .line 2716
    goto :goto_1
.end method

.method private handleAutoPunct()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3165
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 3166
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 3174
    :goto_0
    return-void

    .line 3169
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 3170
    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3172
    const-string/jumbo v0, "\u3002"

    .line 3173
    .local v0, "autopunct":Ljava/lang/CharSequence;
    invoke-interface {v1, v0, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method private handleFunctionKey(CZ)V
    .locals 8
    .param p1, "keyCode"    # C
    .param p2, "isMultiTapping"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 6103
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDilimiter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6104
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->access$3102(Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;Z)Z

    .line 6106
    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_5

    .line 6107
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6108
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6109
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getValidStrokeCandidateIndex()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v0, v2, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 6126
    :cond_1
    :goto_0
    return-void

    .line 6111
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v3, v2, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    .line 6114
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 6115
    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->recognitionCandidatesAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6116
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->acceptHWRAndUpdateListView()V

    .line 6118
    :cond_4
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto :goto_0

    .line 6120
    :cond_5
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->shouldHandleKeyViaIME(I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, p1, v3, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleKey(IZI)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6121
    :cond_6
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleGesture(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6122
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    const-wide/16 v6, 0x0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/IME;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto :goto_0
.end method

.method private handlePrediction(I[IZ)V
    .locals 11
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I
    .param p3, "addExplicitSymbol"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2343
    const/4 v7, 0x0

    .line 2345
    .local v7, "success":Z
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2346
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v3

    const-wide/16 v4, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v7

    .line 2347
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v10, [Ljava/lang/Object;

    const-string/jumbo v2, "kathy handlePrediction()... processKey sucess ? "

    aput-object v2, v1, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2351
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v1, "stroke"

    .line 2352
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 2354
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 2355
    .local v6, "inlineWordlen":I
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    if-ne v6, v10, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v6, -0x1

    .line 2357
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x4e28

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v6, -0x2

    .line 2358
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x4e36

    if-ne v0, v1, :cond_1

    .line 2414
    .end local v6    # "inlineWordlen":I
    :goto_0
    return-void

    .line 2361
    .restart local v6    # "inlineWordlen":I
    :cond_1
    const/4 v7, 0x1

    .line 2362
    if-eqz p3, :cond_2

    .line 2363
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addExplicitSymbol(ILcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 2365
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/EditState;->characterTyped(C)V

    .line 2401
    .end local v6    # "inlineWordlen":I
    :cond_3
    :goto_1
    if-nez v7, :cond_9

    .line 2402
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashError()V

    goto :goto_0

    .line 2368
    :cond_4
    if-eqz p2, :cond_3

    .line 2369
    const/4 v7, 0x1

    .line 2370
    if-eqz p3, :cond_5

    .line 2371
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addExplicitSymbol(ILcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 2373
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/EditState;->characterTyped(C)V

    .line 2374
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isMixedInput()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTone:Z

    if-nez v0, :cond_8

    .line 2376
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2377
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getExactWord(Ljava/lang/StringBuffer;)V

    .line 2378
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isValidExactKeyboardPhrase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2379
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    .line 2380
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_7

    .line 2381
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_6

    .line 2382
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 2383
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v8}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 2396
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasTone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2397
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v8}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 2398
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v8}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    goto/16 :goto_1

    .line 2386
    :cond_7
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v8}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 2387
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    goto :goto_2

    .line 2392
    :cond_8
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v8}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 2393
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v8}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 2394
    iput-boolean v9, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    goto :goto_2

    .line 2406
    :cond_9
    invoke-virtual {p0, v9, v9}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 2408
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->shouldStartChinesePrediction()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2409
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->startChinesePrediction()Z

    goto/16 :goto_0

    .line 2412
    :cond_a
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->cancelChinesePrediction()V

    goto/16 :goto_0
.end method

.method private handleSeparator(I)V
    .locals 3
    .param p1, "primaryCode"    # I

    .prologue
    const/4 v1, 0x1

    .line 2427
    const/16 v0, 0x3f

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPhoneticKeypad()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2468
    :cond_1
    :goto_0
    return-void

    .line 2430
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 2431
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInineAltCharacters()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2434
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto :goto_0

    .line 2438
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2440
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isFullSentenceActive()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isHasSegmentDelimiter()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2441
    :cond_4
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isComponent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2442
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashError()V

    goto :goto_0

    .line 2444
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2445
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashErrorIfNeededInStroke()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2449
    :cond_7
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_PUNCTUATION:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 2450
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2451
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 2452
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->commitComposingText()V

    .line 2457
    :goto_1
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto :goto_0

    .line 2455
    :cond_8
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    goto :goto_1

    .line 2461
    :cond_9
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_a

    .line 2462
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onHandleSeparator()V

    .line 2465
    :cond_a
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    .line 2467
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private hasActiveKeySeq()Z
    .locals 1

    .prologue
    .line 3157
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

    .line 3978
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3987
    :cond_0
    :goto_0
    return v1

    .line 3982
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3983
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

    .line 3984
    const/4 v1, 0x1

    goto :goto_0

    .line 3982
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private hasTone()Z
    .locals 1

    .prologue
    .line 3615
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTone:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideFunctionBarList()V
    .locals 1

    .prologue
    .line 4508
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-nez v0, :cond_0

    .line 4512
    :goto_0
    return-void

    .line 4511
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    goto :goto_0
.end method

.method private hideGridCandidatesView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3177
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mContextWindowShowing:Z

    if-eqz v0, :cond_0

    .line 3178
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->hideContextWindow(Landroid/view/View;)V

    .line 3179
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->setMinimumHeight(I)V

    .line 3181
    :cond_0
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    .line 3182
    return-void
.end method

.method private initialSymbolList()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$array;->chinese_symbol:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "chinese_symbol":[Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 399
    return-void
.end method

.method private inputModeName2IntegralValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "inputModeName"    # Ljava/lang/String;

    .prologue
    .line 669
    const/4 v0, -0x1

    .line 671
    .local v0, "inputMode":I
    invoke-static {p1}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModePinyin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 672
    const/4 v0, 0x0

    .line 685
    :cond_0
    :goto_0
    return v0

    .line 673
    :cond_1
    invoke-static {p1}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeZhuyin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 674
    const/4 v0, 0x1

    goto :goto_0

    .line 675
    :cond_2
    const-string/jumbo v1, "stroke"

    .line 676
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 677
    const/4 v0, 0x2

    goto :goto_0

    .line 678
    :cond_3
    const-string/jumbo v1, "doublepinyin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 679
    const/4 v0, 0x3

    goto :goto_0

    .line 680
    :cond_4
    invoke-static {p1}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeCangjie(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 681
    const/4 v0, 0x4

    goto :goto_0

    .line 682
    :cond_5
    invoke-static {p1}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeQuickCangjie(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private isAddingZhuyinTone(I)Z
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 1656
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isZhuyinTone(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAllNumberOneRemoved()Z
    .locals 1

    .prologue
    .line 4271
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPressedNumOneKey:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    .line 4272
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
    .line 4318
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
    .line 1592
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
    .line 2889
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 2890
    .local v0, "mode":Ljava/lang/String;
    const-string/jumbo v1, "cangjie_nine_keys"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "quick_cangjie_nine_keys"

    .line 2891
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

.method private isCangjieQwerty()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2895
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 2896
    .local v0, "mode":Ljava/lang/String;
    sget-object v3, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "isCangjieQwerty...mode:"

    aput-object v5, v4, v1

    aput-object v0, v4, v2

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2897
    const-string/jumbo v3, "cangjie_qwerty"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "quick_cangjie_qwerty"

    .line 2898
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private isCangjieWildCard(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 2902
    const v0, 0xff1f

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCloudCandidateFixed()Z
    .locals 2

    .prologue
    .line 5747
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    .line 5748
    .local v0, "totalWidth":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 5749
    if-gt v1, v0, :cond_0

    .line 5750
    const/4 v1, 0x1

    .line 5752
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isComponent()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3629
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 3630
    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->recognitionCandidatesAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3631
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v2

    .line 3637
    :goto_0
    return v1

    .line 3634
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v1, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    move-result-object v0

    .line 3635
    .local v0, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz v0, :cond_3

    .line 3636
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 3637
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v3, 0x9fff

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private isDilimiter(I)Z
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 1660
    const/16 v0, 0x27

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHasSegmentDelimiter()Z
    .locals 1

    .prologue
    .line 3072
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isHasSegmentDelimiter()Z

    move-result v0

    return v0
.end method

.method private isModeBPMF()Z
    .locals 1

    .prologue
    .line 2924
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeZhuyin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isModeCangjie()Z
    .locals 2

    .prologue
    .line 2883
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 2884
    .local v0, "mode":Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeCangjie(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2885
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
    .line 2919
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v1, "doublepinyin"

    .line 2920
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
    .line 2915
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->isChineseNineKeyPinyin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isModePinyin()Z
    .locals 1

    .prologue
    .line 2911
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModePinyin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isNumberTypeInputField()Z
    .locals 1

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPhoneticKeypad()Z
    .locals 2

    .prologue
    .line 2906
    const-string/jumbo v0, "pinyin_nine_keys"

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v1, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "zhuyin_nine_keys"

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v1, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 2907
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

.method private isPinyinQwertyShiftedState()Z
    .locals 1

    .prologue
    .line 1328
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isQwertyLayout()Z
    .locals 2

    .prologue
    .line 3068
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
    .line 5408
    const/4 v3, 0x0

    .line 5409
    .local v3, "valid":Z
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 5410
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .line 5411
    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->chineseDelimiter()C

    move-result v4

    .line 5410
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 5412
    .local v0, "delimiter":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5413
    const/4 v3, 0x1

    .line 5417
    .end local v0    # "delimiter":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5420
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5421
    .local v2, "inlineWord":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 5422
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getBPMFTones()[C

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 5423
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .line 5424
    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getBPMFTones()[C

    move-result-object v4

    aget-char v4, v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 5423
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5425
    const/4 v3, 0x0

    .line 5426
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v4, :cond_1

    .line 5427
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v5, 0x0

    .line 5428
    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 5435
    .end local v1    # "i":I
    .end local v2    # "inlineWord":Ljava/lang/String;
    :cond_1
    return v3

    .line 5422
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
    .line 1651
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

.method private loadSettings()V
    .locals 6

    .prologue
    const/16 v5, 0x600

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3668
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 3669
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->detectCurrentHandwritingOn()Z

    .line 3670
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    .line 3671
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

    if-eqz v2, :cond_1

    .line 3672
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    if-nez v2, :cond_1

    .line 3673
    if-eqz v1, :cond_0

    .line 3674
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v2, :cond_0

    .line 3675
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onDestroy()V

    .line 3678
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 3679
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingOnKeyboardKey()Ljava/lang/String;

    move-result-object v2

    .line 3678
    invoke-virtual {v0, v2, v4}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 3681
    iget v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    if-ne v2, v5, :cond_9

    .line 3682
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getTraceOnKeyboardKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 3698
    :cond_1
    :goto_0
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

    if-eqz v2, :cond_2

    .line 3699
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getTraceOnKeyboardKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTraceOn:Z

    .line 3701
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v3, 0x900

    if-eq v2, v3, :cond_5

    .line 3703
    :cond_4
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTraceOn:Z

    .line 3705
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateKbdTraceState()V

    .line 3706
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    if-eq v2, v5, :cond_7

    .line 3707
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3709
    :cond_7
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setPressDownPreviewEnabled(Z)V

    .line 3711
    :cond_8
    return-void

    .line 3686
    :cond_9
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v2

    if-nez v2, :cond_a

    .line 3687
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getTraceOnKeyboardKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3691
    :cond_a
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getTraceOnKeyboardKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private logSelectedWordForChinesePrediction(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;

    .prologue
    .line 5901
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseCloudPrediction:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    if-nez v0, :cond_1

    .line 5913
    :cond_0
    :goto_0
    return-void

    .line 5905
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPredictionSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWordSpell(ILjava/lang/StringBuilder;)Z

    .line 5907
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->duplicatePredictionResult:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->duplicatePredictionResult:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    .line 5908
    invoke-interface {v0}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5909
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseCloudPrediction:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->duplicatePredictionResult:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->logSelectedWordForChinesePrediction(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;)V

    goto :goto_0

    .line 5911
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseCloudPrediction:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPredictionSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->logSelectedWordForChinesePrediction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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

    .line 5271
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v5, v5, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    .line 5272
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 5273
    :cond_0
    if-eqz p1, :cond_2

    .line 5274
    const/16 v3, 0x7a

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyToApplication(I)V

    :goto_0
    move v3, v4

    .line 5327
    :cond_1
    :goto_1
    return v3

    .line 5276
    :cond_2
    const/16 v3, 0x7b

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyToApplication(I)V

    goto :goto_0

    .line 5281
    :cond_3
    if-nez p1, :cond_7

    .line 5282
    const/4 v2, 0x0

    .line 5283
    .local v2, "wordCandidatesCount":I
    const/4 v0, 0x0

    .line 5285
    .local v0, "istoomany":Z
    :goto_2
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v4, v4, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_4

    .line 5286
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v4, v4, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 5287
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    sub-int v4, v2, v4

    const/16 v5, 0x3c

    if-lt v4, v5, :cond_5

    .line 5288
    const/4 v0, 0x1

    .line 5295
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 5296
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->requestLayout()V

    .line 5297
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->invalidate()V

    .line 5299
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ge v4, v2, :cond_1

    .line 5300
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5301
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 5302
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v4, v4, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 5303
    .local v1, "word":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 5304
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5305
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 5306
    if-nez v0, :cond_6

    .line 5307
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollEnd()V

    goto :goto_1

    .line 5291
    .end local v1    # "word":Ljava/lang/CharSequence;
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->addMoreSuggestions()V

    goto :goto_2

    .line 5308
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

    .line 5312
    .end local v0    # "istoomany":Z
    .end local v1    # "word":Ljava/lang/CharSequence;
    .end local v2    # "wordCandidatesCount":I
    :cond_7
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-eqz v5, :cond_1

    .line 5314
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 5315
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->requestLayout()V

    .line 5316
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->invalidate()V

    .line 5318
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5319
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 5320
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v4, v4, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 5321
    .restart local v1    # "word":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 5322
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5323
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 5324
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollHead()V

    goto/16 :goto_1
.end method

.method private moveHighlightToWordListNearCandidate(I)V
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    const/4 v4, 0x1

    .line 5222
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5267
    :cond_0
    :goto_0
    return-void

    .line 5225
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setScrollContainer(Z)V

    .line 5226
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->enableHighlight()V

    .line 5227
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v2, v2, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 5228
    .local v1, "wordCandidatesCount":I
    const/4 v0, 0x0

    .line 5229
    .local v0, "isRight":Ljava/lang/Boolean;
    const/16 v2, 0x16

    if-ne p1, v2, :cond_4

    .line 5230
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 5234
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    .line 5237
    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-gtz v2, :cond_5

    .line 5238
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getLeftArrowStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5239
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    goto :goto_0

    .line 5231
    :cond_4
    const/16 v2, 0x15

    if-ne p1, v2, :cond_2

    .line 5232
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 5244
    :cond_5
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5245
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 5251
    :goto_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 5252
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

    .line 5254
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 5255
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->requestLayout()V

    .line 5256
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

    .line 5257
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

    .line 5265
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    goto/16 :goto_0

    .line 5246
    :cond_7
    if-eqz v0, :cond_0

    .line 5247
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_2

    .line 5259
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

    .line 5260
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_0

    .line 5262
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

    .line 5263
    :cond_a
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollPrev()V

    goto :goto_3
.end method

.method private onHardKeySelectionForHandWriting()Z
    .locals 3

    .prologue
    .line 5210
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 5211
    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->recognitionCandidatesAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5212
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 5213
    .local v0, "index":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->getHWRecognitionCandidates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 5214
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 5215
    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->getHWRecognitionCandidates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 5214
    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 5217
    :cond_0
    const/4 v1, 0x1

    .line 5219
    .end local v0    # "index":I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postDelayResumeSpeech()V
    .locals 4

    .prologue
    const/16 v1, 0xb

    .line 657
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 661
    return-void
.end method

.method private postDelayUpdateInlineString()V
    .locals 4

    .prologue
    const/16 v1, 0x11

    .line 649
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 653
    return-void
.end method

.method private postUpdateChinesePredictionMessage(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;IJ)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "result"    # Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;
    .param p3, "param"    # I
    .param p4, "delayMillis"    # J

    .prologue
    const/16 v3, 0x13

    .line 5516
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5517
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5518
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5520
    :cond_0
    return-void

    .line 5518
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private produceAltCharacterText()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4277
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->altCharacterText:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4315
    :cond_0
    :goto_0
    return-void

    .line 4281
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4282
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->altCharacterText:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->mappings_keypad_pinyin:I

    .line 4283
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 4282
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4285
    :cond_2
    new-instance v2, Ljava/util/TreeSet;

    new-instance v3, Lcom/nuance/swype/input/chinese/ChineseInputView$7;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$7;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 4293
    .local v2, "keySet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v6, v5

    move v3, v4

    :goto_1
    if-ge v3, v6, :cond_4

    aget-object v1, v5, v3

    .line 4294
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v7, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    iget-object v7, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-direct {p0, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAlphabeticCharacter(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4295
    invoke-interface {v2, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 4293
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4299
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_4
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 4300
    .restart local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v4, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_5

    .line 4303
    iget-object v0, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    .line 4305
    .local v0, "csAltLabel":Ljava/lang/CharSequence;
    if-nez v0, :cond_6

    .line 4307
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->altCharacterText:Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4309
    :cond_6
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->altCharacterText:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4313
    .end local v0    # "csAltLabel":Ljava/lang/CharSequence;
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_7
    invoke-interface {v2}, Ljava/util/SortedSet;->clear()V

    goto :goto_0
.end method

.method private readStyles(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/high16 v13, -0x10000

    .line 3114
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->FormatTextChinese:[I

    const/4 v4, 0x0

    sget v5, Lcom/nuance/swype/input/R$style;->FormatTextChinese:I

    sget v6, Lcom/nuance/swype/input/R$xml;->defaults:I

    const-string/jumbo v7, "FormatTextChinese"

    move-object v1, p1

    .line 3115
    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainStyledAttributes$6d3b0587(Landroid/content/Context;Landroid/util/AttributeSet;[IIIILjava/lang/String;)Lcom/nuance/swype/plugin/TypedArrayWrapper;

    move-result-object v8

    .line 7030
    .local v8, "a":Lcom/nuance/swype/plugin/TypedArrayWrapper;
    iget-object v0, v8, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    .line 3120
    .local v12, "n":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v12, :cond_3

    .line 3121
    invoke-virtual {v8, v11}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getIndex(I)I

    move-result v10

    .line 3123
    .local v10, "attr":I
    sget v0, Lcom/nuance/swype/input/R$styleable;->FormatTextChinese_isUnderlined:I

    if-ne v10, v0, :cond_1

    .line 3124
    const/4 v0, 0x1

    invoke-virtual {v8, v10, v0}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3125
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mUnderline:Landroid/text/style/UnderlineSpan;

    .line 3120
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 3127
    :cond_1
    sget v0, Lcom/nuance/swype/input/R$styleable;->FormatTextChinese_errorFlashBackgroundColor:I

    if-ne v10, v0, :cond_2

    .line 3128
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v8, v10, v13}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mErrorFlashBackground:Landroid/text/style/BackgroundColorSpan;

    goto :goto_1

    .line 3130
    :cond_2
    sget v0, Lcom/nuance/swype/input/R$styleable;->FormatTextChinese_invalidForegroundColor:I

    if-ne v10, v0, :cond_0

    .line 3131
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v8, v10, v13}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidForeground:Landroid/text/style/ForegroundColorSpan;

    goto :goto_1

    .line 3135
    .end local v10    # "attr":I
    :cond_3
    invoke-virtual {v8}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->recycle()V

    .line 3137
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_4

    .line 3138
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onReadStyles(Landroid/content/Context;)V

    .line 3142
    :cond_4
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    .line 3143
    .local v9, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v0, Lcom/nuance/swype/input/R$attr;->wclCjkChineseCloudBackgroundImage:I

    invoke-virtual {v9, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wclCjkChineseCloudBackgroundImage:Landroid/graphics/drawable/Drawable;

    .line 3144
    sget v0, Lcom/nuance/swype/input/R$attr;->wclCjkChineseCloudBackgroundPressedImage:I

    invoke-virtual {v9, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wclCjkChineseCloudBackgroundHighlight:Landroid/graphics/drawable/Drawable;

    .line 3145
    return-void
.end method

.method private recordCommittedSentence(Ljava/lang/String;)V
    .locals 2
    .param p1, "sentence"    # Ljava/lang/String;

    .prologue
    .line 2294
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    .line 2295
    .local v0, "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    if-eqz v0, :cond_0

    .line 2296
    invoke-interface {v0, p1}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordCommittedSentence(Ljava/lang/String;)V

    .line 2298
    :cond_0
    return-void
.end method

.method private recordTextBuffer()V
    .locals 3

    .prologue
    .line 701
    .line 702
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    .line 703
    .local v0, "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    if-eqz v0, :cond_0

    .line 704
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getInputContents()Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 706
    invoke-interface {v0, v1}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordTextBuffer(Ljava/lang/String;)V

    .line 709
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private removeDLMPhraseByConversionHistory(Ljava/lang/CharSequence;I)V
    .locals 8
    .param p1, "fullPhrase"    # Ljava/lang/CharSequence;
    .param p2, "selectedWordSource"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2278
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "removeDLMPhraseByConversionHistory...segment count: "

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->conversionHistory:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2279
    const/16 v1, 0xe

    if-eq p2, v1, :cond_0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    .line 2281
    :cond_0
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "removeDLMPhraseByConversionHistory...don\'t delete UDB word which already exists."

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2291
    :goto_0
    return-void

    .line 2285
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->conversionHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 2286
    .local v0, "converted":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->dlmDelete(Ljava/lang/String;)Z

    .line 2287
    sget-object v2, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "removeDLMPhraseByConversionHistory...segment: "

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_1

    .line 2289
    .end local v0    # "converted":Ljava/lang/CharSequence;
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->dlmDelete(Ljava/lang/String;)Z

    .line 2290
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "removeDLMPhraseByConversionHistory...remove full: "

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private requestChinesePrediction()V
    .locals 8

    .prologue
    .line 5475
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v0, :cond_1

    .line 5488
    :cond_0
    :goto_0
    return-void

    .line 5478
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->predictionCloudGetData()[B

    move-result-object v7

    .line 5480
    .local v7, "requestCldInputData":[B
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->predictionCloudGetCharacterset()I

    move-result v6

    .line 5482
    .local v6, "characterSet":I
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseCloudPrediction:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v0, :cond_0

    .line 5483
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseCloudPrediction:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 5484
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v1

    .line 5483
    invoke-virtual {v0, v7, v1, v6}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->requestChinesePrediction([BII)V

    .line 5486
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x14

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->postUpdateChinesePredictionMessage(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;IJ)V

    goto :goto_0
.end method

.method private scrollInlineWhenSelect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "selectWord"    # Ljava/lang/String;
    .param p2, "entireWord"    # Ljava/lang/String;

    .prologue
    .line 6039
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6040
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getChineseWordsInline()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6041
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineScrollView:Lcom/nuance/swype/util/RightAlignedHorizontalScrollView;

    .line 8025
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/nuance/swype/util/RightAlignedHorizontalScrollView;->mPercentOfWidth:F

    .line 6062
    :cond_1
    :goto_0
    return-void

    .line 6044
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineScrollView:Lcom/nuance/swype/util/RightAlignedHorizontalScrollView;

    .line 9025
    const/4 v4, 0x0

    iput v4, v3, Lcom/nuance/swype/util/RightAlignedHorizontalScrollView;->mPercentOfWidth:F

    goto :goto_0

    .line 6049
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 6050
    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 6053
    :cond_4
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTextMeasurePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 6055
    .local v0, "commitWidth":F
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTextMeasurePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 6057
    .local v1, "entireWidth":F
    div-float v2, v0, v1

    .line 6059
    .local v2, "scrollToPercent":F
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineScrollView:Lcom/nuance/swype/util/RightAlignedHorizontalScrollView;

    if-eqz v3, :cond_1

    .line 6060
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineScrollView:Lcom/nuance/swype/util/RightAlignedHorizontalScrollView;

    .line 10025
    iput v2, v3, Lcom/nuance/swype/util/RightAlignedHorizontalScrollView;->mPercentOfWidth:F

    goto :goto_0
.end method

.method private selectDefault()V
    .locals 3

    .prologue
    .line 2937
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 2938
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->access$3000(Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;)V

    .line 2939
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapClearInvalid()V

    .line 2940
    return-void
.end method

.method private selectDefaultCandidate()V
    .locals 4

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 827
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 828
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->suggestions()Ljava/util/List;

    move-result-object v0

    .line 829
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 830
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 831
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 832
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 835
    .end local v0    # "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_0
    return-void
.end method

.method private selectPredictionWord()V
    .locals 3

    .prologue
    .line 5889
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearCurrentActiveWord()V

    .line 5891
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 5892
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 5893
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 5894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentPredictionResult:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    invoke-interface {v2}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 5895
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 5896
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 5898
    :cond_0
    return-void
.end method

.method private selectStrokeDefaultCandidate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1214
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 1215
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_4

    .line 1216
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->suggestions()Ljava/util/List;

    move-result-object v1

    .line 1217
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1218
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1220
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1221
    .local v0, "candidate":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v4, v6, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v4, v6, :cond_0

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x7e

    if-eq v4, v5, :cond_0

    .line 1222
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const v4, 0x9fff

    if-ne v3, v4, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 1223
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1225
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1230
    .end local v0    # "candidate":Ljava/lang/CharSequence;
    :cond_3
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1233
    .end local v1    # "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_4
    return-void
.end method

.method private sendPlaceHolderKey(ILjava/util/List;JZ)V
    .locals 5
    .param p1, "placeHolder"    # I
    .param p3, "eventTime"    # J
    .param p5, "addExplilcitSymbol"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .local p2, "indexList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1603
    if-eqz p5, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addExplicitSymbol(ILcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 1605
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->tryBuildingWordCandidateList(Z)Z

    .line 1607
    :cond_0
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 1608
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 1609
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->produceAltCharacterText()V

    .line 1610
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCloudPredictionAllowed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v0, :cond_1

    .line 1611
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->predictionCloudGetData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->requestCloudDataCompare:[B

    .line 1613
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setAltCharacterConverted(Z)V

    .line 1615
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v0, :cond_4

    .line 1617
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1618
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1619
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getExactInputText(Ljava/lang/StringBuilder;)Z

    move-result v0

    .line 1620
    if-eqz v0, :cond_2

    .line 1621
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1622
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertToAltCharacters(Ljava/lang/StringBuilder;)Z

    .line 1626
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertedCharacterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1627
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertedCharacterList:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1629
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertedCharacterList:Ljava/util/List;

    invoke-virtual {v0, v1, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 1631
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 1632
    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onSendPlaceHolderKey()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1634
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 1637
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 1638
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 1639
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInlineAltCharacters()V

    .line 1641
    :cond_4
    return-void
.end method

.method private setContext(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "context"    # Ljava/lang/CharSequence;
    .param p2, "update"    # Z

    .prologue
    .line 790
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v0, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setContext(Ljava/lang/CharSequence;Z)Z

    goto :goto_0
.end method

.method private setWordListToSuggestions(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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
    const/4 v0, 0x0

    .line 2768
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPressedNumOneKey:Z

    .line 2769
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2770
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setAltCharacterConverted(Z)V

    .line 2771
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/FunctionBarListView;->clear()V

    .line 2772
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 2774
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 2775
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 2777
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2778
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getExactWord(Ljava/lang/StringBuffer;)V

    .line 2779
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isValidExactKeyboardPhrase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2780
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isExactKeyboardShowable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2783
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;ILjava/util/List;)V

    .line 2784
    return-void
.end method

.method private shouldStartChinesePrediction()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5856
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5885
    :cond_0
    :goto_0
    return v0

    .line 5860
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isHasTraceInfo()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 5861
    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getAltCharacterConverted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5865
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5869
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasBilingualPrefix()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeNineKeyPinyin()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .line 5870
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActivePrefixIndex()I

    move-result v1

    const/16 v2, 0xfe

    if-eq v1, v2, :cond_0

    .line 5874
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne v1, v2, :cond_0

    .line 5878
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5884
    :cond_4
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_5

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .line 5885
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getDelimiterSize()I

    move-result v1

    if-lez v1, :cond_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showChinesePrediction(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 5916
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5917
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5919
    :cond_0
    return-void

    .line 5917
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private showCloudPredictionTextView(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 5770
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5771
    return-void
.end method

.method private showConvertedCandidates()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4392
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 4422
    :cond_1
    :goto_0
    return v0

    .line 4396
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4397
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4398
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getExactInputText(Ljava/lang/StringBuilder;)Z

    .line 4410
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertToAltCharacters(Ljava/lang/StringBuilder;)Z

    move-result v0

    .line 4412
    .local v0, "success":Z
    if-eqz v0, :cond_1

    .line 4413
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertedCharacterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 4414
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertedCharacterList:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4415
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_1

    .line 4416
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->convertedCharacterList:Ljava/util/List;

    invoke-virtual {v2, v3, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 4417
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 4418
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    goto :goto_0

    .line 4400
    .end local v0    # "success":Z
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getExactWord(Ljava/lang/StringBuffer;)I

    .line 4401
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 4403
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    move v0, v1

    .line 4406
    goto :goto_0
.end method

.method private showFunctionBarList()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4478
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isValidBuild()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4505
    :cond_0
    :goto_0
    return-void

    .line 4481
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v0, :cond_0

    .line 4485
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showChinesePrediction(Z)V

    .line 4486
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showTopInline(Z)V

    .line 4488
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 4489
    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->recognitionCandidatesAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 4490
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4491
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 4492
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 4493
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 4494
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 4495
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    goto :goto_0

    .line 4498
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 4499
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 4500
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hidePhraseListView()V

    .line 4501
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 4502
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showFunctionBarListView()V

    .line 4503
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
    .line 3221
    .local p1, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showGridCandidatesView(Ljava/util/List;Ljava/util/List;)V

    .line 3222
    return-void
.end method

.method private showGridCandidatesView(Ljava/util/List;Ljava/util/List;)V
    .locals 16
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
    .line 3226
    .local p1, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p2, "aWordSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3398
    :cond_0
    :goto_0
    return-void

    .line 3228
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mContextWindowShowing:Z

    if-nez v2, :cond_0

    .line 3230
    invoke-super/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->isSpeechViewShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3234
    invoke-direct/range {p0 .. p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getPureCandidates(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupDataList:Ljava/util/List;

    .line 3235
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3236
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    .line 3237
    .local v9, "cs":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const v4, 0x9fff

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x7e

    if-eq v3, v4, :cond_2

    .line 3238
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->showDataList:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3243
    .end local v9    # "cs":Ljava/lang/CharSequence;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hidePhraseListView()V

    .line 3245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v2, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isMixedInput()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3246
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 3247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 3248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getHeight()I

    move-result v7

    .line 3249
    .local v7, "candidateHeight":I
    if-eqz v7, :cond_8

    .line 3250
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHeight()I

    move-result v2

    add-int v6, v2, v7

    .line 3261
    .end local v7    # "candidateHeight":I
    .local v6, "height":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v14

    .line 3262
    .local v14, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v2, v6}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->setMinimumHeight(I)V

    .line 3264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eq v2, v14, :cond_5

    .line 3265
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    .line 3267
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    if-nez v2, :cond_6

    .line 3269
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 3270
    .local v11, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 3271
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 3272
    sget v2, Lcom/nuance/swype/input/R$layout;->candidates_popup:I

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    .line 3273
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 3276
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v13, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3279
    .local v13, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v2, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3280
    const/high16 v2, -0x80000000

    invoke-static {v14, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 3281
    .local v15, "widthMeasureSpec":I
    const/high16 v2, -0x80000000

    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 3282
    .local v10, "heightMeasureSpec":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v2, v15, v10}, Landroid/view/View;->measure(II)V

    .line 3284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    sget v3, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    .line 3285
    .local v8, "closeButton":Landroid/widget/ImageButton;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$drawable;->keyboard_popup_btn_close_cjk:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3286
    new-instance v2, Lcom/nuance/swype/input/chinese/ChineseInputView$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView$3;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    invoke-virtual {v8, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3314
    new-instance v2, Lcom/nuance/swype/input/chinese/ChineseInputView$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView$4;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    invoke-virtual {v8, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    sget v3, Lcom/nuance/swype/input/R$id;->scroll_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    .line 3337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    sget v3, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    .line 3338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setContextCandidatesView(Z)V

    .line 3341
    .end local v8    # "closeButton":Landroid/widget/ImageButton;
    .end local v10    # "heightMeasureSpec":I
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v13    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15    # "widthMeasureSpec":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 3342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 3343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setWordSource(Ljava/util/List;)V

    .line 3344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setDoubleBuffered(Z)V

    .line 3346
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->showDataList:Ljava/util/List;

    .line 3347
    .local v12, "keyboardDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2, v3, v12, v4}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setGridCandidates(Ljava/util/List;Ljava/util/List;I)V

    .line 3348
    new-instance v1, Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$xml;->kbd_chinese_popup_template:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    .line 3349
    invoke-virtual {v5}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v5

    invoke-direct/range {v1 .. v6}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/util/List;II)V

    .line 3350
    .local v1, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 3351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setIme(Lcom/nuance/swype/input/IME;)V

    .line 3352
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    .line 3354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->showDataList:Ljava/util/List;

    if-eqz v2, :cond_7

    .line 3355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->showDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3358
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    new-instance v3, Lcom/nuance/swype/input/chinese/ChineseInputView$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView$5;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;Lcom/nuance/swype/input/KeyboardEx;)V

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 3395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 3396
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v4

    invoke-direct {v3, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3395
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->showContextWindow(Landroid/view/View;)V

    goto/16 :goto_0

    .line 3253
    .end local v1    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    .end local v6    # "height":I
    .end local v12    # "keyboardDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v14    # "width":I
    .restart local v7    # "candidateHeight":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHeight()I

    move-result v2

    .line 3254
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$dimen;->candidates_list_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v6, v2, v3

    .line 3257
    .restart local v6    # "height":I
    goto/16 :goto_2

    .line 3258
    .end local v6    # "height":I
    .end local v7    # "candidateHeight":I
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 3259
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHeight()I

    move-result v6

    .restart local v6    # "height":I
    goto/16 :goto_2

    .line 3346
    .restart local v14    # "width":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupDataList:Ljava/util/List;

    goto/16 :goto_3
.end method

.method private showPinyinSelectionList(Ljava/util/List;IZ)V
    .locals 5
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
    .local p1, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/16 v4, 0x1f4

    const/16 v2, 0xb

    const/4 v1, 0x0

    .line 3186
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3218
    :cond_0
    :goto_0
    return-void

    .line 3188
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    .line 3189
    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isMixedInput()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3190
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/chinese/SpellListView;->setSuggestions(Ljava/util/List;I)V

    .line 3192
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 3193
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3195
    :cond_2
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    if-eqz v0, :cond_4

    .line 3196
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showSpellPrefixSuffixList()V

    .line 3197
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3198
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3200
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3201
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3207
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3210
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTraceInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3212
    :cond_6
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    if-eqz v0, :cond_0

    .line 3215
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPhoneticKeypad()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3216
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 3215
    :goto_1
    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->setSpellPrefix(Z)V

    .line 3217
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->showPrefixList(Ljava/util/List;IZ)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 3216
    goto :goto_1
.end method

.method private showTopInline(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 5922
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineContainerView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineContainerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5923
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineContainerView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5925
    :cond_0
    return-void

    .line 5923
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private startChinesePrediction()Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x12

    .line 5454
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCloudPredictionAllowed:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->shouldStartChinesePrediction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5471
    :cond_0
    :goto_0
    return v0

    .line 5458
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 5459
    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5463
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->cancelChinesePrediction()V

    .line 5465
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5466
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5469
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5471
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private switchHandWritingOrTraceOnKeyboard()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 4671
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 4672
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    if-eqz v1, :cond_1

    .line 4673
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v1, :cond_0

    .line 4674
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onDestroy()V

    .line 4677
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingOnKeyboardKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 4678
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->getTraceOnKeyboardKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 4679
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->functionbar_hwtoggle_toast_off:I

    .line 4680
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 4681
    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 4679
    invoke-static {v1, v2, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 4690
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 4691
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v1, v2, v5}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 4693
    return-void

    .line 4683
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingOnKeyboardKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 4684
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->getTraceOnKeyboardKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 4685
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->functionbar_hwtoggle_toast_on:I

    .line 4686
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 4687
    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 4685
    invoke-static {v1, v2, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method

.method private updatInlineTextView()V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 5963
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-nez v7, :cond_1

    .line 6036
    :cond_0
    :goto_0
    return-void

    .line 5966
    :cond_1
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 5967
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_0

    .line 5970
    sget-object v7, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v8, v13, [Ljava/lang/Object;

    const-string/jumbo v9, "#keyboard width:"

    aput-object v9, v8, v11

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/KeyboardEx;->getDisplayWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 5971
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardEx;->getDisplayWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    div-int/lit8 v2, v7, 0xa

    .line 5973
    .local v2, "inlineWidth":I
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineContainerView:Landroid/view/View;

    if-nez v7, :cond_2

    .line 5974
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 5975
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 5976
    sget v7, Lcom/nuance/swype/input/R$layout;->inline_popup_view:I

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineContainerView:Landroid/view/View;

    .line 5977
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineContainerView:Landroid/view/View;

    invoke-virtual {v0, v7}, Lcom/nuance/swype/input/view/InputContainerView;->addWidgetView(Landroid/view/View;)V

    .line 5978
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineContainerView:Landroid/view/View;

    sget v8, Lcom/nuance/swype/input/R$id;->inline_text:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->topInlineView:Landroid/widget/TextView;

    .line 5979
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->topInlineView:Landroid/widget/TextView;

    const v8, 0x3f4ccccd    # 0.8f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 5980
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineContainerView:Landroid/view/View;

    sget v8, Lcom/nuance/swype/input/R$id;->ontopinlinescrollView:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/util/RightAlignedHorizontalScrollView;

    iput-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineScrollView:Lcom/nuance/swype/util/RightAlignedHorizontalScrollView;

    .line 5981
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v4, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5982
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineScrollView:Lcom/nuance/swype/util/RightAlignedHorizontalScrollView;

    invoke-virtual {v7, v4}, Lcom/nuance/swype/util/RightAlignedHorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5983
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineScrollView:Lcom/nuance/swype/util/RightAlignedHorizontalScrollView;

    invoke-virtual {v7, v11}, Lcom/nuance/swype/util/RightAlignedHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 5987
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSelectWord:Ljava/lang/String;

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/nuance/swype/input/chinese/ChineseInputView;->scrollInlineWhenSelect(Ljava/lang/String;Ljava/lang/String;)V

    .line 5989
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineScrollView:Lcom/nuance/swype/util/RightAlignedHorizontalScrollView;

    invoke-virtual {v7}, Lcom/nuance/swype/util/RightAlignedHorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 5990
    .restart local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v7, v2, :cond_3

    .line 5991
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 5992
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineScrollView:Lcom/nuance/swype/util/RightAlignedHorizontalScrollView;

    invoke-virtual {v7, v4}, Lcom/nuance/swype/util/RightAlignedHorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5995
    :cond_3
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->topInlineView:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 5998
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v7

    if-nez v7, :cond_5

    .line 5999
    :cond_4
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineContainerView:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 6000
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineContainerView:Landroid/view/View;

    invoke-virtual {v0, v7}, Lcom/nuance/swype/input/view/InputContainerView;->hideWidgetView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 6006
    :cond_5
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->topInlineView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6009
    sget-object v7, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v8, v12, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "InlineText "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 6012
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/view/InputContainerView;->getVisibleWindowRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 6013
    .local v3, "keyboardRec":Landroid/graphics/Rect;
    if-eqz v3, :cond_0

    .line 6017
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v7

    sget-object v8, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v7, v8, :cond_6

    .line 6018
    sget-object v7, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v8, v13, [Ljava/lang/Object;

    const-string/jumbo v9, "#keyboard total width:"

    aput-object v9, v8, v11

    iget-object v9, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v9}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/IMEApplication;->getDisplayWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 6019
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getDisplayWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/KeyboardEx;->getDisplayWidth()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 6020
    sget-object v7, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v8, v13, [Ljava/lang/Object;

    const-string/jumbo v9, "#keyboard left width:"

    aput-object v9, v8, v11

    iget v9, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 6023
    :cond_6
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 6024
    .local v5, "rec":Landroid/graphics/Rect;
    iget v7, v3, Landroid/graphics/Rect;->top:I

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 6025
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iput v7, v5, Landroid/graphics/Rect;->top:I

    .line 6027
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineContainerView:Landroid/view/View;

    invoke-virtual {v0, v7}, Lcom/nuance/swype/input/view/InputContainerView;->showWidgetView(Landroid/view/View;)V

    .line 6028
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineContainerView:Landroid/view/View;

    invoke-virtual {v7, v11, v11}, Landroid/view/View;->measure(II)V

    .line 6030
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->topInlineView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-le v2, v7, :cond_7

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->topInlineView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    .line 6031
    .local v6, "width":I
    :goto_1
    iget v7, v3, Landroid/graphics/Rect;->left:I

    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 6032
    iget v7, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v6

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 6033
    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineContainerView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v5, Landroid/graphics/Rect;->top:I

    .line 6035
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineContainerView:Landroid/view/View;

    invoke-virtual {v0, v7, v5}, Lcom/nuance/swype/input/view/InputContainerView;->moveWidgetView(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .end local v6    # "width":I
    :cond_7
    move v6, v2

    .line 6030
    goto :goto_1
.end method

.method private updateAltCharacters()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2724
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasTone()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v5, :cond_5

    .line 2726
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 2729
    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->recognitionCandidatesAvailable()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2730
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2731
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->confirmDisplayConvertedCandidates()Z

    .line 2733
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAllNumberOneRemoved()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2734
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->lastKeypadBilingualState:Z

    .line 2735
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v4, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    move-result-object v2

    .line 2736
    .local v2, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWordsSource()Ljava/util/List;

    move-result-object v1

    .line 2737
    .local v1, "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-direct {p0, v2, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setWordListToSuggestions(Ljava/util/List;Ljava/util/List;)V

    .line 2739
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPrefixes(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    move-result-object v0

    .line 2740
    .local v0, "prefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 2741
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-direct {p0, v0, v4, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 2743
    :cond_3
    invoke-virtual {p0, v3, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 2747
    .end local v0    # "prefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v1    # "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    .end local v2    # "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 2761
    :goto_0
    return v3

    .line 2750
    :cond_5
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v3, :cond_6

    .line 2751
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setAltCharacterConverted(Z)V

    .line 2753
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 2754
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/FunctionBarListView;->showFunctionBar()V

    .line 2755
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPressedNumOneKey:Z

    .line 2756
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2757
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2760
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    move v3, v4

    .line 2761
    goto :goto_0
.end method

.method private updateChinesePredictionView(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;I)V
    .locals 24
    .param p1, "show"    # Z
    .param p2, "result"    # Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;
    .param p3, "param"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 5528
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-nez v3, :cond_1

    .line 5735
    :cond_0
    :goto_0
    return-void

    .line 5532
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v12

    .line 5537
    .local v12, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v12, :cond_0

    .line 5540
    const/16 v21, 0x0

    .line 5542
    .local v21, "resultToShow":Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;
    if-eqz p1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->shouldStartChinesePrediction()Z

    move-result v3

    if-nez v3, :cond_3

    .line 5543
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    invoke-virtual {v12, v3}, Lcom/nuance/swype/input/view/InputContainerView;->hideWidgetView(Landroid/view/View;)V

    goto :goto_0

    .line 5547
    :cond_3
    if-eqz p2, :cond_4

    .line 5548
    invoke-interface/range {p2 .. p2}, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;->getPredictions()[Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePrediction;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->filterChinesePreditionResult([Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;)Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    move-result-object v21

    .line 5551
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    if-nez v3, :cond_5

    .line 5552
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v11

    .line 5553
    .local v11, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 5554
    .local v14, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v11, v14}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 5555
    invoke-virtual {v11}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 5556
    sget v3, Lcom/nuance/swype/input/R$layout;->chinese_prediction_view:I

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    .line 5557
    invoke-virtual {v11}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 5558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    invoke-virtual {v12, v3}, Lcom/nuance/swype/input/view/InputContainerView;->addWidgetView(Landroid/view/View;)V

    .line 5560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->cloudPredictionscrollView:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudScrollView:Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    .line 5561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudScrollView:Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/nuance/swype/widget/CustomHorizontalScrollView;->setScrollListener(Lcom/nuance/swype/widget/CustomHorizontalScrollView$ScrollListener;)V

    .line 5562
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudScrollView:Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    sget v4, Lcom/nuance/swype/input/R$id;->search_result:I

    invoke-virtual {v3, v4}, Lcom/nuance/swype/widget/CustomHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudText:Landroid/widget/TextView;

    .line 5563
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    const/4 v4, -0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5564
    .local v18, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudScrollView:Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/nuance/swype/widget/CustomHorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5565
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudScrollView:Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/swype/widget/CustomHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 5566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudScrollView:Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-virtual {v3, v4}, Lcom/nuance/swype/widget/CustomHorizontalScrollView;->setAlpha(F)V

    .line 5567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudScrollView:Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    new-instance v4, Lcom/nuance/swype/input/chinese/ChineseInputView$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView$9;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    invoke-virtual {v3, v4}, Lcom/nuance/swype/widget/CustomHorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->search_image:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudImage:Landroid/widget/ImageView;

    .line 5654
    .end local v11    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v14    # "inflater":Landroid/view/LayoutInflater;
    .end local v18    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentPredictionResult:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    .line 5656
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/view/InputContainerView;->getVisibleWindowRect()Landroid/graphics/Rect;

    move-result-object v17

    .line 5657
    .local v17, "keyboardRec":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/view/InputContainerView;->getInputWindowRect()Landroid/graphics/Rect;

    move-result-object v15

    .line 5659
    .local v15, "inuputRec":Landroid/graphics/Rect;
    if-eqz v17, :cond_0

    if-eqz v15, :cond_0

    .line 5663
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 5664
    .local v19, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5665
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5666
    iget v3, v15, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    invoke-virtual {v12, v3}, Lcom/nuance/swype/input/view/InputContainerView;->showWidgetView(Landroid/view/View;)V

    .line 5669
    if-nez p2, :cond_7

    .line 5671
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudScrollView:Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/swype/widget/CustomHorizontalScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5674
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showCloudPredictionTextView(I)V

    .line 5675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 5677
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5718
    :goto_1
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5719
    if-nez p2, :cond_e

    .line 5720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudImage:Landroid/widget/ImageView;

    .line 5721
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    .line 5722
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 5733
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    move-object/from16 v0, v19

    invoke-virtual {v12, v3, v0}, Lcom/nuance/swype/input/view/InputContainerView;->moveWidgetView(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 5680
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudImage:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5682
    if-eqz v21, :cond_d

    .line 5683
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudScrollView:Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wclCjkChineseCloudBackgroundImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/widget/CustomHorizontalScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5684
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showCloudPredictionTextView(I)V

    .line 5685
    invoke-interface/range {v21 .. v21}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getPhrase()Ljava/lang/String;

    move-result-object v20

    .line 5686
    .local v20, "resultPhrase":Ljava/lang/String;
    if-eqz v20, :cond_8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5687
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showChinesePrediction(Z)V

    goto/16 :goto_0

    .line 5690
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudText:Landroid/widget/TextView;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCloudTextSize()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5694
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 5695
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v22, v3, 0xa

    .line 5696
    .local v22, "textViewWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudScrollView:Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    invoke-virtual {v4}, Lcom/nuance/swype/widget/CustomHorizontalScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudScrollView:Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    invoke-virtual {v4}, Lcom/nuance/swype/widget/CustomHorizontalScrollView;->getPaddingLeft()I

    move-result v4

    add-int v13, v3, v4

    .line 5697
    .local v13, "contentWidth":I
    move/from16 v0, v22

    if-lt v0, v13, :cond_b

    const/16 v16, 0x1

    .line 5698
    .local v16, "isPredictionThinner":Z
    :goto_3
    if-eqz v16, :cond_c

    move/from16 v23, v13

    .line 5700
    .local v23, "width":I
    :goto_4
    if-eqz v16, :cond_a

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 5701
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/nuance/swype/util/CharacterUtilities;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 5703
    add-int/lit8 v23, v23, 0x5

    .line 5705
    :cond_a
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, v3, v23

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 5697
    .end local v16    # "isPredictionThinner":Z
    .end local v23    # "width":I
    :cond_b
    const/16 v16, 0x0

    goto :goto_3

    .restart local v16    # "isPredictionThinner":Z
    :cond_c
    move/from16 v23, v22

    .line 5698
    goto :goto_4

    .line 5708
    .end local v13    # "contentWidth":I
    .end local v16    # "isPredictionThinner":Z
    .end local v20    # "resultPhrase":Ljava/lang/String;
    .end local v22    # "textViewWidth":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudScrollView:Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/swype/widget/CustomHorizontalScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5709
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showCloudPredictionTextView(I)V

    .line 5711
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showChinesePrediction(Z)V

    goto/16 :goto_0

    .line 5723
    :cond_e
    if-nez p3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCloudAnimationStarted:Z

    if-nez v3, :cond_6

    .line 5724
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 5729
    .local v2, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 5730
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5731
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCloudAnimationStarted:Z

    goto/16 :goto_2
.end method

.method private updateClearKeyLabel(Z)V
    .locals 8
    .param p1, "isClearKey"    # Z

    .prologue
    .line 3043
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3064
    :cond_0
    :goto_0
    return-void

    .line 3046
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3049
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieKeypad()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3050
    const/4 p1, 0x1

    .line 3052
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/KeyboardEx;->shouldEnableSpeechKey(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3053
    const/4 p1, 0x1

    .line 3055
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    .line 3056
    .local v7, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    if-eqz v7, :cond_0

    instance-of v0, v7, Lcom/nuance/swype/input/XT9Keyboard;

    if-eqz v0, :cond_0

    move-object v0, v7

    .line 3057
    check-cast v0, Lcom/nuance/swype/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 3058
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTabletDevice()Z

    move-result v5

    move v1, p1

    .line 3057
    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/XT9Keyboard;->updateClearKeyLabel(ZZZZZ)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v6

    .line 3059
    .local v6, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v6, :cond_0

    .line 3060
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 3061
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsClearKeyLabelUpdated:Z

    goto :goto_0
.end method

.method private updateContext()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 802
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 822
    :cond_0
    :goto_0
    return v2

    .line 806
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 807
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 811
    const/4 v3, 0x2

    invoke-interface {v0, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 812
    .local v1, "newContext":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 816
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 817
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->breakContext()Z

    .line 818
    const/4 v2, 0x1

    goto :goto_0

    .line 820
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setContext(Ljava/lang/CharSequence;)Z

    .line 822
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsIMEActive:Z

    goto :goto_0
.end method

.method private updateDelimiterKeyLabel(Z)V
    .locals 8
    .param p1, "isDelimiter"    # Z

    .prologue
    .line 3022
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3040
    :cond_0
    :goto_0
    return-void

    .line 3025
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3028
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3029
    const/4 p1, 0x0

    .line 3031
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    .line 3032
    .local v7, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    if-eqz v7, :cond_0

    instance-of v0, v7, Lcom/nuance/swype/input/XT9Keyboard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v7

    .line 3033
    check-cast v0, Lcom/nuance/swype/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 3034
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTabletDevice()Z

    move-result v5

    move v1, p1

    .line 3033
    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/XT9Keyboard;->updateDelimiterKeyLabel(ZZZZZ)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v6

    .line 3035
    .local v6, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v6, :cond_0

    .line 3036
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 3037
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsDelimiterKeyLabelUpdated:Z

    goto :goto_0
.end method

.method private updateInline()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2983
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 2984
    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->recognitionCandidatesAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2985
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v1, :cond_2

    .line 3019
    :cond_1
    :goto_0
    return-void

    .line 2988
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getInlineString(Landroid/text/SpannableStringBuilder;)Z

    .line 2990
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2991
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2992
    .local v0, "wd":Ljava/lang/String;
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "word length: "

    aput-object v3, v2, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2993
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_3

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2994
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2995
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2999
    .end local v0    # "wd":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3000
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->doublePinyinTailKeyUnicode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3001
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->doublePinyinTailKeyUnicode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getTailDoublePinyinUnicode(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    .line 3002
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Tail double pinyin unicode value: "

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->doublePinyinTailKeyUnicode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3005
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 3006
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mUnderline:Landroid/text/style/UnderlineSpan;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x121

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 3010
    :cond_5
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    .line 3011
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCandidateSelectedEver:Z

    .line 3012
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDelimiterPressedEver:Z

    .line 3013
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTracedEver:Z

    .line 3014
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTone:Z

    .line 3015
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_1

    .line 3016
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    goto/16 :goto_0
.end method

.method private updateInlineAltCharacters()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4427
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4428
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_3

    .line 4429
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4430
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4431
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 4432
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mUnderline:Landroid/text/style/UnderlineSpan;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x121

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4436
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->exactInputText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_2

    .line 4437
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 4440
    :cond_2
    invoke-direct {p0, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showTopInline(Z)V

    .line 4442
    :cond_3
    return-void
.end method

.method private updateInlineString(Z)V
    .locals 3
    .param p1, "setEmptyComposingText"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2951
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInline()V

    .line 2952
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2953
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

    .line 2954
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2955
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2965
    :goto_0
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsDelimiterKeyLabelUpdated:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 2966
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDealGesture:Z

    if-nez v1, :cond_1

    .line 2968
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 2970
    :cond_1
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsClearKeyLabelUpdated:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 2971
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDealGesture:Z

    if-nez v1, :cond_2

    .line 2973
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 2977
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2978
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->invalidateKeyboardImage()V

    .line 2980
    :cond_3
    return-void

    .line 2958
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 2959
    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->recognitionCandidatesAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2960
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 2962
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updatInlineTextView()V

    goto :goto_0
.end method

.method private updateInput(Landroid/graphics/Point;I[IJZ)V
    .locals 16
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "eventTime"    # J
    .param p6, "addExplicitSymbol"    # Z

    .prologue
    .line 1334
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isValidBuild()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1335
    move/from16 v0, p2

    int-to-char v5, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    .line 1569
    :cond_0
    :goto_0
    return-void

    .line 1342
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isSourceFromPressSpace:Z

    .line 1344
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDealingBackspace:Z

    .line 1345
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v13

    .line 1347
    .local v13, "max":I
    const/16 v5, 0x40

    if-lt v13, v5, :cond_2

    .line 1348
    const/16 v5, 0x40

    if-ne v13, v5, :cond_0

    const/16 v5, 0xa

    move/from16 v0, p2

    if-ne v0, v5, :cond_0

    .line 1353
    :cond_2
    const/16 v5, 0x30

    move/from16 v0, p2

    if-ne v0, v5, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1354
    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1355
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->acceptHWRAndUpdateListView()V

    .line 1358
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPinyinQwertyShiftedState()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1359
    move/from16 v0, p2

    int-to-char v4, v0

    .line 1360
    .local v4, "ch":C
    const/16 v5, 0x61

    if-gt v5, v4, :cond_6

    const/16 v5, 0x7a

    if-gt v4, v5, :cond_6

    .line 1361
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 1363
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1364
    const/16 v5, 0x41

    if-gt v5, v4, :cond_9

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_9

    .line 1365
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v6, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 1366
    if-eqz p6, :cond_7

    .line 1367
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v5, v0, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addExplicitSymbol(ILcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 1369
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v5

    const/16 v6, 0x40

    if-lt v5, v6, :cond_8

    .line 1370
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v6, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto/16 :goto_0

    .line 1373
    :cond_8
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 1374
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->startChinesePrediction()Z

    .line 1375
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v6, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto/16 :goto_0

    .line 1377
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    .line 1381
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_0

    .line 1386
    .end local v4    # "ch":C
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v5, :cond_d

    .line 1387
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v5}, Lcom/nuance/swype/input/EditState;->end()V

    .line 1388
    move/from16 v0, p2

    int-to-char v5, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    .line 1567
    :cond_c
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recordUsedTimeTapDisplaySelectionList()V

    goto/16 :goto_0

    .line 1389
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDilimiter(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1391
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInineAltCharacters()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1393
    move/from16 v0, p2

    int-to-char v5, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_0

    .line 1398
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1399
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1404
    const/16 v6, 0x41

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    move-object/from16 v5, p0

    move-wide/from16 v8, p4

    move/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendPlaceHolderKey(ILjava/util/List;JZ)V

    goto/16 :goto_0

    .line 1410
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1411
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1412
    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1413
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->cycleTone()Z

    move-result v14

    .line 1415
    .local v14, "success":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v5, :cond_10

    .line 1416
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 1417
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 1419
    :cond_10
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDelimiterPressedEver:Z

    .line 1420
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTone:Z

    .line 1421
    if-eqz v14, :cond_0

    .line 1422
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 1423
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->startChinesePrediction()Z

    goto/16 :goto_1

    .line 1435
    .end local v14    # "success":Z
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v12

    .line 1437
    .local v12, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-interface {v12}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1438
    const-string/jumbo v5, "\'"

    const/4 v6, 0x1

    invoke-interface {v12, v5, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1439
    invoke-interface {v12}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_1

    .line 1441
    .end local v12    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAddingZhuyinTone(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1442
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addToneForZhuyin(I)Z

    move-result v5

    .line 1443
    if-eqz v5, :cond_13

    .line 1444
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 1445
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->startChinesePrediction()Z

    goto/16 :goto_1

    .line 1447
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashRedError()V

    goto/16 :goto_1

    .line 1449
    :cond_14
    const/16 v5, 0xa

    move/from16 v0, p2

    if-ne v0, v5, :cond_17

    .line 1450
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1451
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1452
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getValidStrokeCandidateIndex()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto/16 :goto_0

    .line 1454
    :cond_15
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto/16 :goto_0

    .line 1458
    :cond_16
    move/from16 v0, p2

    int-to-char v5, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_1

    .line 1460
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v11

    .line 1461
    .local v11, "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v6, 0x900

    if-ne v5, v6, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 1462
    invoke-static {v5}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getEnableChineseBilingual()Z

    move-result v5

    if-eqz v5, :cond_19

    if-eqz p3, :cond_19

    if-nez p1, :cond_19

    .line 1463
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDigit(I)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1464
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNumberTypeInputField()Z

    move-result v5

    if-nez v5, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1465
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1466
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->access$3102(Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;Z)Z

    .line 1467
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v6, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move/from16 v0, p2

    invoke-virtual {v5, v0, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addExplicitKey(ILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 1468
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 1469
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->startChinesePrediction()Z

    goto/16 :goto_1

    .line 1471
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleSeparator(I)V

    goto/16 :goto_1

    .line 1473
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPopupKeyboardShowing()Z

    move-result v5

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDigit(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1474
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleSeparator(I)V

    goto/16 :goto_1

    .line 1475
    :cond_1a
    if-eqz p3, :cond_20

    const/16 v5, 0x30

    move/from16 v0, p2

    if-ne v0, v5, :cond_20

    .line 1476
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v5

    if-eqz v5, :cond_20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1477
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1480
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v5

    if-eqz v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActivePrefixIndex()I

    move-result v5

    const/16 v6, 0xfe

    if-eq v5, v6, :cond_1f

    .line 1481
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNumberTypeInputField()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1485
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1486
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v5

    if-nez v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    .line 1487
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    const/4 v6, 0x0

    .line 1488
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    .line 1487
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAlphabeticCharacter(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1488
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasDigitTone()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1495
    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 1496
    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->recognitionCandidatesAvailable()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1497
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v5

    if-nez v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    .line 1498
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1c

    .line 1500
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInlineWord()Z

    .line 1503
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 1504
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 1505
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPressedNumOneKey:Z

    .line 1511
    :cond_1d
    const/16 v6, 0x57

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-wide/from16 v8, p4

    invoke-direct/range {v5 .. v10}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendPlaceHolderKey(ILjava/util/List;JZ)V

    goto/16 :goto_1

    .line 1488
    :cond_1e
    const/4 v5, 0x0

    goto :goto_2

    .line 1515
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashError()V

    goto/16 :goto_1

    .line 1517
    :cond_20
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v6, 0x600

    if-ne v5, v6, :cond_23

    if-eqz p3, :cond_23

    .line 1518
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDigit(I)Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1519
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNumberTypeInputField()Z

    move-result v5

    if-nez v5, :cond_23

    .line 1520
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDigit(I)Z

    move-result v5

    if-eqz v5, :cond_22

    if-nez p1, :cond_22

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPhoneticKeypad()Z

    move-result v5

    if-nez v5, :cond_21

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieKeypad()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1522
    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleSeparator(I)V

    goto/16 :goto_1

    .line 1526
    :cond_22
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handlePrediction(I[IZ)V

    goto/16 :goto_1

    .line 1528
    :cond_23
    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1529
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v5

    if-eqz v5, :cond_26

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v6, 0x900

    if-ne v5, v6, :cond_26

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieWildCard(I)Z

    move-result v5

    if-eqz v5, :cond_26

    :cond_24
    if-nez p3, :cond_25

    .line 1530
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDigit(I)Z

    move-result v5

    if-nez v5, :cond_26

    :cond_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1531
    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v5

    if-nez v5, :cond_27

    .line 1537
    :cond_26
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleSeparator(I)V

    goto/16 :goto_1

    .line 1539
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNumberTypeInputField()Z

    move-result v5

    if-eqz v5, :cond_28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1540
    move/from16 v0, p2

    int-to-char v5, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_1

    .line 1541
    :cond_28
    if-nez p1, :cond_2c

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1542
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getEnableChineseBilingual()Z

    move-result v5

    if-eqz v5, :cond_2b

    move/from16 v0, p2

    int-to-char v5, v0

    .line 1543
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAlphabeticCharacter(C)Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1544
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1545
    const/16 v5, 0x41

    move/from16 v0, p2

    if-gt v5, v0, :cond_2a

    const/16 v5, 0x5a

    move/from16 v0, p2

    if-gt v0, v5, :cond_2a

    .line 1546
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v6, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 1547
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->processUpperLetterPress(I)Z

    .line 1548
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v5

    const/16 v6, 0x40

    if-lt v5, v6, :cond_29

    .line 1549
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v6, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto/16 :goto_0

    .line 1552
    :cond_29
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 1553
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->startChinesePrediction()Z

    .line 1554
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v6, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto/16 :goto_1

    .line 1555
    :cond_2a
    const/16 v5, 0x61

    move/from16 v0, p2

    if-gt v5, v0, :cond_c

    const/16 v5, 0x7a

    move/from16 v0, p2

    if-gt v0, v5, :cond_c

    .line 1556
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    .line 1557
    move/from16 v0, p2

    int-to-char v5, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_1

    .line 1560
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefaultSuggestion()V

    .line 1561
    move/from16 v0, p2

    int-to-char v5, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_1

    .line 1564
    :cond_2c
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handlePrediction(I[IZ)V

    goto/16 :goto_1
.end method

.method private updateKbdTraceState()V
    .locals 2

    .prologue
    .line 1971
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isValidBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1972
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    .line 1973
    invoke-virtual {v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v0

    .line 1974
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isTraceBuildEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTraceOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1977
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1978
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isPhoneMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1979
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1980
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1981
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTraceEnabledOnKeyboard:Z

    .line 1982
    return-void

    .line 1981
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePrefixes()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 2475
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPhoneticKeypad()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTraceInputEnabled()Z

    move-result v6

    if-nez v6, :cond_b

    .line 2476
    const/4 v5, 0x1

    .line 2477
    .local v5, "updatePrefixList":Z
    const/4 v1, 0x1

    .line 2478
    .local v1, "isPrefix":Z
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2479
    invoke-virtual {v6, v7}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPrefixes(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    move-result-object v3

    .line 2480
    .local v3, "prefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 2481
    const/4 v1, 0x0

    .line 2483
    :cond_0
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPinyinCandidates:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 2485
    .local v4, "prefixSize":I
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasBilingualPrefix()Z

    move-result v0

    .line 2486
    .local v0, "currentBilingual":Z
    if-lez v4, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_3

    .line 2487
    const/4 v5, 0x0

    .line 2496
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPinyinCandidates:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-le v4, v10, :cond_1

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPinyinCandidates:Ljava/util/List;

    add-int/lit8 v7, v4, -0x1

    .line 2497
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 2498
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v4, -0x1

    .line 2499
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->lastKeypadBilingualState:Z

    if-eq v6, v0, :cond_3

    .line 2501
    :cond_2
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->lastKeypadBilingualState:Z

    .line 2502
    const/4 v5, 0x1

    .line 2505
    :cond_3
    if-eqz v5, :cond_4

    .line 2506
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPinyinCandidates:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 2507
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 2508
    .local v2, "prefix":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPinyinCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2511
    .end local v2    # "prefix":Ljava/lang/CharSequence;
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 2512
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2513
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    if-eqz v6, :cond_6

    .line 2515
    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 2516
    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2517
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2518
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$string;->label_chn_eng_key:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2520
    :cond_5
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v6, v3, v9, v10}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->showPrefixList(Ljava/util/List;IZ)V

    .line 2577
    .end local v0    # "currentBilingual":Z
    .end local v1    # "isPrefix":Z
    .end local v3    # "prefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v4    # "prefixSize":I
    .end local v5    # "updatePrefixList":Z
    :cond_6
    :goto_1
    return-void

    .line 2526
    .restart local v0    # "currentBilingual":Z
    .restart local v1    # "isPrefix":Z
    .restart local v3    # "prefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v4    # "prefixSize":I
    .restart local v5    # "updatePrefixList":Z
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 2527
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2529
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_a

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 2531
    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v6

    if-nez v6, :cond_a

    .line 2532
    if-eqz v1, :cond_9

    .line 2533
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v0, :cond_9

    .line 2534
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$string;->label_chn_eng_key:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2537
    :cond_9
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-direct {p0, v3, v6, v10}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    goto :goto_1

    .line 2539
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2540
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    invoke-direct {p0, v6, v9, v11}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    goto :goto_1

    .line 2543
    .end local v0    # "currentBilingual":Z
    .end local v1    # "isPrefix":Z
    .end local v3    # "prefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v4    # "prefixSize":I
    .end local v5    # "updatePrefixList":Z
    :cond_b
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTraceInputEnabled()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isHasTraceInfo()Z

    move-result v6

    if-nez v6, :cond_d

    :cond_c
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v6, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    .line 2544
    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isMixedInput()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2545
    :cond_d
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v7}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPrefixes(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    move-result-object v3

    .line 2546
    .restart local v3    # "prefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x1

    .line 2547
    .restart local v1    # "isPrefix":Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_e

    .line 2548
    const/4 v1, 0x0

    .line 2550
    :cond_e
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPrefixesCount()I

    move-result v7

    if-le v6, v7, :cond_f

    .line 2551
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2554
    :cond_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 2555
    if-lez v6, :cond_11

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 2556
    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v6

    if-nez v6, :cond_11

    .line 2557
    if-eqz v1, :cond_6

    .line 2558
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasBilingualPrefix()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2559
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$string;->label_chn_eng_key:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2560
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    .line 2561
    if-ne v6, v9, :cond_10

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .line 2562
    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActivePrefixIndex()I

    move-result v6

    const/16 v7, 0xfe

    if-ne v6, v7, :cond_10

    .line 2563
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2566
    :cond_10
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-direct {p0, v3, v6, v10}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    goto/16 :goto_1

    .line 2570
    :cond_11
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v6, :cond_6

    .line 2572
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/SpellListView;->clear()V

    .line 2573
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showSpellPrefixSuffixList()V

    goto/16 :goto_1
.end method


# virtual methods
.method protected clearAllKeys()V
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->access$3000(Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;)V

    .line 948
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 949
    return-void
.end method

.method public clearCurrentActiveWord()V
    .locals 0

    .prologue
    .line 885
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInlineWord()V

    .line 886
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 887
    return-void
.end method

.method protected clearKeyboardState()V
    .locals 1

    .prologue
    .line 3478
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->clearKeyboardState()V

    .line 3480
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_0

    .line 3481
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onClearKeyboardState()V

    .line 3483
    :cond_0
    return-void
.end method

.method public clearSuggestions()V
    .locals 3

    .prologue
    .line 938
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 942
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 943
    return-void
.end method

.method public closeGridCandidatesView()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v8, -0x2

    const/high16 v7, -0x80000000

    .line 5332
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideGridCandidatesView()V

    .line 5333
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    if-nez v4, :cond_0

    .line 5335
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$layout;->candidates_popup:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    .line 5336
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    sget v5, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 5337
    new-instance v5, Lcom/nuance/swype/input/chinese/ChineseInputView$8;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$8;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5360
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    sget v5, Lcom/nuance/swype/input/R$id;->scroll_view:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    .line 5361
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    sget v5, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    iput-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    .line 5364
    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5367
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5368
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getHeight()I

    move-result v5

    add-int v0, v4, v5

    .line 5369
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v4

    .line 5370
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 5371
    .local v3, "widthMeasureSpec":I
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 5372
    .local v1, "heightMeasureSpec":I
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v4, v3, v1}, Landroid/view/View;->measure(II)V

    .line 5374
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v4, :cond_1

    .line 5375
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 5376
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 5377
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActivePrefixIndex()I

    move-result v4

    const/16 v5, 0xfe

    if-ne v4, v5, :cond_1

    .line 5379
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setActivePrefixIndex(I)Z

    .line 5382
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

    .line 5383
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updatePrefixes()V

    .line 5386
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    .line 5387
    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 5389
    return-void
.end method

.method public confirmDisplayConvertedCandidates()Z
    .locals 2

    .prologue
    .line 4516
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

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v0, :cond_3

    .line 4517
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 4519
    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->recognitionCandidatesAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .line 4520
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActivePrefixIndex()I

    move-result v0

    const/16 v1, 0xfe

    if-eq v0, v1, :cond_3

    .line 4521
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showConvertedCandidates()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 2
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "t9write"    # Lcom/nuance/input/swypecorelib/T9Write;
    .param p4, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 365
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 366
    check-cast p2, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .end local p2    # "xt9coreinput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    iput-object p2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .line 368
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-direct {v0, p1, p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v0, p3}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onCreate(Lcom/nuance/input/swypecorelib/T9Write;)V

    .line 373
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-direct {v0, p1, v1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 374
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 376
    new-instance v0, Lcom/nuance/swype/input/chinese/ChineseInputView$ChineseGetMoreWordsHandler;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$ChineseGetMoreWordsHandler;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$ChineseGetMoreWordsHandler;

    .line 379
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 381
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setProximityCorrectionEnabled(Z)V

    .line 383
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

    .line 386
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->readStyles(Landroid/content/Context;)V

    .line 387
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->initialSymbolList()V

    .line 389
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->getInstance(Landroid/content/Context;)Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseCloudPrediction:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    .line 390
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseCloudPrediction:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->setChinesePredictionListener(Lcom/nuance/swype/input/chinese/ChineseCloudPrediction$ChinesePredictionListener;)V

    .line 392
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/dlm/ACCoreInputDLM;->initializeACChineseDLM(Lcom/nuance/swype/connect/Connect;)V

    .line 393
    return-void
.end method

.method public createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;
    .locals 4
    .param p1, "onSelectListener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 436
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v2, :cond_0

    .line 476
    :goto_0
    return-object v1

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-nez v2, :cond_1

    .line 442
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 443
    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 442
    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 444
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 445
    sget v2, Lcom/nuance/swype/input/R$layout;->chinese_candidates:I

    .line 446
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    .line 447
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->setKeyboardViewEx(Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 448
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 449
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->initViews()V

    .line 451
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getCJKCandidatesListView()Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 452
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    .line 453
    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getSpellPrefixSuffixWordListView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/SpellListView;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    .line 454
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V

    .line 455
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    .line 456
    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getFunctionBarListView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/FunctionBarListView;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    .line 457
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    new-instance v2, Lcom/nuance/swype/input/chinese/ChineseInputView$2;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v2, p0, v3, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView$2;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/FunctionBarListView;->setOnFunctionBarListener(Lcom/nuance/swype/input/FunctionBarListView$OnFunctionBarListener;)V

    .line 466
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$ChineseGetMoreWordsHandler;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setGetMoreWordsHandler(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;)V

    .line 467
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/SpellListView;->setOnWordSelectActionListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V

    .line 471
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 472
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hidePhraseListView()V

    .line 473
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 474
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    .line 476
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    goto/16 :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 406
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->hide()V

    .line 408
    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    .line 410
    :cond_0
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->destroy()V

    .line 412
    invoke-static {}, Lcom/nuance/dlm/ACCoreInputDLM;->destroyACChineseDLM()V

    .line 414
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onDestroy()V

    .line 416
    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 419
    :cond_1
    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 420
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->cancelQueryTask()V

    .line 422
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseCloudPrediction:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->destroy()V

    .line 423
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

    .line 4711
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedDefer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4712
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandler:Landroid/os/Handler;

    add-long v2, p3, v6

    .line 4713
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4712
    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4718
    :goto_0
    return-void

    .line 4716
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->detectAndSendKey(IIJ)V

    goto :goto_0
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 1112
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCompletionOn:Z

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/Completions;->update([Landroid/view/inputmethod/CompletionInfo;)V

    .line 1114
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Completions;->getDisplayItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 1116
    :cond_0
    return-void
.end method

.method public finishInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 728
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->conversionHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 729
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v1, :cond_0

    .line 777
    :goto_0
    return-void

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_1

    .line 733
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 734
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_1

    .line 735
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/view/InputContainerView;->hideWidgetView(Landroid/view/View;)V

    .line 736
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/view/InputContainerView;->hideWidgetView(Landroid/view/View;)V

    .line 737
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/view/InputContainerView;->removeActiveWidegtView(Landroid/view/View;)V

    .line 738
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/view/InputContainerView;->removeActiveWidegtView(Landroid/view/View;)V

    .line 741
    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->acceptHWRRecognitionWord()Z

    .line 742
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->endSession()V

    .line 743
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 744
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->deactivateCategoryDatabase()V

    .line 746
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsIMEActive:Z

    .line 747
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->lastKeypadBilingualState:Z

    .line 748
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInternalStatus()V

    .line 749
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideGridCandidatesView()V

    .line 751
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->altCharacterText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 753
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v1, :cond_2

    .line 754
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onFinishInput()V

    .line 757
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->removeAllMessages()V

    .line 759
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseCloudPrediction:Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->finish()V

    .line 761
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsDelimiterKeyLabelUpdated:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 763
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 764
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 766
    :cond_3
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsClearKeyLabelUpdated:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 768
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 769
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 771
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->finishSession()V

    .line 772
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dimissRemoveUdbWordDialog()V

    .line 773
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/FunctionBarListView;->recycleBitmap()V

    .line 774
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 776
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->unwrapTouchEvent(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public flushCurrentActiveWord()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 840
    invoke-static {}, Lcom/nuance/swype/util/ContactUtils;->cancelQueryTask()V

    .line 842
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieKeypad()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapIsInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapClearInvalid()V

    .line 844
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearKey()Z

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasBilingualPrefix()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .line 848
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActivePrefixIndex()I

    move-result v0

    const/16 v2, 0xfe

    if-ne v0, v2, :cond_3

    .line 849
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 850
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefaultCandidate()V

    .line 851
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 862
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 863
    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->acceptHWRRecognitionWord()Z

    move-result v0

    if-nez v0, :cond_2

    .line 864
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsDelimiterKeyLabelUpdated:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 865
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 866
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 868
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsClearKeyLabelUpdated:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 869
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 870
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 873
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInternalStatus()V

    .line 874
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dimissRemoveUdbWordDialog()V

    .line 875
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->altCharacterText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 876
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    .line 877
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCandidateSelectedEver:Z

    .line 878
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTracedEver:Z

    .line 879
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInineAltCharacters()Z

    .line 881
    const/4 v2, 0x0

    const-wide/16 v4, 0x64

    move-object v0, p0

    move v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->postUpdateChinesePredictionMessage(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;IJ)V

    .line 882
    return-void

    .line 853
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 854
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectStrokeDefaultCandidate()V

    .line 855
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    goto :goto_0

    .line 857
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefaultSuggestion()V

    goto :goto_0
.end method

.method public flushInlineWord()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3595
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3596
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 3597
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3598
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3599
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 3605
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInitiativeAccept:Z

    .line 3606
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedUpdate:Z

    .line 3607
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3608
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 3610
    :cond_1
    return v2

    .line 3601
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3602
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method getHighlightVowels(I)[Ljava/lang/String;
    .locals 2
    .param p1, "consonant"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 4601
    packed-switch p1, :pswitch_data_0

    .line 4651
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4603
    :pswitch_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->b_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4605
    :pswitch_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->p_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4607
    :pswitch_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->m_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4609
    :pswitch_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->f_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4611
    :pswitch_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->d_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4613
    :pswitch_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->t_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4615
    :pswitch_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->n_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4617
    :pswitch_8
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->l_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4619
    :pswitch_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->g_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4621
    :pswitch_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->k_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4623
    :pswitch_b
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->h_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4625
    :pswitch_c
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->j_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4627
    :pswitch_d
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->q_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4629
    :pswitch_e
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->x_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4631
    :pswitch_f
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->zh_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4633
    :pswitch_10
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->ch_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4635
    :pswitch_11
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->sh_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4637
    :pswitch_12
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->r_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4639
    :pswitch_13
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->z_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4641
    :pswitch_14
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->c_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4643
    :pswitch_15
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->s_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4645
    :pswitch_16
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->y_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4647
    :pswitch_17
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->w_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4649
    :pswitch_18
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->star_vowels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4601
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

.method public getHighlightedKeyArea(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .locals 12
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 4555
    iget-object v6, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4556
    :cond_0
    sget-object v6, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->NONE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v3

    .line 4596
    :goto_0
    return v3

    .line 4558
    :cond_1
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->doublePinyinTailKeyUnicode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHighlightVowels(I)[Ljava/lang/String;

    move-result-object v5

    .line 4560
    .local v5, "vowels":[Ljava/lang/String;
    iget-object v6, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4561
    .local v1, "label":Ljava/lang/String;
    const/4 v0, 0x0

    .line 4562
    .local v0, "altLabel":Ljava/lang/String;
    iget-object v6, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-eqz v6, :cond_2

    .line 4563
    iget-object v6, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4565
    :cond_2
    const/4 v2, 0x0

    .line 4566
    .local v2, "leftAltLabel":Ljava/lang/String;
    iget-object v6, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->leftAltLabel:Ljava/lang/CharSequence;

    if-eqz v6, :cond_3

    .line 4567
    iget-object v6, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->leftAltLabel:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4570
    :cond_3
    if-nez v5, :cond_7

    .line 4572
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isZhChSh(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4573
    sget-object v6, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->CONSONANT_LABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v3

    goto :goto_0

    .line 4574
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isZhChSh(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4575
    sget-object v6, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->CONSONANT_ALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v3

    goto :goto_0

    .line 4576
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isZhChSh(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4577
    sget-object v6, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->CONSONANT_LEFTALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v3

    goto :goto_0

    .line 4579
    :cond_6
    sget-object v6, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->NONE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v3

    goto :goto_0

    .line 4582
    :cond_7
    sget-object v6, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v8, v11, [Ljava/lang/Object;

    const-string/jumbo v9, "isToHighlightKey... key label: "

    aput-object v9, v8, v7

    aput-object v1, v8, v10

    invoke-interface {v6, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4583
    sget-object v6, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->NONE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v3

    .line 4584
    .local v3, "ret":I
    array-length v8, v5

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_b

    aget-object v4, v5, v6

    .line 4585
    .local v4, "vowel":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4586
    sget-object v9, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_LABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v9}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v9

    or-int/2addr v3, v9

    .line 4588
    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4589
    sget-object v9, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_ALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v9}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v9

    or-int/2addr v3, v9

    .line 4591
    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 4592
    sget-object v9, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->VOWEL_LEFTALTLABLE:Lcom/nuance/swype/input/chinese/HighLightKeyArea;

    invoke-virtual {v9}, Lcom/nuance/swype/input/chinese/HighLightKeyArea;->getValue()I

    move-result v9

    or-int/2addr v3, v9

    .line 4584
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4595
    .end local v4    # "vowel":Ljava/lang/String;
    :cond_b
    sget-object v6, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v8, v11, [Ljava/lang/Object;

    const-string/jumbo v9, "isToHighlightKey...ret: "

    aput-object v9, v8, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v10

    invoke-interface {v6, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    .locals 1

    .prologue
    .line 6508
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    return-object v0
.end method

.method public getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .locals 2

    .prologue
    .line 3544
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 3546
    .local v0, "shiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShiftedPopupMenu:Z

    if-eqz v1, :cond_0

    .line 3549
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
    .line 481
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    return-object v0
.end method

.method public getWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;
    .locals 4
    .param p1, "defaultWord"    # Landroid/text/SpannableStringBuilder;
    .param p2, "defaultWordIndex"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6065
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 6066
    .local v1, "scratchDefaultWordIndex":[I
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    const/16 v3, 0x1e

    invoke-virtual {v2, p1, v1, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWords(Landroid/text/SpannableStringBuilder;[II)Ljava/util/List;

    move-result-object v0

    .line 6067
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6068
    return-object v0
.end method

.method public getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    return-object v0
.end method

.method public handleBackspace(I)Z
    .locals 4
    .param p1, "repeatedCount"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1672
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1674
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieKeypad()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapIsInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1675
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapClearInvalid()V

    .line 1676
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->access$3200(Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;)V

    .line 1678
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->access$3200(Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;)V

    .line 1724
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isMultitapping()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1725
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->multiTapTimerTimeOut()V

    .line 1726
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->multiTapTimeOut()V

    .line 1728
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1729
    invoke-virtual {p0, v3, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 1736
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1737
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1738
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    .line 1739
    const-string/jumbo v1, ""

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1741
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1742
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInlineString(Z)V

    .line 1747
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsDelimiterKeyLabelUpdated:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1748
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 1750
    :cond_3
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsClearKeyLabelUpdated:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1751
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 1754
    :cond_4
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->shouldStartChinesePrediction()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1755
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->startChinesePrediction()Z

    .line 1760
    :goto_1
    return v2

    .line 1680
    :cond_5
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 1681
    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onHandleBackspace()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1682
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInlineWord()V

    .line 1683
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDealingBackspace:Z

    .line 1684
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 1685
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    goto :goto_1

    .line 1689
    :cond_6
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/FunctionBarListView;->isFunctionBarDisabledOrZeroItem()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1693
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 1709
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 1711
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsDelimiterKeyLabelUpdated:Z

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1712
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1713
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 1715
    :cond_8
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsClearKeyLabelUpdated:Z

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1716
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1717
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 1720
    :cond_9
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->cancelChinesePrediction()V

    goto :goto_1

    .line 1698
    :cond_a
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isCandidateListEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1699
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->breakContext()Z

    .line 1700
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 1703
    :cond_b
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDealingBackspace:Z

    .line 1704
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1705
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    goto :goto_2

    .line 1731
    :cond_c
    invoke-virtual {p0, v2, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto/16 :goto_0

    .line 1758
    :cond_d
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->cancelChinesePrediction()V

    goto :goto_1
.end method

.method public handleChar(C)V
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 3401
    const/16 v0, 0xd

    if-ne p1, v0, :cond_2

    .line 3402
    const/16 p1, 0xa

    .line 3407
    :cond_0
    :goto_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 3408
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendBackspace(I)V

    .line 3421
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_1

    .line 3422
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->clearRecognitionCandidates()V

    .line 3425
    :cond_1
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 3426
    return-void

    .line 3403
    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 3404
    const/16 p1, 0x20

    goto :goto_0

    .line 3409
    :cond_3
    const/16 v0, 0x20

    if-ne p1, v0, :cond_5

    .line 3410
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_4

    .line 3411
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->acceptHWRRecognitionWord()Z

    .line 3413
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendSpace()V

    goto :goto_1

    .line 3415
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_6

    .line 3416
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->acceptHWRRecognitionWord()Z

    .line 3418
    :cond_6
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto :goto_1
.end method

.method public handleCharKey(Landroid/graphics/Point;I[IJ)V
    .locals 8
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "eventTime"    # J

    .prologue
    .line 1573
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/input/InputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    .line 1575
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v0

    .line 1576
    invoke-virtual {v0, p2}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1577
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAddingZhuyinTone(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1579
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieKeypad()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapIsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1580
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapClearInvalid()V

    .line 1581
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearKey()Z

    .line 1583
    :cond_1
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInput(Landroid/graphics/Point;I[IJZ)V

    .line 1589
    :goto_0
    return-void

    .line 1584
    :cond_2
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDilimiter(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1585
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInput(Landroid/graphics/Point;I[IJZ)V

    goto :goto_0

    .line 1587
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->onText(Ljava/lang/CharSequence;J)V

    goto :goto_0
.end method

.method public handleClose()V
    .locals 1

    .prologue
    .line 1883
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recordTextBuffer()V

    .line 1885
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onHandleClose()V

    .line 1889
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsIMEActive:Z

    .line 1890
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dimissRemoveUdbWordDialog()V

    .line 1891
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->recycleBitmap()V

    .line 1892
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 1893
    return-void
.end method

.method public handleEmotionKey()V
    .locals 0

    .prologue
    .line 1237
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 1238
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleEmotionKey()V

    .line 1239
    return-void
.end method

.method public handleHardKeyCapsLock(Z)Z
    .locals 1
    .param p1, "iscapslockon"    # Z

    .prologue
    .line 4754
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleShiftKey()V

    .line 4755
    const/4 v0, 0x1

    return v0
.end method

.method public handleHardKeyDirectionKey(I)Z
    .locals 4
    .param p1, "keycode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4786
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v3, v3, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    .line 4787
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isShown()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4788
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4789
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4790
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 4793
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys()Z

    .line 4794
    const-string/jumbo v3, ""

    invoke-interface {v0, v3, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4795
    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 4797
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 4798
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 4805
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyToApplication(I)V

    .line 4819
    :cond_2
    :goto_0
    return v1

    .line 4800
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

    .line 4808
    :cond_4
    packed-switch p1, :pswitch_data_0

    :goto_1
    move v1, v2

    .line 4819
    goto :goto_0

    .line 4811
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->moveHighlightToWordListNearCandidate(I)V

    goto :goto_1

    .line 4815
    :pswitch_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleHardKeySelectHighlightedCandidate()V

    .line 4816
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    goto :goto_0

    .line 4808
    nop

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
    .line 4824
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->moveHighlightToHeardOrTail(Z)Z

    move-result v0

    return v0
.end method

.method public handleHardKeyEscapeKey()Z
    .locals 5

    .prologue
    const/16 v4, 0x6f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4965
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4966
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4967
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 4969
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys()Z

    .line 4970
    const-string/jumbo v3, ""

    invoke-interface {v0, v3, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4971
    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 4973
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 4974
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 4975
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyToApplication(I)V

    .line 5012
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    move v1, v2

    .line 4978
    goto :goto_0

    .line 4980
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->isShown()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v3, v3, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 4981
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 4982
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 4984
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isMultitapping()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4986
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateContext()Z

    .line 4987
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    instance-of v3, v3, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 4989
    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4990
    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 4996
    :goto_1
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 4997
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4998
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_3

    .line 4999
    const-string/jumbo v3, ""

    invoke-interface {v0, v3, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 5004
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3
    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsDelimiterKeyLabelUpdated:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5005
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    goto :goto_0

    .line 4992
    :cond_4
    invoke-virtual {p0, v1, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_1

    .line 5010
    :cond_5
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyToApplication(I)V

    .line 5011
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    move v1, v2

    .line 5012
    goto :goto_0
.end method

.method public handleHardKeyHomeKey()Z
    .locals 1

    .prologue
    .line 4829
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->moveHighlightToHeardOrTail(Z)Z

    move-result v0

    return v0
.end method

.method public handleHardKeyResize()V
    .locals 3

    .prologue
    .line 5399
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5400
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->hideSymbolList()V

    .line 5401
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5402
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 5405
    :cond_0
    return-void
.end method

.method public handleHardKeySelectHighlightedCandidate()V
    .locals 3

    .prologue
    .line 4870
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    .line 4871
    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    .line 4872
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4873
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->onHardKeySelectionForHandWriting()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 4874
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4876
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 4877
    .local v0, "index":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 4878
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 4883
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public handleHardkeyBackspace(I)Z
    .locals 1
    .param p1, "repeatedCount"    # I

    .prologue
    .line 4840
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleBackspace(I)Z

    move-result v0

    return v0
.end method

.method public handleHardkeyCharKey(I[ILandroid/view/KeyEvent;Z)V
    .locals 10
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "shiftable"    # Z

    .prologue
    .line 5018
    if-nez p1, :cond_1

    .line 5207
    :cond_0
    :goto_0
    return-void

    .line 5021
    :cond_1
    if-nez p2, :cond_2

    .line 5022
    const/4 v0, 0x1

    new-array p2, v0, [I

    .end local p2    # "keyCodes":[I
    const/4 v0, 0x0

    aput p1, p2, v0

    .line 5024
    .restart local p2    # "keyCodes":[I
    :cond_2
    const/16 v0, 0x7a

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5025
    const p1, 0xff1f

    .line 5027
    :cond_3
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    .line 5028
    .local v4, "eventTime":J
    :goto_1
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-super/range {v0 .. v5}, Lcom/nuance/swype/input/InputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    .line 5031
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v0

    .line 5032
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 5036
    const/16 v0, 0x30

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5037
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isHardkeyKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5038
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_6

    .line 5039
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->acceptHWRRecognitionWord()Z

    .line 5043
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPinyinQwertyShiftedState()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5044
    int-to-char v7, p1

    .line 5045
    .local v7, "ch":C
    const/16 v0, 0x61

    if-gt v0, v7, :cond_7

    const/16 v0, 0x7a

    if-gt v7, v0, :cond_7

    .line 5046
    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    .line 5048
    :cond_7
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5049
    const/16 v0, 0x41

    if-gt v0, v7, :cond_a

    const/16 v0, 0x5a

    if-gt v7, v0, :cond_a

    .line 5050
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 5051
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0, v7}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->processUpperLetterPress(I)Z

    .line 5052
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_9

    .line 5053
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto/16 :goto_0

    .line 5027
    .end local v4    # "eventTime":J
    .end local v7    # "ch":C
    :cond_8
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 5056
    .restart local v4    # "eventTime":J
    .restart local v7    # "ch":C
    :cond_9
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 5057
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto/16 :goto_0

    .line 5059
    :cond_a
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    .line 5063
    :cond_b
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_0

    .line 5068
    .end local v7    # "ch":C
    :cond_c
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v0, :cond_e

    .line 5069
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->end()V

    .line 5070
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    .line 5206
    :cond_d
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recordUsedTimeTapDisplaySelectionList()V

    goto/16 :goto_0

    .line 5071
    :cond_e
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDilimiter(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5073
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInineAltCharacters()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5075
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_0

    .line 5080
    :cond_f
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5081
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5086
    const/16 v2, 0x41

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendPlaceHolderKey(ILjava/util/List;JZ)V

    goto/16 :goto_0

    .line 5092
    :cond_10
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5093
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 5094
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5095
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->cycleTone()Z

    move-result v9

    .line 5096
    .local v9, "success":Z
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_11

    .line 5097
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 5100
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTone:Z

    .line 5101
    if-eqz v9, :cond_0

    .line 5102
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 5103
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->startChinesePrediction()Z

    goto :goto_2

    .line 5111
    .end local v9    # "success":Z
    :cond_12
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto :goto_2

    .line 5113
    :cond_13
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAddingZhuyinTone(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5114
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addToneForZhuyin(I)Z

    move-result v0

    .line 5116
    if-eqz v0, :cond_14

    .line 5117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 5118
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 5119
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->startChinesePrediction()Z

    goto/16 :goto_2

    .line 5121
    :cond_14
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashRedError()V

    goto/16 :goto_2

    .line 5123
    :cond_15
    const/16 v0, 0xa

    if-ne p1, v0, :cond_17

    .line 5124
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5125
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 5127
    :cond_16
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_2

    .line 5129
    :cond_17
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v8

    .line 5130
    .local v8, "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPopupKeyboardShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 5131
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleSeparator(I)V

    goto/16 :goto_2

    .line 5133
    :cond_18
    const/16 v0, 0x30

    if-ne p1, v0, :cond_19

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5134
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isHardkeyKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 5136
    :cond_19
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isHardkeyKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5137
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNumberTypeInputField()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 5138
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPopupKeyboardShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPhoneticKeypad()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieKeypad()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5140
    :cond_1a
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleSeparator(I)V

    goto/16 :goto_2

    .line 5144
    :cond_1b
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_1c

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 5145
    :cond_1c
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 5147
    :cond_1d
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsIMEActive:Z

    .line 5149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 5150
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handlePrediction(I[IZ)V

    goto/16 :goto_2

    .line 5152
    :cond_1e
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 5153
    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getEnableChineseBilingual()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPopupKeyboardShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 5154
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNumberTypeInputField()Z

    move-result v0

    if-nez v0, :cond_20

    .line 5155
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 5156
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5157
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, p1, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addExplicitKey(ILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 5158
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto/16 :goto_2

    .line 5160
    :cond_1f
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleSeparator(I)V

    goto/16 :goto_2

    .line 5162
    :cond_20
    invoke-virtual {v8, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5163
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-ne v0, v1, :cond_22

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieWildCard(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 5164
    :cond_21
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 5165
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-nez v0, :cond_23

    .line 5171
    :cond_22
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleSeparator(I)V

    goto/16 :goto_2

    .line 5173
    :cond_23
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNumberTypeInputField()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 5175
    :cond_24
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPopupKeyboardShowing()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 5176
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getEnableChineseBilingual()Z

    move-result v0

    if-eqz v0, :cond_27

    int-to-char v0, p1

    .line 5177
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAlphabeticCharacter(C)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 5178
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 5179
    const/16 v0, 0x41

    if-gt v0, p1, :cond_26

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_26

    .line 5180
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 5181
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->processUpperLetterPress(I)Z

    .line 5182
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_25

    .line 5183
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto/16 :goto_0

    .line 5186
    :cond_25
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 5187
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto/16 :goto_2

    .line 5188
    :cond_26
    const/16 v0, 0x61

    if-gt v0, p1, :cond_d

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_d

    .line 5189
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    .line 5190
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_2

    .line 5193
    :cond_27
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    .line 5194
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_2

    .line 5197
    :cond_28
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_29

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 5198
    :cond_29
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 5200
    :cond_2a
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsIMEActive:Z

    .line 5202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 5203
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handlePrediction(I[IZ)V

    goto/16 :goto_2
.end method

.method public handleHardkeyDelete(I)Z
    .locals 6
    .param p1, "repeatedCount"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4760
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    .line 4761
    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    .line 4762
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4764
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->onHardKeySelectionForHandWriting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4765
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v1, v2, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 4768
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 4769
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4770
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 4781
    :cond_1
    :goto_0
    return v4

    .line 4774
    :cond_2
    invoke-interface {v0, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4775
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4776
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4777
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 4778
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0
.end method

.method public handleHardkeyEnter()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 4845
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    .line 4846
    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    .line 4847
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4849
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->onHardKeySelectionForHandWriting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4850
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 4851
    .local v0, "index":I
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isExactKeyboardShowable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4852
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v0, v1, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .end local v0    # "index":I
    :cond_0
    :goto_0
    move v1, v2

    .line 4866
    :goto_1
    return v1

    .line 4855
    .restart local v0    # "index":I
    :cond_1
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v0, v1, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    .line 4859
    .end local v0    # "index":I
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 4860
    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->acceptHWRRecognitionWord()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4861
    const/4 v1, 0x1

    goto :goto_1

    .line 4863
    :cond_3
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyToApplication(I)V

    goto :goto_0
.end method

.method public handleHardkeyShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 1
    .param p1, "state"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 4834
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleShiftKey()V

    .line 4835
    const/4 v0, 0x1

    return v0
.end method

.method public handleHardkeySpace(ZI)Z
    .locals 9
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 4888
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4890
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInineAltCharacters()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4960
    :cond_0
    :goto_0
    return v6

    .line 4895
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v5, 0x900

    if-ne v4, v5, :cond_2

    .line 4896
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    const/16 v5, 0xb1

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addToneForZhuyin(I)Z

    move-result v4

    .line 4899
    if-eqz v4, :cond_2

    .line 4900
    invoke-virtual {p0, v6, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 4901
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->startChinesePrediction()Z

    goto :goto_0

    .line 4905
    :cond_2
    sget-object v4, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_SPACE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 4907
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 4908
    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->recognitionCandidatesAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4909
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->onHardKeySelectionForHandWriting()Z

    goto :goto_0

    .line 4910
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4911
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v4, v8, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    .line 4912
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v4

    if-nez v4, :cond_5

    .line 4914
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v4, v8, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    .line 4916
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashError()V

    goto :goto_0

    .line 4919
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->onHardKeySelectionForHandWriting()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4920
    invoke-virtual {p0, v6, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0

    .line 4923
    :cond_7
    const/4 v0, 0x1

    .line 4927
    .local v0, "addSpace":Z
    if-eqz p1, :cond_9

    if-ge p2, v7, :cond_9

    iget-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mAutoPunctuationOn:Z

    if-eqz v4, :cond_9

    .line 4928
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 4930
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_9

    .line 4931
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4932
    invoke-interface {v3, v7, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4938
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 4939
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v2

    .line 4940
    .local v2, "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    if-eqz v1, :cond_8

    .line 4941
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v7, :cond_8

    .line 4942
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4943
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_8

    .line 4945
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 4944
    invoke-virtual {v2, v4}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 4946
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v4

    if-nez v4, :cond_8

    .line 4948
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleAutoPunct()V

    .line 4949
    const/4 v0, 0x0

    .line 4952
    :cond_8
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4955
    .end local v1    # "cSeqBefore":Ljava/lang/CharSequence;
    .end local v2    # "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_9
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v4}, Lcom/nuance/swype/input/EditState;->spaceKey()V

    .line 4956
    if-eqz v0, :cond_0

    .line 4957
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_0
.end method

.method public handleKey(IZI)Z
    .locals 6
    .param p1, "primaryCode"    # I
    .param p2, "quickPressed"    # Z
    .param p3, "repeatedCount"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 1159
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v0, [Ljava/lang/Object;

    const-string/jumbo v3, "handleKey() :  method called chinese"

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1160
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IMEApplication;->setUserTapKey(Z)V

    .line 1161
    sparse-switch p1, :sswitch_data_0

    .line 1209
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 1163
    :sswitch_0
    if-nez p2, :cond_0

    .line 1164
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 1165
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->startSpeech()V

    goto :goto_0

    .line 1170
    :sswitch_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->toggleLastKeyboard()V

    goto :goto_0

    .line 1173
    :sswitch_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInlineWord()V

    .line 1174
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 1175
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getAltCharacterConverted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1176
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setAltCharacterConverted(Z)V

    .line 1178
    :cond_1
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->lastKeypadBilingualState:Z

    .line 1179
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    invoke-direct {p0, v1, v5, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 1180
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 1181
    invoke-virtual {p0, v0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0

    .line 1184
    :sswitch_3
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    if-eqz v1, :cond_2

    .line 1185
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideGridCandidatesView()V

    .line 1187
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    .line 1188
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 1189
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    .line 1191
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mShowFunctionBar:Z

    if-eqz v1, :cond_4

    .line 1192
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 1196
    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1198
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->hideSymbolList()V

    .line 1199
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1200
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    invoke-direct {p0, v1, v5, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    goto :goto_0

    .line 1194
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearSuggestions()V

    goto :goto_1

    .line 1205
    :sswitch_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setSwypeKeytoolTipSuggestion()V

    goto :goto_0

    .line 1161
    :sswitch_data_0
    .sparse-switch
        0xb54 -> :sswitch_3
        0xfe1 -> :sswitch_2
        0x193f -> :sswitch_0
        0xaa37 -> :sswitch_4
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

    .line 1120
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1121
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v1, :cond_3

    .line 1122
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eq p1, v4, :cond_0

    if-eq p1, v5, :cond_0

    if-eq p1, v2, :cond_0

    if-eq p1, v3, :cond_0

    const/16 v1, 0x43

    if-ne p1, v1, :cond_3

    .line 1128
    :cond_0
    const/16 v1, 0x43

    if-ne p1, v1, :cond_1

    .line 1129
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleBackspace(I)Z

    .line 1143
    :cond_1
    :goto_0
    return v0

    .line 1134
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v1, :cond_3

    .line 1135
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eq p1, v4, :cond_1

    if-eq p1, v5, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v3, :cond_1

    .line 1143
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v0, :cond_1

    .line 1244
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

    :cond_0
    const/4 v0, 0x1

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
    .line 4163
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideGridCandidatesView()V

    .line 4164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    .line 4165
    if-eqz p1, :cond_1

    .line 4166
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 4167
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mShowFunctionBar:Z

    if-eqz v0, :cond_2

    .line 4168
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 4172
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4173
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->hideSymbolList()V

    .line 4174
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4175
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 4179
    :cond_1
    return-void

    .line 4170
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearSuggestions()V

    goto :goto_0
.end method

.method protected handleScrollDown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3993
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_0

    .line 3994
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->end()V

    .line 3995
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 3996
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 3997
    const/4 v0, 0x1

    .line 3999
    :cond_0
    return v0
.end method

.method protected handleScrollLeft()Z
    .locals 1

    .prologue
    .line 4004
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4005
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->MULTITAP_TOGGLE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 4006
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->end()V

    .line 4007
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleKeyboard()V

    .line 4008
    const/4 v0, 0x1

    .line 4010
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleScrollRight()Z
    .locals 1

    .prologue
    .line 4015
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4016
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->MULTITAP_TOGGLE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 4017
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->end()V

    .line 4018
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleKeyboard()V

    .line 4019
    const/4 v0, 0x1

    .line 4021
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleShiftKey()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1855
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1856
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTabletDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDoublePinyinMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1857
    :cond_0
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 1874
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1875
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShifted()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 1879
    :goto_1
    return-void

    .line 1859
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

    .line 1860
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefaultSuggestion()V

    .line 1862
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->updateShiftStateToggle()V

    .line 1863
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    .line 1864
    .local v0, "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    if-eqz v0, :cond_4

    .line 1865
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 1868
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->invalidateKeyboardImage()V

    goto :goto_0

    .line 1871
    .end local v0    # "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    :cond_5
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->cycleShiftState()V

    .line 1872
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->invalidateKeyboardImage()V

    goto :goto_0

    .line 1877
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

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1766
    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isSourceFromPressSpace:Z

    .line 1767
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v6, :cond_8

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1769
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInineAltCharacters()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1850
    :cond_0
    :goto_0
    return v5

    .line 1774
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v7, 0x900

    if-ne v6, v7, :cond_2

    .line 1775
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    invoke-static {v6, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->access$3102(Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;Z)Z

    .line 1776
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    const/16 v7, 0xb1

    invoke-virtual {v6, v7}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addToneForZhuyin(I)Z

    move-result v6

    .line 1779
    if-eqz v6, :cond_2

    .line 1780
    invoke-virtual {p0, v5, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 1782
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->startChinesePrediction()Z

    goto :goto_0

    .line 1787
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieKeypad()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapIsInvalid()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1788
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapClearInvalid()V

    .line 1789
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearKey()Z

    .line 1791
    :cond_3
    sget-object v6, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_SPACE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1792
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1793
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    goto :goto_0

    .line 1794
    :cond_4
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1796
    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1797
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1798
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getValidStrokeCandidateIndex()I

    move-result v4

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v4, v8, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    .line 1800
    :cond_5
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isExactKeyboardShowable()Z

    move-result v6

    if-eqz v6, :cond_6

    move v4, v5

    :cond_6
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v4, v8, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    .line 1803
    :cond_7
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashError()V

    goto :goto_0

    .line 1806
    :cond_8
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 1807
    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->acceptHWRRecognitionWord()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1809
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isSourceFromPressSpace:Z

    .line 1810
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateContext()Z

    .line 1811
    invoke-virtual {p0, v5, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto/16 :goto_0

    .line 1814
    :cond_9
    const/4 v0, 0x1

    .line 1818
    .local v0, "addSpace":Z
    if-eqz p1, :cond_b

    if-ge p2, v7, :cond_b

    iget-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mAutoPunctuationOn:Z

    if-eqz v6, :cond_b

    .line 1819
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 1821
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_b

    .line 1822
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1823
    invoke-interface {v3, v7, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1829
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    .line 1830
    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v2

    .line 1831
    .local v2, "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    if-eqz v1, :cond_a

    .line 1832
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v6, v7, :cond_a

    .line 1833
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1834
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1836
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1835
    invoke-virtual {v2, v4}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1838
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleAutoPunct()V

    .line 1839
    const/4 v0, 0x0

    .line 1842
    :cond_a
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1845
    .end local v1    # "cSeqBefore":Ljava/lang/CharSequence;
    .end local v2    # "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_b
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v4}, Lcom/nuance/swype/input/EditState;->spaceKey()V

    .line 1846
    if-eqz v0, :cond_0

    .line 1847
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->sendKeyChar(C)V

    goto/16 :goto_0
.end method

.method protected handleTouchAction(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V
    .locals 2
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p3, "action"    # I

    .prologue
    .line 3555
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->subHandleTouchInitialized(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3587
    :cond_0
    :goto_0
    return-void

    .line 3559
    :cond_1
    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 3561
    if-eqz v0, :cond_0

    .line 3565
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 3567
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->subHandleTouchDown(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    goto :goto_0

    .line 3571
    :pswitch_1
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->subHandleTouchMove(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    goto :goto_0

    .line 3576
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->subHandleTouchUp(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    .line 3577
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShiftedPopupMenu:Z

    if-eqz v0, :cond_0

    .line 3578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShiftedPopupMenu:Z

    .line 3579
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_0

    .line 3565
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
    .locals 4
    .param p1, "trace"    # Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .prologue
    const/4 v3, 0x1

    .line 1909
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IMEApplication;->setUserTapKey(Z)V

    .line 1911
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1912
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1951
    :cond_0
    :goto_0
    return-void

    .line 1916
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v2}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1920
    :cond_2
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1922
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isFullSentenceActive()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1923
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isHasSegmentDelimiter()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1924
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashError()V

    .line 1925
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1929
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasActiveInput()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1930
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    move-result v1

    .line 1935
    .local v1, "wordCount":I
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsUpdateInline:Z

    if-eqz v2, :cond_4

    .line 1936
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInlineString(Z)V

    .line 1938
    :cond_4
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsUpdateInline:Z

    .line 1939
    if-nez v1, :cond_5

    .line 1940
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setNotMatchToolTipSuggestion()V

    .line 1950
    .end local v1    # "wordCount":I
    :goto_1
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1942
    .restart local v1    # "wordCount":I
    :cond_5
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTracedEver:Z

    goto :goto_1

    .line 1945
    .end local v1    # "wordCount":I
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashError()V

    .line 1946
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->access$3000(Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;)V

    .line 1947
    invoke-virtual {p0, v3, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_1
.end method

.method public handleWrite(Ljava/util/List;)V
    .locals 1
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
    .line 1897
    .local p1, "write":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->checkCurLanguage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1904
    :cond_0
    :goto_0
    return-void

    .line 1901
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_0

    .line 1902
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onHandleWrite(Ljava/util/List;)V

    goto :goto_0
.end method

.method public hasWidgetViews()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5774
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineContainerView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 5779
    :cond_0
    :goto_0
    return v1

    .line 5777
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 5778
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/view/InputContainerView;->isActiveWidgetView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineContainerView:Landroid/view/View;

    .line 5779
    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/view/InputContainerView;->isActiveWidgetView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hideFunctionBar()V
    .locals 1

    .prologue
    .line 4386
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mShowFunctionBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    .line 4387
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideFunctionBarList()V

    .line 4389
    :cond_0
    return-void
.end method

.method isDigit(I)Z
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 2879
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
    .line 4706
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v0

    return v0
.end method

.method public isInputSessionStarted()Z
    .locals 2

    .prologue
    .line 5448
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

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
    .line 4031
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMaxKeysCangjieOrQuickCangjie()Z
    .locals 3

    .prologue
    .line 2314
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 2315
    .local v0, "mode":Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeCangjie(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .line 2316
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_1

    .line 2317
    :cond_0
    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeQuickCangjie(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .line 2318
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isModeStroke()Z
    .locals 2

    .prologue
    .line 2929
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v1, "stroke"

    .line 2930
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

.method protected isMultitapHandledInCore()Z
    .locals 1

    .prologue
    .line 2417
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

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
    .line 1667
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

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

    .line 3864
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3874
    :cond_0
    :goto_0
    return v0

    .line 3866
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3867
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3868
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsUseHardkey:Z

    if-nez v1, :cond_0

    .line 3872
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSupportMultitouchGesture()Z
    .locals 1

    .prologue
    .line 4026
    const/4 v0, 0x1

    return v0
.end method

.method protected isTraceInputEnabled()Z
    .locals 1

    .prologue
    .line 3591
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
    .line 3448
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

    .line 3450
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTraceOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 3451
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 3452
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isPhoneMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 3453
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 3454
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3455
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v0, v1, :cond_0

    .line 3456
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3457
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPopupKeyboardShowing()Z

    move-result v0

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
    .line 3473
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->isWriting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isZhChSh(Ljava/lang/String;)Z
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 4655
    const/4 v3, 0x0

    .line 4656
    .local v3, "ret":Z
    const-string/jumbo v2, "Zh"

    .line 4657
    .local v2, "doublePinyinZh":Ljava/lang/String;
    const-string/jumbo v0, "Ch"

    .line 4658
    .local v0, "doublePinyinCh":Ljava/lang/String;
    const-string/jumbo v1, "Sh"

    .line 4659
    .local v1, "doublePinyinSh":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4660
    const/4 v3, 0x1

    .line 4666
    :cond_0
    :goto_0
    return v3

    .line 4661
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4662
    const/4 v3, 0x1

    goto :goto_0

    .line 4663
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4664
    const/4 v3, 0x1

    goto :goto_0
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

    .line 4729
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/nuance/swype/input/R$string;->mappings_symbol:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 4730
    .local v3, "mapping":[C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4731
    .local v2, "map":Ljava/lang/StringBuilder;
    array-length v7, v3

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-char v0, v3, v5

    .line 4732
    .local v0, "c":C
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4731
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4734
    .end local v0    # "c":C
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 4735
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 4736
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 4737
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldRestrictGetTextLengthFromCursor()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4738
    if-eqz p1, :cond_1

    const/16 v5, 0xa

    invoke-interface {p1, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 4739
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/IME;->sendDownUpKeyEvents(I)V

    .line 4750
    :cond_1
    :goto_2
    return-void

    .line 4742
    :cond_2
    const/16 v5, 0x7d0

    invoke-interface {p1, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 4743
    .local v4, "s":Ljava/lang/CharSequence;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 4744
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {p1, v5, v6}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto :goto_2

    .line 4734
    .end local v4    # "s":Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected multitapClearInvalid()V
    .locals 2

    .prologue
    .line 6458
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->multitapClearInvalid()V

    .line 6459
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidIndex:I

    .line 6460
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->access$11902(Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;Z)Z

    .line 6461
    return-void
.end method

.method protected multitapIsInvalid()Z
    .locals 2

    .prologue
    .line 6465
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->multitapIsInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInvalidIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 4
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    const/4 v3, 0x0

    .line 3723
    instance-of v2, p1, Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-eqz v2, :cond_1

    .line 3748
    :cond_0
    :goto_0
    return-void

    .line 3726
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dismissPopupKeyboard()V

    .line 3727
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-ne p1, v2, :cond_0

    .line 3728
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 3729
    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->isWritingRecognitionDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3732
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 3733
    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->recognitionCandidatesAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3734
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->getHWRecognitionCandidates()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showGridCandidatesView(Ljava/util/List;)V

    .line 3740
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v2, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isMixedInput()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3741
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updatePrefixes()V

    .line 3743
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_0

    .line 3744
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 3745
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    goto :goto_0

    .line 3736
    :cond_4
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPopupList()Ljava/util/List;

    move-result-object v0

    .line 3737
    .local v0, "candList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPopupWordSourceList()Ljava/util/List;

    move-result-object v1

    .line 3738
    .local v1, "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showGridCandidatesView(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1
.end method

.method public onApplicationUnbind()V
    .locals 0

    .prologue
    .line 3880
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dimissRemoveUdbWordDialog()V

    .line 3881
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onApplicationUnbind()V

    .line 3882
    return-void
.end method

.method public onBeginDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5929
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onBeginDrag()V

    .line 5931
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showChinesePrediction(Z)V

    .line 5932
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showTopInline(Z)V

    .line 5933
    return-void
.end method

.method public onCandidateLongPressed(ILjava/lang/String;ILcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "wdSource"    # I
    .param p4, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 4079
    packed-switch p3, :pswitch_data_0

    .line 4103
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 4082
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showRemoveUdbWordDialog(Ljava/lang/String;I)V

    goto :goto_0

    .line 4086
    :pswitch_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, p2, v3}, Lcom/nuance/swype/util/ContactUtils;->getContactNumberFromPhoneBook(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 4090
    :pswitch_3
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/EmojiLoader;->isEmoji(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4091
    invoke-virtual {p4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getEmojiInfoList()Ljava/util/List;

    move-result-object v2

    .line 4092
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiInfo;

    .line 4093
    .local v0, "emojiInfo":Lcom/nuance/swype/input/emoji/EmojiInfo;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getEmojis()Ljava/util/Map;

    move-result-object v2

    .line 4094
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4095
    .local v1, "selected_emoji":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v0, v1, v2}, Lcom/nuance/swype/input/InputView;->showSkinTonePopupForCJK(Lcom/nuance/swype/input/emoji/EmojiInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4079
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDrag(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v0, 0x0

    .line 5937
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->onDrag(II)V

    .line 5939
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showChinesePrediction(Z)V

    .line 5940
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showTopInline(Z)V

    .line 5941
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3462
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->onDraw(Landroid/graphics/Canvas;)V

    .line 3464
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isWriteInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3465
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_0

    .line 3466
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onDraw(Landroid/graphics/Canvas;)V

    .line 3469
    :cond_0
    return-void
.end method

.method public onEndDrag()V
    .locals 6

    .prologue
    .line 5945
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChinesePredictionResult:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5946
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChinesePredictionResult:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;

    const/4 v3, 0x2

    const-wide/16 v4, 0x32

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->postUpdateChinesePredictionMessage(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;IJ)V

    .line 5948
    :cond_0
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onEndDrag()V

    .line 5949
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->postDelayUpdateInlineString()V

    .line 5950
    return-void
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
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4037
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v1, :cond_0

    .line 4038
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->dlmDelete(Ljava/lang/String;)Z

    move-result v1

    .line 4040
    if-eqz v1, :cond_1

    .line 4041
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4042
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->delete_success:I

    .line 4043
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4044
    .local v0, "removeMgs":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 4045
    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 4044
    invoke-static {v1, v0, v4, v2}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 4047
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInlineWord()V

    .line 4048
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 4049
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->lastKeypadBilingualState:Z

    .line 4050
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 4051
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 4052
    invoke-virtual {p0, v5, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 4062
    .end local v0    # "removeMgs":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 4054
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4055
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->delete_failed:I

    .line 4056
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4057
    .restart local v0    # "removeMgs":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 4058
    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 4057
    invoke-static {v1, v0, v4, v2}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method

.method public onHandleWriteEvent(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;

    .prologue
    .line 3441
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_0

    .line 3442
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onHandleWriteEvent(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V

    .line 3444
    :cond_0
    return-void
.end method

.method protected onLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v0, 0x0

    .line 3493
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

    .line 3505
    :cond_0
    :goto_0
    return v0

    .line 3497
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

    .line 3501
    :cond_2
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v0

    const/16 v2, 0xfe1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 3502
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3505
    :cond_3
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->onLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPressMoveCandidate(FFF)V
    .locals 5
    .param p1, "xPos"    # F
    .param p2, "yPos"    # F
    .param p3, "xOffset"    # F

    .prologue
    .line 4135
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

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

    .line 4136
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->touchMoveHandle(FFF)Z

    .line 4138
    return-void
.end method

.method public onPressReleaseCandidate(ILjava/lang/String;I)Z
    .locals 8
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "wdSource"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4106
    sget-object v3, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "onPressReleaseCandidate()"

    aput-object v5, v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " called ::  wdSource  :: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , word :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4107
    if-eqz p2, :cond_2

    .line 4108
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->setCurrentSkinTone()V

    .line 4109
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->dismissEmojiPopup()V

    .line 4110
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->logSelectedWordForChinesePrediction(ILjava/lang/String;)V

    .line 4111
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->cancelChinesePrediction()V

    .line 4112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4113
    .local v0, "mInsertText":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v3, p1, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->selectWord(ILjava/lang/StringBuilder;)Z

    .line 4114
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->conversionHistory:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4116
    sget-object v3, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "conversionHistory...index: "

    aput-object v5, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string/jumbo v5, "...exact keyboard visible: "

    aput-object v5, v4, v7

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 4117
    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isExactKeyboardShowable()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "...added: "

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p2, v4, v5

    .line 4116
    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4118
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInitiativeAccept:Z

    if-nez v3, :cond_0

    .line 4119
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/SpellListView;->clear()V

    .line 4122
    :cond_0
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedUpdate:Z

    .line 4123
    invoke-virtual {p0, v1, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 4124
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    if-eqz v2, :cond_1

    .line 4125
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellListView;->disableHighlight()V

    .line 4127
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->startChinesePrediction()Z

    .line 4128
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    .line 4129
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCandidateSelectedEver:Z

    .line 4132
    .end local v0    # "mInsertText":Ljava/lang/StringBuilder;
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public onScrollChanged(I)V
    .locals 6
    .param p1, "scrollX"    # I

    .prologue
    .line 5756
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudText:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 5766
    :cond_0
    :goto_0
    return-void

    .line 5759
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v1, v2, 0xa

    .line 5760
    .local v1, "totalWidth":I
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->cloudText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 5761
    .local v0, "predictionWidth":I
    if-le v0, v1, :cond_0

    .line 5764
    sget-object v2, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "scrolling X:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "cloudWidth:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, " Total:"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onScrollContentChanged()V
    .locals 1

    .prologue
    .line 5393
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v0, :cond_0

    .line 5394
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->updateScrollArrowVisibility()V

    .line 5396
    :cond_0
    return-void
.end method

.method protected onShortPress(Lcom/nuance/swype/input/KeyboardEx$Key;II)Z
    .locals 10
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "keyIndex"    # I
    .param p3, "pointerId"    # I

    .prologue
    const/16 v9, 0x3ed

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3511
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

    .line 3512
    invoke-interface {v7, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x61

    if-lt v7, v8, :cond_1

    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v7, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x7a

    if-gt v7, v8, :cond_1

    .line 3539
    :cond_0
    :goto_0
    return v5

    .line 3515
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3516
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasAltSymbolOrCode(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 3517
    .local v0, "hasAltKeyEvent":Z
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasSymbolSelectPopupResource(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-eqz v7, :cond_4

    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    const-string/jumbo v8, "1"

    .line 3518
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    move v1, v6

    .line 3519
    .local v1, "hasSymbolSelectPopup":Z
    :goto_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShifted()Z

    move-result v7

    if-nez v7, :cond_5

    move v2, v6

    .line 3520
    .local v2, "isAltDigitQwerty":Z
    :goto_2
    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v7, :cond_6

    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v7, v7, v5

    const/16 v8, 0xfed

    if-ne v7, v8, :cond_6

    move v4, v6

    .line 3521
    .local v4, "isSymbolKey":Z
    :goto_3
    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v7, :cond_7

    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v7, v7, v5

    const/16 v8, 0xa

    if-eq v7, v8, :cond_3

    iget-object v7, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v7, v7, v5

    const/16 v8, 0xfea

    if-ne v7, v8, :cond_7

    :cond_3
    move v3, v6

    .line 3523
    .local v3, "isEnterKey":Z
    :goto_4
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v7

    if-eqz v7, :cond_8

    if-nez v2, :cond_8

    if-nez v4, :cond_8

    if-nez v3, :cond_8

    .line 3524
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->displaysAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3525
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isSlideSelectEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3526
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3527
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .end local v1    # "hasSymbolSelectPopup":Z
    .end local v2    # "isAltDigitQwerty":Z
    .end local v3    # "isEnterKey":Z
    .end local v4    # "isSymbolKey":Z
    :cond_4
    move v1, v5

    .line 3518
    goto :goto_1

    .restart local v1    # "hasSymbolSelectPopup":Z
    :cond_5
    move v2, v5

    .line 3519
    goto :goto_2

    .restart local v2    # "isAltDigitQwerty":Z
    :cond_6
    move v4, v5

    .line 3520
    goto :goto_3

    .restart local v4    # "isSymbolKey":Z
    :cond_7
    move v3, v5

    .line 3521
    goto :goto_4

    .line 3533
    .restart local v3    # "isEnterKey":Z
    :cond_8
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShifted()Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3534
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v7, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v5, v7}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 3535
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShiftedPopupMenu:Z

    .line 3539
    .end local v0    # "hasAltKeyEvent":Z
    .end local v1    # "hasSymbolSelectPopup":Z
    .end local v2    # "isAltDigitQwerty":Z
    .end local v3    # "isEnterKey":Z
    .end local v4    # "isSymbolKey":Z
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->onShortPress(Lcom/nuance/swype/input/KeyboardEx$Key;II)Z

    move-result v5

    goto/16 :goto_0
.end method

.method public onSnapToEdge(II)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 5954
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChinesePredictionResult:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5955
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChinesePredictionResult:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;

    const/4 v3, 0x2

    const-wide/16 v4, 0x32

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->postUpdateChinesePredictionMessage(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;IJ)V

    .line 5957
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->onSnapToEdge(II)V

    .line 5958
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->postDelayUpdateInlineString()V

    .line 5959
    return-void
.end method

.method public onSpeechViewDismissed()V
    .locals 0

    .prologue
    .line 1149
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 1150
    return-void
.end method

.method public onSpeechViewShowedUp()V
    .locals 0

    .prologue
    .line 1154
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1251
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1252
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1305
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1256
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInineAltCharacters()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1258
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1259
    invoke-interface {v0, p1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1260
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1263
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

    .line 1264
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActivePrefixIndex()I

    move-result v1

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_3

    .line 1265
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefaultCandidate()V

    .line 1266
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1267
    invoke-interface {v0, p1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1268
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1271
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->acceptHWRAndUpdateListView()V

    .line 1273
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1274
    :cond_4
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1275
    invoke-interface {v0, p1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1276
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1277
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearSuggestions()V

    goto :goto_0

    .line 1279
    :cond_5
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isFullSentenceActive()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isHasSegmentDelimiter()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1280
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isComponent()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1282
    :cond_7
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashError()V

    goto :goto_0

    .line 1284
    :cond_8
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1285
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashErrorIfNeededInStroke()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1290
    :cond_9
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieKeypad()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapIsInvalid()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1291
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapClearInvalid()V

    .line 1292
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearKey()Z

    .line 1294
    :cond_a
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    .line 1295
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v1, :cond_b

    .line 1296
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 1298
    :cond_b
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1299
    invoke-interface {v0, p1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1300
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1301
    invoke-virtual {p0, v4, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto/16 :goto_0
.end method

.method protected onTouchHeldEnded(ILcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 9
    .param p1, "pointerId"    # I
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 6514
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    invoke-virtual {p0, v0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->touchUpHandleBySlideSelectPopup(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/stats/UsageManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6515
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 6516
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6517
    iget-object v0, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v0, v8

    iget-object v4, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object v1, p0

    move-object v5, v2

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->notifyKeyboardListenerOnKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    .line 6522
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShiftedPopupMenu:Z

    if-eqz v0, :cond_2

    .line 6526
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 6528
    :cond_2
    iput-boolean v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShiftedPopupMenu:Z

    .line 6529
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dismissPopupKeyboard()V

    .line 6530
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dismissSingleAltCharPopup()V

    .line 6531
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dismissPreviewPopup()V

    .line 6532
    return-void

    .line 6519
    :cond_3
    iget-object v0, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0, v0, v6, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->notifyKeyboardListenerOnText(Ljava/lang/CharSequence;J)V

    goto :goto_0

    :cond_4
    iget-object v0, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 3716
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v0, :cond_0

    .line 3717
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onWindowVisibilityChanged()V

    .line 3719
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->onWindowVisibilityChanged(I)V

    .line 3720
    return-void
.end method

.method protected popupMiniKeyboardOrLongPress()Z
    .locals 1

    .prologue
    .line 3488
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->popupMiniKeyboardOrLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postAddMoreSuggestions()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2863
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2864
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    .line 2865
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    .line 2864
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2868
    :cond_0
    return-void
.end method

.method public prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 4
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    const/4 v3, 0x0

    .line 3824
    instance-of v2, p1, Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-eqz v2, :cond_1

    .line 3861
    :cond_0
    :goto_0
    return-void

    .line 3827
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-ne p1, v2, :cond_2

    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDelimiterPressedEver:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3828
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getExactWord(Ljava/lang/StringBuffer;)V

    .line 3829
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isValidExactKeyboardPhrase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3830
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 3831
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 3832
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showLeftArrow(Z)V

    .line 3833
    const/4 v2, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_0

    .line 3838
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-ne p1, v2, :cond_0

    .line 3839
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 3840
    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->isWritingRecognitionDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3844
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 3845
    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->recognitionCandidatesAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3846
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->getHWRecognitionCandidates()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showGridCandidatesView(Ljava/util/List;)V

    .line 3852
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    check-cast v2, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    .line 3853
    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isMixedInput()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3854
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updatePrefixes()V

    .line 3856
    :cond_4
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_0

    .line 3857
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 3858
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    goto :goto_0

    .line 3848
    :cond_5
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPopupList()Ljava/util/List;

    move-result-object v0

    .line 3849
    .local v0, "candList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPopupWordSourceList()Ljava/util/List;

    move-result-object v1

    .line 3850
    .local v1, "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showGridCandidatesView(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1
.end method

.method protected removeAllMessages()V
    .locals 3

    .prologue
    .line 713
    const/4 v0, 0x1

    .local v0, "msg":I
    :goto_0
    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 717
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 719
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v1, :cond_1

    .line 720
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->removeAllMessages()V

    .line 722
    :cond_1
    return-void
.end method

.method public selectDefaultSuggestion()V
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    .line 891
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    .line 893
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsUseHardkey:Z

    if-nez v0, :cond_1

    .line 894
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 896
    :cond_1
    return-void
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 15
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/CharSequence;
    .param p3, "source"    # Landroid/view/View;

    .prologue
    .line 1986
    const/4 v13, 0x0

    .local v13, "selected_emoji":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1987
    .local v11, "original_emoji":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_0

    if-eqz p2, :cond_0

    .line 1988
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1989
    move-object v11, v13

    .line 1990
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-direct {p0, v0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->logSelectedWordForChinesePrediction(ILjava/lang/String;)V

    .line 1992
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->cancelChinesePrediction()V

    .line 1994
    const/16 v2, 0xfdf

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->shouldDisableInput(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2275
    .end local p3    # "source":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1998
    .restart local p3    # "source":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieKeypad()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapIsInvalid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1999
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapClearInvalid()V

    .line 2000
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearKey()Z

    .line 2003
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v10

    .line 2005
    .local v10, "ic":Landroid/view/inputmethod/InputConnection;
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-eqz v2, :cond_d

    .line 2006
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->acceptHWRAndUpdateListView()V

    .line 2007
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2008
    :cond_4
    if-eqz v10, :cond_1

    .line 2011
    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2012
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-interface {v10, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2013
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v10, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->moveCursorToMiddle(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 2014
    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 2016
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2017
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeCangjie()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2018
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2019
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isComponent()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2020
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashRedError()V

    goto/16 :goto_0

    .line 2023
    :cond_8
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flashErrorIfNeededInStroke()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2027
    :cond_9
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->selectDefault()V

    .line 2028
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInineAltCharacters()Z

    .line 2029
    if-eqz v10, :cond_1

    .line 2032
    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2033
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-interface {v10, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2034
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v10, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->moveCursorToMiddle(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 2035
    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 2039
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dismissPopupKeyboard()V

    .line 2040
    check-cast p3, Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    .end local p3    # "source":Landroid/view/View;
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->suggestions()Ljava/util/List;

    move-result-object v8

    .line 2041
    .local v8, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasBilingualPrefix()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2042
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    .line 2043
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    const/16 v3, 0xfe

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setActivePrefixIndex(I)Z

    .line 2044
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0xa

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->postUpdateChinesePredictionMessage(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;IJ)V

    .line 2054
    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto/16 :goto_0

    .line 2046
    :cond_b
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setActivePrefixIndex(I)Z

    .line 2047
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->startChinesePrediction()Z

    goto :goto_1

    .line 2050
    :cond_c
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setActivePrefixIndex(I)Z

    .line 2051
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->startChinesePrediction()Z

    goto :goto_1

    .line 2059
    .end local v8    # "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local p3    # "source":Landroid/view/View;
    :cond_d
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInineAltCharacters()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2063
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dismissPopupKeyboard()V

    .line 2064
    if-eqz v10, :cond_1

    .line 2065
    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2072
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCompletionOn:Z

    if-eqz v2, :cond_e

    if-ltz p1, :cond_e

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v2}, Lcom/nuance/swype/input/Completions;->size()I

    move-result v2

    move/from16 v0, p1

    if-ge v0, v2, :cond_e

    .line 2073
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/Completions;->get(I)Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    invoke-interface {v10, v2}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 2074
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 2075
    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 2078
    :cond_e
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_2c

    .line 2079
    if-eqz p2, :cond_f

    .line 2080
    sget-object v2, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->SELECTION_WCL:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 2083
    :cond_f
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 2084
    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->recognitionCandidatesAvailable()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2086
    sget-object v2, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "selectWord...index: if  :: actual word ::called >>>"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2087
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->clearRecognitionCandidates()V

    .line 2089
    if-nez p2, :cond_10

    .line 2090
    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 2095
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    .line 2097
    sget-object v2, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "selectWord...index: if  :: actual word :: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "...word: "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    .line 2098
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "mExactWord ::"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    aput-object v5, v3, v4

    .line 2097
    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2099
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_11

    .line 2100
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-interface {v10, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2101
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v10, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setContext(Ljava/lang/CharSequence;Z)V

    .line 2206
    :cond_11
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->multitapClearInvalid()V

    .line 2207
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_12

    .line 2208
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 2209
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 2212
    :cond_12
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedUpdate:Z

    .line 2213
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedDefer:Z

    .line 2214
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 2215
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellListView;->disableHighlight()V

    .line 2247
    :cond_13
    :goto_3
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsDelimiterKeyLabelUpdated:Z

    if-eqz v2, :cond_14

    .line 2248
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 2250
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v2

    if-nez v2, :cond_14

    .line 2251
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 2254
    :cond_14
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsClearKeyLabelUpdated:Z

    if-eqz v2, :cond_15

    .line 2255
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 2257
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v2

    if-nez v2, :cond_15

    .line 2258
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 2261
    :cond_15
    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2263
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTracedEver:Z

    .line 2264
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_31

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v2

    if-eqz v2, :cond_31

    check-cast p3, Lcom/nuance/swype/input/chinese/SpellListView;

    .line 2265
    .end local p3    # "source":Landroid/view/View;
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/swype/input/chinese/SpellListView;->suggestions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_31

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasBilingualPrefix()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 2266
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0xa

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->postUpdateChinesePredictionMessage(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;IJ)V

    .line 2271
    :goto_4
    if-eqz p2, :cond_1

    .line 2272
    invoke-super {p0, v13, v11}, Lcom/nuance/swype/input/InputView;->addEmojiInRecentCat(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2106
    .restart local p3    # "source":Landroid/view/View;
    :cond_16
    sget-object v2, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "selectWord...index: else   :: actual word ::called >>>"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2107
    const-string/jumbo v9, ""

    .line 2108
    .local v9, "defaultCandidate":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->suggestions()Ljava/util/List;

    move-result-object v8

    .line 2109
    .restart local v8    # "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-nez p1, :cond_1a

    if-eqz p2, :cond_1a

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isExactKeyboardShowable()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2110
    sget-object v2, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "selectWord...index: inside else  ::  if  :: actual word ::called >>>"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2111
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2112
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getExactWord(Ljava/lang/StringBuffer;)V

    .line 2113
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    const/4 v3, 0x1

    invoke-interface {v10, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2114
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->access$3000(Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;)V

    .line 2115
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    if-nez v2, :cond_17

    .line 2116
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellListView;->clear()V

    .line 2118
    :cond_17
    if-eqz v8, :cond_18

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_18

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 2119
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "defaultCandidate":Ljava/lang/CharSequence;
    check-cast v9, Ljava/lang/CharSequence;

    .line 2121
    .restart local v9    # "defaultCandidate":Ljava/lang/CharSequence;
    :cond_18
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    .line 2122
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCandidateSelectedEver:Z

    .line 2195
    :goto_5
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_19

    .line 2196
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 2197
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v2

    if-nez v2, :cond_19

    .line 2198
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->recordCommittedSentence(Ljava/lang/String;)V

    .line 2201
    :cond_19
    if-eqz p2, :cond_11

    .line 2202
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v9}, Lcom/nuance/swype/input/EditState;->selectWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2123
    :cond_1a
    if-nez p1, :cond_1b

    if-nez p2, :cond_1b

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isExactKeyboardShowable()Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1b
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 2124
    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isExactKeyboardShowable()Z

    move-result v2

    if-nez v2, :cond_25

    .line 2125
    :cond_1c
    sget-object v2, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "selectWord...index: inside else  ::  else if  :: actual word ::called >>>"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2126
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWordsSource()Ljava/util/List;

    move-result-object v14

    .line 2127
    .local v14, "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, p1

    if-le v2, v0, :cond_22

    move/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v12

    .line 2130
    .local v12, "selectedWordSource":I
    :goto_6
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->selectWord(ILjava/lang/StringBuilder;)Z

    .line 2131
    if-eqz p2, :cond_1d

    .line 2132
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->conversionHistory:Ljava/util/List;

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2134
    :cond_1d
    sget-object v2, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "conversionHistory...index: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "...exact keyboard visible: "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 2135
    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isExactKeyboardShowable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "...added: "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p2, v3, v4

    .line 2134
    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2136
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    if-nez v2, :cond_1e

    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInitiativeAccept:Z

    if-nez v2, :cond_1e

    .line 2137
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellListView;->clear()V

    .line 2140
    :cond_1e
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_20

    .line 2142
    if-eqz p2, :cond_24

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/EmojiLoader;->isEmoji(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2143
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getEmojis()Ljava/util/Map;

    move-result-object v2

    .line 2144
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "selected_emoji":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 2145
    .restart local v13    # "selected_emoji":Ljava/lang/String;
    if-eqz v13, :cond_23

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 2146
    const/4 v2, 0x1

    invoke-interface {v10, v13, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2154
    :goto_7
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2155
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v12}, Lcom/nuance/swype/input/chinese/ChineseInputView;->removeDLMPhraseByConversionHistory(Ljava/lang/CharSequence;I)V

    .line 2157
    :cond_1f
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->conversionHistory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2159
    :cond_20
    if-eqz v8, :cond_21

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_21

    .line 2160
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "defaultCandidate":Ljava/lang/CharSequence;
    check-cast v9, Ljava/lang/CharSequence;

    .line 2162
    .restart local v9    # "defaultCandidate":Ljava/lang/CharSequence;
    :cond_21
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    .line 2163
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCandidateSelectedEver:Z

    goto/16 :goto_5

    .line 2127
    .end local v12    # "selectedWordSource":I
    :cond_22
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 2148
    .restart local v12    # "selectedWordSource":I
    :cond_23
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-interface {v10, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_7

    .line 2152
    :cond_24
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-interface {v10, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_7

    .line 2166
    .end local v12    # "selectedWordSource":I
    .end local v14    # "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    :cond_25
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWordsSource()Ljava/util/List;

    move-result-object v14

    .line 2167
    .restart local v14    # "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, p1

    if-le v2, v0, :cond_2b

    move/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v12

    .line 2170
    .restart local v12    # "selectedWordSource":I
    :goto_8
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    add-int/lit8 v3, p1, -0x1

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->selectWord(ILjava/lang/StringBuilder;)Z

    .line 2171
    if-eqz p2, :cond_26

    .line 2172
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->conversionHistory:Ljava/util/List;

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2174
    :cond_26
    sget-object v2, Lcom/nuance/swype/input/chinese/ChineseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "conversionHistory...index: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "...exact keyboard visible: "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 2175
    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isExactKeyboardShowable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "...added: "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p2, v3, v4

    .line 2174
    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2176
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    if-nez v2, :cond_27

    .line 2177
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellListView;->clear()V

    .line 2180
    :cond_27
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_29

    .line 2181
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-interface {v10, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2182
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2183
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInsertText:Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v12}, Lcom/nuance/swype/input/chinese/ChineseInputView;->removeDLMPhraseByConversionHistory(Ljava/lang/CharSequence;I)V

    .line 2185
    :cond_28
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v10, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setContext(Ljava/lang/CharSequence;Z)V

    .line 2186
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->conversionHistory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2189
    :cond_29
    if-eqz v8, :cond_2a

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2a

    .line 2190
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "defaultCandidate":Ljava/lang/CharSequence;
    check-cast v9, Ljava/lang/CharSequence;

    .line 2192
    .restart local v9    # "defaultCandidate":Ljava/lang/CharSequence;
    :cond_2a
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z

    .line 2193
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCandidateSelectedEver:Z

    goto/16 :goto_5

    .line 2167
    .end local v12    # "selectedWordSource":I
    :cond_2b
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 2216
    .end local v8    # "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v9    # "defaultCandidate":Ljava/lang/CharSequence;
    .end local v14    # "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    :cond_2c
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_13

    .line 2218
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellListView;->enableHighlight()V

    move-object/from16 v2, p3

    .line 2219
    check-cast v2, Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellListView;->suggestions()Ljava/util/List;

    move-result-object v8

    .line 2221
    .restart local v8    # "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasBilingualPrefix()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2222
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_2e

    .line 2223
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    const/16 v3, 0xfe

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setActivePrefixIndex(I)Z

    .line 2230
    :goto_9
    sget-object v2, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_PREFIX:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 2232
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_2d

    .line 2233
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 2234
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setExactKeyboardShowable(Z)V

    .line 2236
    :cond_2d
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    if-eqz v2, :cond_30

    .line 2237
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideGridCandidatesView()V

    .line 2238
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInlineString(Z)V

    .line 2239
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/chinese/SpellListView;->drawCandidates(I)V

    .line 2240
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateGridViewByPrefix(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    goto/16 :goto_3

    .line 2225
    :cond_2e
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setActivePrefixIndex(I)Z

    goto :goto_9

    .line 2228
    :cond_2f
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setActivePrefixIndex(I)Z

    goto :goto_9

    .line 2242
    :cond_30
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto/16 :goto_3

    .line 2269
    .end local v8    # "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local p3    # "source":Landroid/view/View;
    :cond_31
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->startChinesePrediction()Z

    goto/16 :goto_4
.end method

.method protected setCandidatesViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 2302
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setCandidatesViewShown(Z)V

    .line 2303
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-nez v0, :cond_0

    .line 2311
    :goto_0
    return-void

    .line 2306
    :cond_0
    if-eqz p1, :cond_1

    .line 2307
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->setVisibility(I)V

    goto :goto_0

    .line 2309
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
    .line 3161
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    .line 3162
    return-void
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 2
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    const/4 v1, 0x0

    .line 1955
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1957
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1958
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTraceEnabledOnKeyboard:Z

    .line 1968
    :goto_0
    return-void

    .line 1961
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1962
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 1963
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 1965
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateKbdTraceState()V

    .line 1966
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTraceEnabledOnKeyboard:Z

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->enableTrace(Z)V

    .line 1967
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieKeypad()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setMultiTapInputMode(Z)V

    goto :goto_0
.end method

.method public setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .locals 7
    .param p1, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3888
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 3975
    :cond_0
    :goto_0
    return-void

    .line 3891
    :cond_1
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 3893
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v2, :cond_d

    .line 3896
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getAltCharacterConverted()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    .line 3897
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3900
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3901
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setAltCharacterConverted(Z)V

    .line 3904
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPrefixes(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    move-result-object v0

    .line 3905
    .local v0, "prefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 3906
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultPrefixIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {p0, v0, v2, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 3908
    :cond_4
    invoke-virtual {p0, v4, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 3910
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCloudPredictionAllowed:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v2, :cond_0

    .line 3911
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->predictionCloudGetData()[B

    move-result-object v1

    .line 3912
    .local v1, "requestCldInputData":[B
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->requestCloudDataCompare:[B

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->requestCloudDataCompare:[B

    array-length v2, v2

    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 3916
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->startChinesePrediction()Z

    goto :goto_0

    .line 3919
    .end local v0    # "prefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v1    # "requestCldInputData":[B
    :cond_6
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPressedNumOneKey:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3920
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasDigitTone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3923
    :cond_7
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v2, :cond_d

    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCandidateSelectedEver:Z

    if-nez v2, :cond_d

    .line 3925
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasTone()Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTracedEver:Z

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 3926
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_9
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    .line 3927
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_b

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    :goto_1
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAlphabeticCharacter(C)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3928
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3929
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->lastKeypadBilingualState:Z

    .line 3930
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->produceAltCharacterText()V

    .line 3931
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCloudPredictionAllowed:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v2, :cond_a

    .line 3932
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->predictionCloudGetData()[B

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->requestCloudDataCompare:[B

    .line 3934
    :cond_a
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setAltCharacterConverted(Z)V

    .line 3935
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->confirmDisplayConvertedCandidates()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3936
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInlineAltCharacters()V

    .line 3937
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    invoke-direct {p0, v2, v6, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 3938
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    goto/16 :goto_0

    :cond_b
    move v2, v3

    .line 3927
    goto :goto_1

    .line 3941
    :cond_c
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setAltCharacterConverted(Z)V

    .line 3945
    :cond_d
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->startSession()V

    .line 3946
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dismissPopupKeyboard()V

    .line 3947
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 3948
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v2, :cond_f

    .line 3949
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    if-nez v2, :cond_e

    .line 3950
    new-instance v2, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-direct {v2}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    .line 3952
    :cond_e
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->setContext(Landroid/content/Context;)V

    .line 3953
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->show()V

    goto/16 :goto_0

    .line 3956
    :cond_f
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearSuggestions()V

    .line 3957
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v2, p1, v4, v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 3958
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v2

    if-nez v2, :cond_10

    .line 3959
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 3960
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/FunctionBarListView;->showFunctionBar()V

    .line 3962
    :cond_10
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_11
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3963
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    invoke-direct {p0, v2, v6, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 3967
    :goto_2
    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 3968
    iget v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardLayoutId:I

    const/16 v4, 0x600

    if-eq v2, v4, :cond_12

    .line 3969
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3971
    :cond_12
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setPressDownPreviewEnabled(Z)V

    .line 3974
    :cond_13
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->startChinesePrediction()Z

    goto/16 :goto_0

    .line 3965
    :cond_14
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->hideSymbolList()V

    goto :goto_2
.end method

.method public setNotMatchToolTipSuggestion()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 4184
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v0, :cond_0

    .line 4185
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 4186
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showLeftArrow(Z)V

    .line 4187
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 4188
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 4189
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 4191
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 4192
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 4193
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showNotMatchTootip()V

    .line 4194
    return-void
.end method

.method protected setSwypeKeytoolTipSuggestion()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4145
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4159
    :goto_0
    return-void

    .line 4148
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 4149
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v0, :cond_1

    .line 4150
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 4151
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showLeftArrow(Z)V

    .line 4152
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 4153
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 4154
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 4156
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 4157
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 4158
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showSwypeTooltip()V

    goto :goto_0
.end method

.method public shouldDisableInput(I)Z
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 4722
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldShowTips()Z
    .locals 1

    .prologue
    .line 4140
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

.method public showFunctionBar()V
    .locals 1

    .prologue
    .line 4378
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mShowFunctionBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 4379
    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isCandidateListEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4380
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 4382
    :cond_0
    return-void
.end method

.method public showHardKeyPopupKeyboard(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 5441
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->showHardKeyPopupKeyboard(I)V

    .line 5443
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 5444
    return-void
.end method

.method public showPredictionResult(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;)V
    .locals 6
    .param p1, "show"    # Z
    .param p2, "result"    # Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;

    .prologue
    .line 5499
    iput-object p2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChinesePredictionResult:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;

    .line 5502
    const/4 v3, 0x0

    const-wide/16 v4, 0xa

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->postUpdateChinesePredictionMessage(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;IJ)V

    .line 5503
    return-void
.end method

.method public showRemoveUdbWordDialog(Ljava/lang/String;I)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "wordSource"    # I

    .prologue
    .line 4066
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/16 v0, 0xe

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    .line 4071
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4076
    :goto_0
    return-void

    .line 4075
    :cond_1
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->showRemoveUdbWordDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V
    .locals 12
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "restarting"    # Z

    .prologue
    const-wide/16 v10, 0x5

    const/16 v9, 0xf

    const/4 v8, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 500
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v2, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    invoke-virtual {v2, v5}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->resisterTouchKeyHandler(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;)V

    .line 506
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->flingGestureListener:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;

    invoke-virtual {v2, v5}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->registerFlingGestureHandler(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;)V

    .line 507
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->wrapTouchEvent(Landroid/view/View;)V

    .line 508
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->access$3000(Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;)V

    .line 511
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-static {}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->getDispatcherInstance()Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->setHandler(Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;)Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V

    .line 513
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_2

    .line 514
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateCandidatesSize()V

    .line 516
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    if-eqz v2, :cond_3

    .line 517
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellListView;->updateCandidatesSize()V

    .line 519
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getVerContainer()Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 520
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getVerContainer()Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->updateCandidatesSize()V

    .line 523
    :cond_4
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->finishSession()V

    .line 525
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPinyinCandidates:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 526
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mPinyinCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 528
    :cond_5
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->conversionHistory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 530
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v2, :cond_6

    .line 531
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 532
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showLeftArrow(Z)V

    .line 535
    :cond_6
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 536
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 538
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsIMEActive:Z

    .line 539
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 540
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCompletionOn:Z

    .line 541
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDealingBackspace:Z

    .line 542
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/FunctionBarListView;->recycleBitmap()V

    .line 543
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getShowFunctionBar()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mShowFunctionBar:Z

    .line 544
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dismissPopupKeyboard()V

    .line 546
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->startSession()V

    .line 548
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInternalStatus()V

    .line 552
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->checkCurLanguage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getAltCharacterConverted()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 562
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setAltCharacterConverted(Z)V

    .line 564
    :cond_7
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v1

    .line 565
    .local v1, "currentLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 566
    if-eqz p2, :cond_12

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v1, v2, :cond_12

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isKeepingKeyboard:Z

    .line 567
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isKeepingKeyboard:Z

    if-eqz v2, :cond_13

    .line 570
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v2, v1, p1, v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 576
    :goto_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 577
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    .line 578
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNameField()Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v3

    :goto_3
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isKeepingKeyboard:Z

    if-eqz v5, :cond_15

    move v5, v3

    .line 577
    :goto_4
    invoke-virtual {v7, v9, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v6, v2, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 581
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->detectCurrentHandwritingOn()Z

    .line 583
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v2, :cond_8

    .line 584
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandwritingOn:Z

    invoke-virtual {v2, v5}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->setHandwritingOn(Z)V

    .line 587
    :cond_8
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v2, :cond_9

    .line 588
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onStartInput()V

    .line 591
    :cond_9
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mShowFunctionBar:Z

    if-eqz v2, :cond_a

    .line 592
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/FunctionBarListView;->recycleBitmap()V

    .line 593
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->addFunctionBarItem()V

    .line 596
    :cond_a
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    if-eqz v2, :cond_b

    .line 597
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellListView;->disableHighlight()V

    .line 600
    :cond_b
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 601
    :cond_c
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 607
    :goto_5
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideGridCandidatesView()V

    .line 608
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 609
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->triggerPasswordTip()V

    .line 612
    :cond_d
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->postDelayResumeSpeech()V

    .line 614
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeStroke()Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_e
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 615
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chineseSymbolList:Ljava/util/List;

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showPinyinSelectionList(Ljava/util/List;IZ)V

    .line 620
    :goto_6
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 621
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCloudAnimationStarted:Z

    .line 622
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->allowChinesePrediction()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isCloudPredictionAllowed:Z

    .line 624
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    if-eqz v2, :cond_f

    .line 625
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->hide()V

    .line 631
    :cond_f
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v2, :cond_10

    .line 632
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 633
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_10

    .line 634
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->chinesePredictionView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/view/InputContainerView;->hideWidgetView(Landroid/view/View;)V

    .line 635
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inlineContainerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/view/InputContainerView;->hideWidgetView(Landroid/view/View;)V

    .line 638
    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_10
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isValidBuild()Z

    move-result v2

    if-nez v2, :cond_11

    .line 639
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 640
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 641
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 644
    :cond_11
    const-string/jumbo v2, "CJK"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showTrialExpireWclMessage(Ljava/lang/String;)V

    .line 645
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showUserThemeWclMessage(Landroid/os/Handler;)V

    goto/16 :goto_0

    :cond_12
    move v2, v4

    .line 566
    goto/16 :goto_1

    .line 573
    :cond_13
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v2, p1, v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    goto/16 :goto_2

    :cond_14
    move v2, v4

    .line 578
    goto/16 :goto_3

    :cond_15
    move v5, v4

    goto/16 :goto_4

    .line 603
    :cond_16
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 604
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->inputViewHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5

    .line 617
    :cond_17
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->hideSymbolList()V

    goto :goto_6
.end method

.method public updateGridViewByPrefix(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 8
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3752
    instance-of v1, p1, Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-eqz v1, :cond_1

    .line 3821
    :cond_0
    :goto_0
    return-void

    .line 3756
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-ne p1, v1, :cond_0

    .line 3757
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 3758
    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->isWritingRecognitionDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3762
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPopupList()Ljava/util/List;

    move-result-object v6

    .line 3763
    .local v6, "candList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPopupWordSourceList()Ljava/util/List;

    move-result-object v7

    .line 3764
    .local v7, "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3768
    invoke-direct {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getPureCandidates(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupDataList:Ljava/util/List;

    .line 3770
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getHeight()I

    move-result v5

    .line 3771
    .local v5, "height":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->setMinimumHeight(I)V

    .line 3772
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 3773
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 3774
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setWordSource(Ljava/util/List;)V

    .line 3776
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupDataList:Ljava/util/List;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setGridCandidates(Ljava/util/List;Ljava/util/List;I)V

    .line 3777
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$xml;->kbd_chinese_popup_template:I

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mRows:Ljava/util/List;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupScrollView:Landroid/widget/ScrollView;

    .line 3778
    invoke-virtual {v4}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/util/List;II)V

    .line 3779
    .local v0, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 3780
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    .line 3782
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    new-instance v2, Lcom/nuance/swype/input/chinese/ChineseInputView$6;

    invoke-direct {v2, p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView$6;-><init>(Lcom/nuance/swype/input/chinese/ChineseInputView;Lcom/nuance/swype/input/KeyboardEx;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 3817
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 3818
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v3

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3817
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3819
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mOneStepPYContainer:Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->showContextWindow(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public updateListViews(ZZ)V
    .locals 1
    .param p1, "updateSpells"    # Z
    .param p2, "setEmptyComposingText"    # Z

    .prologue
    .line 2799
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2800
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 2804
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2806
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInlineAltCharacters()V

    .line 2824
    :goto_0
    return-void

    .line 2812
    :cond_0
    if-eqz p1, :cond_2

    .line 2813
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isQwertyLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    if-eqz v0, :cond_2

    .line 2814
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updatePrefixes()V

    .line 2817
    :cond_2
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 2820
    :cond_3
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsUpdateInline:Z

    if-eqz v0, :cond_4

    .line 2821
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateInlineString(Z)V

    .line 2823
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsUpdateInline:Z

    goto :goto_0
.end method

.method public updateSelection(IIII[I)V
    .locals 10
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesIndices"    # [I

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 955
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedDefer:Z

    .line 957
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/input/InputView;->updateSelection(IIII[I)V

    .line 960
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedUpdate:Z

    if-nez v5, :cond_1

    .line 961
    iput-boolean v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mbNeedUpdate:Z

    .line 1108
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    const/4 v1, 0x0

    .line 966
    .local v1, "cursorChanged":Z
    const/4 v0, 0x0

    .line 967
    .local v0, "contextNeedUpdate":Z
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v2

    .line 968
    .local v2, "hasActive":Z
    if-ne p3, p1, :cond_2

    if-eq p4, p2, :cond_12

    .line 970
    :cond_2
    const/4 v1, 0x1

    .line 972
    aget v5, p5, v7

    aget v6, p5, v8

    if-ne v5, v6, :cond_d

    aget v5, p5, v7

    if-ne v5, v9, :cond_d

    .line 977
    const/4 v0, 0x1

    .line 978
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsDelimiterKeyLabelUpdated:Z

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 981
    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v5

    if-nez v5, :cond_3

    .line 982
    invoke-direct {p0, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 984
    :cond_3
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsClearKeyLabelUpdated:Z

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 987
    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v5

    if-nez v5, :cond_4

    .line 988
    invoke-direct {p0, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 990
    :cond_4
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInitiativeAccept:Z

    if-eqz v5, :cond_b

    .line 991
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInitiativeAccept:Z

    .line 1051
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isEmojiKeyboardShown()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1052
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dismissPopupKeyboard()V

    .line 1054
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->dimissRemoveUdbWordDialog()V

    .line 1055
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    if-eqz v5, :cond_7

    if-nez v2, :cond_8

    .line 1056
    :cond_7
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hideGridCandidatesView()V

    .line 1059
    :cond_8
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsIMEActive:Z

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShown()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1060
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 1061
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1062
    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 1065
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isShown()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 1066
    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v5, :cond_a

    .line 1069
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 1070
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    .line 1071
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 1072
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 1073
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 1076
    :cond_a
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDealingBackspace:Z

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/FunctionBarListView;->isFunctionBarShowing()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1081
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDealingBackspace:Z

    goto/16 :goto_0

    .line 993
    :cond_b
    if-nez v2, :cond_5

    .line 1046
    :cond_c
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInternalStatus()V

    goto/16 :goto_1

    .line 998
    :cond_d
    aget v5, p5, v8

    if-ne p4, v5, :cond_11

    .line 999
    if-ne p3, p4, :cond_e

    .line 1001
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1004
    :cond_e
    const/4 v0, 0x1

    .line 1005
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 1006
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_10

    .line 1007
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1008
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsDelimiterKeyLabelUpdated:Z

    if-eqz v5, :cond_f

    if-eqz v2, :cond_f

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1011
    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1012
    invoke-direct {p0, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateDelimiterKeyLabel(Z)V

    .line 1014
    :cond_f
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsClearKeyLabelUpdated:Z

    if-eqz v5, :cond_10

    if-eqz v2, :cond_10

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1017
    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v5

    if-nez v5, :cond_10

    .line 1018
    invoke-direct {p0, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateClearKeyLabel(Z)V

    .line 1021
    :cond_10
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->clearInternalStatus()V

    goto/16 :goto_1

    .line 1027
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_11
    const/4 v0, 0x0

    .line 1029
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 1030
    invoke-virtual {p0, v8, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto/16 :goto_1

    .line 1034
    :cond_12
    aget v5, p5, v7

    aget v6, p5, v8

    if-ne v5, v6, :cond_5

    aget v5, p5, v7

    if-ne v5, v9, :cond_5

    .line 1038
    const/4 v0, 0x1

    .line 1043
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInitiativeAccept:Z

    if-eqz v5, :cond_c

    .line 1044
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInitiativeAccept:Z

    goto/16 :goto_1

    .line 1084
    :cond_13
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isSourceFromPressSpace:Z

    if-eqz v5, :cond_14

    .line 1085
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isSourceFromPressSpace:Z

    .line 1086
    if-nez v2, :cond_14

    .line 1088
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->breakContext()Z

    .line 1089
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v4

    .line 1090
    .local v4, "layerType":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v4, v5, :cond_0

    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM_PW:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v4, v5, :cond_0

    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_PHONE:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v4, v5, :cond_0

    .line 1093
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    goto/16 :goto_0

    .line 1098
    .end local v4    # "layerType":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    :cond_14
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsIMEActive:Z

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 1100
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    .line 1101
    invoke-virtual {v5}, Lcom/nuance/swype/input/FunctionBarListView;->isFunctionBarDisabledOrZeroItem()Z

    move-result v5

    if-nez v5, :cond_15

    .line 1102
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setContext(Ljava/lang/CharSequence;)Z

    .line 1106
    :goto_2
    invoke-virtual {p0, v8, v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto/16 :goto_0

    .line 1104
    :cond_15
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateContext()Z

    goto :goto_2
.end method

.method public updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I
    .locals 9
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 2583
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isValidBuild()Z

    move-result v8

    if-nez v8, :cond_0

    move v5, v7

    .line 2695
    :goto_0
    return v5

    .line 2587
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isActiveWCL()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2588
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 2589
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 2590
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    move v5, v6

    .line 2591
    goto :goto_0

    .line 2593
    :cond_1
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-nez v8, :cond_3

    :cond_2
    move v5, v7

    .line 2594
    goto :goto_0

    .line 2596
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isNormalTextInputMode()Z

    move-result v8

    if-nez v8, :cond_4

    move v5, v7

    .line 2597
    goto :goto_0

    .line 2600
    :cond_4
    iget-boolean v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mIsIMEActive:Z

    if-nez v8, :cond_6

    .line 2602
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v6, :cond_5

    .line 2603
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->clearRecognitionCandidates()V

    :cond_5
    move v5, v7

    .line 2605
    goto :goto_0

    .line 2607
    :cond_6
    const/4 v5, 0x0

    .line 2609
    .local v5, "wordListCount":I
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 2610
    invoke-virtual {v8}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->recognitionCandidatesAvailable()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2611
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->getT9WriteChinese()Lcom/nuance/input/swypecorelib/T9WriteChinese;

    move-result-object v6

    if-nez v6, :cond_7

    move v5, v7

    .line 2612
    goto :goto_0

    .line 2614
    :cond_7
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 2615
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v6, :cond_8

    .line 2616
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .line 2618
    invoke-virtual {v8}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->getHWRecognitionCandidates()Ljava/util/List;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getPureCandidates(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 2617
    invoke-virtual {v6, v8, v7}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 2619
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 2620
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 2621
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 2622
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 2625
    :cond_8
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2626
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2627
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->getHWRecognitionCandidates()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-direct {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 2629
    :cond_9
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v8, :cond_a

    move v5, v7

    .line 2630
    goto/16 :goto_0

    .line 2632
    :cond_a
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2635
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isAltCharacterToggled()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2637
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateAltCharacters()I

    move-result v5

    goto/16 :goto_0

    .line 2639
    :cond_b
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getChineseWordsInline()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSelectWord:Ljava/lang/String;

    .line 2641
    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p1, v8, :cond_11

    .line 2642
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getCandidates()Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 2643
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isGesture(Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDealGesture:Z

    .line 2644
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleGesture(Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2645
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    invoke-static {v8}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->access$3000(Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;)V

    .line 2646
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDealGesture:Z

    .line 2647
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 2648
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/FunctionBarListView;->showFunctionBar()V

    .line 2649
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    .line 2650
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v7, :cond_c

    .line 2651
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->clear()V

    :cond_c
    move v5, v6

    .line 2653
    goto/16 :goto_0

    .line 2655
    :cond_d
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v6, v8}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    move-result-object v4

    .line 2656
    .local v4, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWordsSource()Ljava/util/List;

    move-result-object v2

    .line 2657
    .local v2, "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_e

    .line 2658
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateIndex()I

    move-result v1

    .line 2659
    .local v1, "defaultCandidateIndex":I
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2660
    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v8, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2662
    .end local v1    # "defaultCandidateIndex":I
    :cond_e
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isDealGesture:Z

    .line 2663
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 2669
    .end local v0    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    :goto_1
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isExactKeyboardShowable()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2670
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-direct {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getExactWord(Ljava/lang/StringBuffer;)V

    .line 2671
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isValidExactKeyboardPhrase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2672
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mExactWord:Ljava/lang/StringBuffer;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2673
    .local v3, "word":Ljava/lang/StringBuilder;
    invoke-interface {v4, v7, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2674
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v2, v7, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2677
    .end local v3    # "word":Ljava/lang/StringBuilder;
    :cond_f
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setLeftArrowStatus(Z)V

    .line 2678
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showLeftArrow(Z)V

    .line 2679
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_12

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 2680
    invoke-virtual {v6}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 2681
    invoke-virtual {v6}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->hasActiveKeySeq()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 2682
    :cond_10
    invoke-direct {p0, v4, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setWordListToSuggestions(Ljava/util/List;Ljava/util/List;)V

    .line 2693
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->syncCandidateDisplayStyleToMode()V

    goto/16 :goto_0

    .line 2665
    .end local v2    # "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    .end local v4    # "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_11
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v6, v8}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    move-result-object v4

    .line 2666
    .restart local v4    # "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWordsSource()Ljava/util/List;

    move-result-object v2

    .restart local v2    # "wdSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    goto :goto_1

    .line 2684
    :cond_12
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isSpeechViewShowing()Z

    move-result v6

    if-nez v6, :cond_13

    .line 2685
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->showFunctionBarList()V

    .line 2687
    :cond_13
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/FunctionBarListView;->showFunctionBar()V

    .line 2688
    iput-boolean v7, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->isPressedNumOneKey:Z

    .line 2689
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->numZeroPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 2690
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView;->delimiterPlaceholderIndexList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto :goto_2
.end method
