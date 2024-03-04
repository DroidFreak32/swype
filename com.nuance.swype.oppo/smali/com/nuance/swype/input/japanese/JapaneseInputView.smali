.class public Lcom/nuance/swype/input/japanese/JapaneseInputView;
.super Lcom/nuance/swype/input/InputView;
.source "JapaneseInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;


# static fields
.field private static final ALL_CONFIRM:I = -0x1

.field private static final CONV_CANDIDATE_END:I = 0x0

.field private static final CONV_CANDIDATE_SELECTED:I = 0x2

.field private static final CONV_CANDIDATE_START:I = 0x1

.field private static final FLICKER_BETWEEN_INTERVAL:I = 0x2

.field private static final JP_KEYPAD_LONG_VOWEL_KEY:I = 0x30fc

.field private static final JP_KEYPAD_YA_KEY:I = 0x3084

.field private static final KEYCODE_Z:I = 0x7a

.field private static final KEYPAD_FLICKER_RADIUS_PARAM:D = 2.0

.field private static final KEYPAD_ISOLATION_AREA_PARM:D = 1.8

.field private static final KEYPAD_KEYBOARD_TYPE:I = 0x2

.field private static final LAST_INPUT_BACKSPACE:I = 0x4

.field private static final LAST_INPUT_SPACE:I = 0x3

.field private static final MAXDIVINFOLEN:I = 0x100

.field protected static final MSG_DELAY_RESET_INLINE_FLAG:I = 0x15

.field private static final QWERTY_KEYBOARD_TYPE:I = 0x1

.field private static final RC_PHRASE_CONVERSION:I = 0x1

.field private static final RC_PHRASE_CONVERSION_EX:I = 0x0

.field private static final RC_PHRASE_REDUCTION:I = 0x2

.field private static final RC_PHREAE_EXPANTION:I = 0x3

.field private static final TRACE_GESTURE:I = -0x1

.field private static isTopKeyFlicerUp:Z

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field JpInputViewCallback:Landroid/os/Handler$Callback;

.field JpInputViewHandler:Landroid/os/Handler;

.field protected final ROW_COUNT:I

.field private arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

.field private candidatesPopup:Landroid/view/View;

.field private charUtils:Lcom/nuance/swype/util/CharacterUtilities;

.field private closeSegmentationButton:Landroid/view/View;

.field private flickerKeyHeight:I

.field private flickerKeyPopupBackground:Landroid/graphics/drawable/Drawable;

.field private flickerKeyPopupSelectedBackground:Landroid/graphics/drawable/Drawable;

.field private flickerKeyTextSize:I

.field private flickerKeyWidth:I

.field private flickerMiddleKeyRadius:D

.field private gridViewFunctionButtonPressed:Z

.field private isKeypadFlickrInputSupported:Z

.field private isKeypadMultitapInputSupported:Z

.field private isMoveHighlightForResize:Z

.field private isSegmentationPopupNeeded:Z

.field protected japaneseFlickerKeyIndex:I

.field protected japaneseFlickerKeyRelativeIndex:I

.field private lastTimeEditorText:Landroid/view/inputmethod/ExtractedText;

.field private lastTimeInlineText:Ljava/lang/CharSequence;

.field private leftArrowButton:Landroid/view/View;

.field private mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

.field private mBKNextWordPredictionSpan:Landroid/text/style/BackgroundColorSpan;

.field private mBKRangeConversionDefaultSpan:Landroid/text/style/BackgroundColorSpan;

.field private mBKRemainSpan:Landroid/text/style/BackgroundColorSpan;

.field private mBKWordErrorSpan:Landroid/text/style/BackgroundColorSpan;

.field private mColorRecommended:Landroid/text/style/ForegroundColorSpan;

.field private mConfirmedInlineRomaji:Ljava/lang/StringBuilder;

.field private mConfirmedKanji:Ljava/lang/StringBuilder;

.field private final mContextBuffer:Ljava/lang/StringBuilder;

.field private mContextWindowShowing:Z

.field private mConvert:I

.field private mCurrentCursorPosInline:I

.field private mCurrentKeyNav:I

.field private mCursorPosCount:I

.field protected mDefaultWord:Landroid/text/SpannableStringBuilder;

.field private mExactKeyboardPhrase:Ljava/lang/String;

.field private mExactKeyboardShowable:Z

.field private final mExactWordSpan:Landroid/text/style/StyleSpan;

.field private mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

.field private mFGNextWordPredictionSpan:Landroid/text/style/ForegroundColorSpan;

.field private mFGWordErrorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mFlickerView:Landroid/view/View;

.field private mInlineKanaWord:Ljava/lang/String;

.field protected mInlineTextBak:Ljava/lang/CharSequence;

.field protected mInlineWord:Landroid/text/SpannableStringBuilder;

.field private mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

.field private mJapaneseNavPopup:Landroid/widget/PopupWindow;

.field private mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

.field protected mJpWordPageContainer:Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;

.field private mKanaDivInfoOfInline:[I

.field protected mLangModel:Z

.field private mLastSelEnd:I

.field private mLastSelStart:I

.field private mNavOn:Z

.field private mOpenwnnEngine:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

.field protected mPopupPreviewX:I

.field protected mPopupPreviewY:I

.field private mRCOutPhraseDivInfo:[I

.field private mRCReadingDivInfo:[I

.field private mRomajiDivInfoOfInline:[I

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

.field private mScrollable:Z

.field protected mSuggestedWord:Landroid/text/SpannableStringBuilder;

.field private final mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mUpdatingInline:Z

.field private final mWordComposeSpan:Landroid/text/style/UnderlineSpan;

.field protected mWordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field protected mWordListBak:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private portraitInputOptions:I

.field private rightArrowButton:Landroid/view/View;

.field private segmentationPopup:Landroid/widget/PopupWindow;

.field private segmentationView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-string v0, "JapaneseInputView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 211
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTopKeyFlicerUp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x101

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2602
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    const/4 v0, 0x5

    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->ROW_COUNT:I

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRows:Ljava/util/List;

    .line 132
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    .line 133
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mExactWordSpan:Landroid/text/style/StyleSpan;

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    .line 153
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 155
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    .line 156
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 161
    iput-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mExactKeyboardShowable:Z

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mExactKeyboardPhrase:Ljava/lang/String;

    .line 163
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    .line 166
    iput-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadMultitapInputSupported:Z

    .line 167
    iput-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadFlickrInputSupported:Z

    .line 169
    iput-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mScrollable:Z

    .line 170
    iput-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mContextWindowShowing:Z

    .line 172
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    .line 175
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRomajiDivInfoOfInline:[I

    .line 176
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKanaDivInfoOfInline:[I

    .line 177
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCursorPosCount:I

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConfirmedInlineRomaji:Ljava/lang/StringBuilder;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConfirmedKanji:Ljava/lang/StringBuilder;

    .line 183
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineKanaWord:Ljava/lang/String;

    .line 184
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCReadingDivInfo:[I

    .line 185
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    .line 187
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 204
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKeyNav:I

    .line 209
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    .line 210
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    .line 212
    iput-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMoveHighlightForResize:Z

    .line 357
    new-instance v0, Lcom/nuance/swype/input/japanese/JapaneseInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView$1;-><init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewCallback:Landroid/os/Handler$Callback;

    .line 385
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    .line 2604
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    aput v3, v0, v2

    .line 2605
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCReadingDivInfo:[I

    aput v3, v0, v2

    .line 2606
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->prepareFlickerPopup()V

    .line 2608
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x101

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2612
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    const/4 v0, 0x5

    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->ROW_COUNT:I

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRows:Ljava/util/List;

    .line 132
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    .line 133
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mExactWordSpan:Landroid/text/style/StyleSpan;

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    .line 153
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 155
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    .line 156
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 161
    iput-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mExactKeyboardShowable:Z

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mExactKeyboardPhrase:Ljava/lang/String;

    .line 163
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    .line 166
    iput-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadMultitapInputSupported:Z

    .line 167
    iput-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadFlickrInputSupported:Z

    .line 169
    iput-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mScrollable:Z

    .line 170
    iput-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mContextWindowShowing:Z

    .line 172
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    .line 175
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRomajiDivInfoOfInline:[I

    .line 176
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKanaDivInfoOfInline:[I

    .line 177
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCursorPosCount:I

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConfirmedInlineRomaji:Ljava/lang/StringBuilder;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConfirmedKanji:Ljava/lang/StringBuilder;

    .line 183
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineKanaWord:Ljava/lang/String;

    .line 184
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCReadingDivInfo:[I

    .line 185
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    .line 187
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 204
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKeyNav:I

    .line 209
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    .line 210
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    .line 212
    iput-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMoveHighlightForResize:Z

    .line 357
    new-instance v0, Lcom/nuance/swype/input/japanese/JapaneseInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView$1;-><init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewCallback:Landroid/os/Handler$Callback;

    .line 385
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    .line 2614
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    aput v3, v0, v2

    .line 2615
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCReadingDivInfo:[I

    aput v3, v0, v2

    .line 2616
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->prepareFlickerPopup()V

    .line 2617
    return-void
.end method

.method private ShowNextWordPrediction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "hiragana"    # Ljava/lang/CharSequence;
    .param p2, "word"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x0

    .line 1584
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1586
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOpenwnnEngine:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    if-eqz v4, :cond_1

    .line 1588
    if-eqz p1, :cond_0

    .line 1589
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOpenwnnEngine:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->doExactSearch(Ljava/lang/String;Ljava/lang/String;)Ljp/co/omronsoft/openwnn/WnnWord;

    move-result-object v3

    .line 1594
    .local v3, "previousWord":Ljp/co/omronsoft/openwnn/WnnWord;
    :goto_0
    if-eqz v3, :cond_1

    .line 1596
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOpenwnnEngine:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    invoke-virtual {v4, v3}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->doPredictionSearch(Ljp/co/omronsoft/openwnn/WnnWord;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1598
    .local v2, "predictionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 1600
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1602
    .local v0, "aWord":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1591
    .end local v0    # "aWord":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "predictionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "previousWord":Ljp/co/omronsoft/openwnn/WnnWord;
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOpenwnnEngine:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->doExactSearch(Ljava/lang/String;Ljava/lang/String;)Ljp/co/omronsoft/openwnn/WnnWord;

    move-result-object v3

    .restart local v3    # "previousWord":Ljp/co/omronsoft/openwnn/WnnWord;
    goto :goto_0

    .line 1607
    .end local v3    # "previousWord":Ljp/co/omronsoft/openwnn/WnnWord;
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1608
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-direct {p0, v4, v7, v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateWordListeView(Ljava/util/List;IZ)V

    .line 1609
    return-void
.end method

.method private UpdateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I
    .locals 14
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    const/16 v10, 0x20

    const/16 v13, 0x15

    const/4 v12, 0x1

    const/16 v11, 0x121

    const/4 v6, 0x0

    .line 2395
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-nez v7, :cond_1

    :cond_0
    move v5, v6

    .line 2537
    :goto_0
    return v5

    .line 2399
    :cond_1
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2400
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2402
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2403
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2405
    sget-object v7, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p1, v7, :cond_4

    .line 2407
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getCandidates()Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 2409
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleGesture(Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2410
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearAllKeys()Z

    .line 2411
    const/4 v5, -0x1

    goto :goto_0

    .line 2414
    :cond_2
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v7

    if-nez v7, :cond_3

    move v5, v6

    .line 2416
    goto :goto_0

    .line 2418
    :cond_3
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7, v8, v9, v10}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    .line 2423
    .end local v0    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    :goto_1
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordListBak:Ljava/util/List;

    if-nez v7, :cond_5

    .line 2425
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordListBak:Ljava/util/List;

    .line 2431
    :goto_2
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 2433
    .local v4, "item":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordListBak:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2420
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Ljava/lang/CharSequence;
    :cond_4
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7, v8, v9, v10}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    goto :goto_1

    .line 2428
    :cond_5
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordListBak:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 2436
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 2438
    .local v5, "wordCandidatesCount":I
    if-ltz v5, :cond_f

    .line 2440
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2442
    .local v3, "inlineText":Landroid/text/SpannableStringBuilder;
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v7, v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getInlineText(Landroid/text/SpannableStringBuilder;)V

    .line 2444
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2445
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2447
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/16 v8, 0x100

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRomajiDivInfoOfInline:[I

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKanaDivInfoOfInline:[I

    invoke-virtual {v7, v8, v9, v10}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getInlineDivInfo(I[I[I)I

    move-result v7

    iput v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCursorPosCount:I

    .line 2449
    iget v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCursorPosCount:I

    iput v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    .line 2451
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v7}, Lcom/nuance/swype/input/EditState;->composeWordCandidate()V

    .line 2456
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_c

    .line 2457
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2458
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->addDigitsFromUILayer(Ljava/lang/String;)Z

    .line 2460
    :cond_7
    if-lez v5, :cond_8

    .line 2461
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->addExactEnWordsFromUILayer()I

    .line 2464
    :cond_8
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 2466
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v7, v8, v6, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2470
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v7

    if-nez v7, :cond_d

    .line 2472
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKNextWordPredictionSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v7, v8, v6, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2474
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGNextWordPredictionSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v7, v8, v6, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2488
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMultitapping()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2490
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2493
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2498
    :cond_a
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v7, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 2500
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const-wide/16 v8, 0xa

    invoke-virtual {v7, v13, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2502
    iput-boolean v12, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mUpdatingInline:Z

    .line 2504
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 2506
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_b

    .line 2508
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2510
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-static {v2, v7}, Lcom/nuance/swype/util/InputConnectionUtils;->setComposingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2512
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2515
    :cond_b
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ActivateKlingonMode"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_c

    .line 2517
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "QoS \'oH \'oHbe\' chenmoHta\'"

    invoke-static {v7, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 2521
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_c
    if-lez v5, :cond_e

    .line 2523
    iput-boolean v12, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mUpdatingInline:Z

    .line 2525
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-direct {p0, v7, v8, v6}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateWordListeView(Ljava/util/List;IZ)V

    .line 2535
    .end local v3    # "inlineText":Landroid/text/SpannableStringBuilder;
    :goto_5
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineKanaWord:Ljava/lang/String;

    goto/16 :goto_0

    .line 2479
    .restart local v3    # "inlineText":Landroid/text/SpannableStringBuilder;
    :cond_d
    if-lez v5, :cond_9

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->isInlineKnown()Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-eqz v7, :cond_9

    .line 2482
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKWordErrorSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v7, v8, v6, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2484
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGWordErrorSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v7, v8, v6, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 2528
    :cond_e
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->syncCandidateDisplayStyleToMode()V

    goto :goto_5

    .line 2532
    .end local v3    # "inlineText":Landroid/text/SpannableStringBuilder;
    :cond_f
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    goto :goto_5
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mUpdatingInline:Z

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setSpeechViewHost()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resumeSpeech()V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hideGridCandidatesView()V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setCandidatesViewShown(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isSegmentationPopupNeeded:Z

    return v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->gridViewFunctionButtonPressed:Z

    return v0
.end method

.method static synthetic access$702(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->gridViewFunctionButtonPressed:Z

    return p1
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setCandidatesViewShown(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    return-object v0
.end method

.method private addExactEnWordsFromUILayer()I
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 4269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4270
    .local v5, "newExactBuffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeyboardInput()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4271
    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v9, v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getExactType(Ljava/lang/StringBuilder;)V

    .line 4277
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-gtz v9, :cond_2

    .line 4318
    :cond_0
    :goto_1
    return v11

    .line 4273
    :cond_1
    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->convertKana2Romaji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4274
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4281
    .end local v6    # "str":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 4282
    .local v4, "lowercaseEn":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 4283
    .local v7, "uppercaseEn":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 4285
    .local v2, "firstCapEn":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 4287
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4288
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4292
    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 4296
    :cond_4
    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 4297
    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    .line 4298
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_7

    .line 4299
    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 4300
    .local v8, "wd":Ljava/lang/CharSequence;
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4302
    :cond_5
    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4303
    add-int/lit8 v3, v3, -0x1

    .line 4304
    add-int/lit8 v1, v1, -0x1

    .line 4305
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4310
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v8    # "wd":Ljava/lang/CharSequence;
    :cond_7
    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4311
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 4312
    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4314
    :cond_8
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 4315
    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private cleanInlineWordSpanAndFlush()V
    .locals 6

    .prologue
    .line 4379
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 4380
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x121

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4382
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4384
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 4385
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4386
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 4387
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4390
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method private clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2343
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2344
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2346
    if-eqz p1, :cond_0

    .line 2348
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2349
    const-string v0, ""

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2350
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2353
    :cond_0
    return-void
.end method

.method private composingState()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1224
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1228
    :cond_0
    return v0
.end method

.method private convertKana2Romaji(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "kanastring"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x40

    const/4 v7, 0x0

    .line 4323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4324
    .local v4, "romajiString":Ljava/lang/StringBuilder;
    new-array v1, v5, [C

    .line 4325
    .local v1, "kana":[C
    new-array v3, v5, [C

    .line 4326
    .local v3, "romaji":[C
    const/4 v5, 0x1

    new-array v2, v5, [I

    .line 4328
    .local v2, "plen":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 4329
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v1, v0

    .line 4328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4332
    :cond_0
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v1, v6, v3, v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->kanatoRomaji([CI[C[I)I

    move-result v5

    if-nez v5, :cond_1

    .line 4333
    aget v5, v2, v7

    aput-char v7, v3, v5

    .line 4334
    aget v5, v2, v7

    if-lez v5, :cond_1

    .line 4335
    aget v5, v2, v7

    invoke-static {v3, v7, v5}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4339
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private convertText2Romaji(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "textStr"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x40

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4344
    .local v4, "romajiString":Ljava/lang/StringBuilder;
    new-array v1, v5, [C

    .line 4345
    .local v1, "kana":[C
    new-array v3, v5, [C

    .line 4346
    .local v3, "romaji":[C
    new-array v2, v7, [I

    .line 4348
    .local v2, "plen":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 4350
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v1, v6

    .line 4352
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5, v1, v7, v3, v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->kanatoRomaji([CI[C[I)I

    move-result v5

    if-nez v5, :cond_0

    .line 4353
    aget v5, v2, v6

    aput-char v6, v3, v5

    .line 4354
    aget v5, v2, v6

    if-lez v5, :cond_0

    .line 4355
    aget v5, v2, v6

    invoke-static {v3, v6, v5}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4348
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4360
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private doConversion()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3180
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3182
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/16 v3, 0xff

    invoke-virtual {v2, v3, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->wordSelected(IZ)V

    .line 3184
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->startRangeConversion(I[CI)Z

    .line 3186
    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 3188
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3190
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandlistWhenRC(I)Z

    .line 3192
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateInlineWhenRC(I)Z

    .line 3197
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private doConversionEx()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3202
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->startRangeConversion(I[CI)Z

    .line 3203
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->wordSelected(IZ)V

    .line 3205
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 3207
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3209
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandlistWhenRC(I)Z

    .line 3211
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateInlineWhenRC(I)Z

    .line 3213
    return v3
.end method

.method private endInputSession()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->breakContext()V

    .line 606
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->finishSession()V

    .line 608
    :cond_0
    return-void
.end method

.method private expandRangeConversion()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 3235
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCReadingDivInfo:[I

    aget v0, v0, v1

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 3246
    :goto_0
    return v4

    .line 3238
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3240
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->startRangeConversion(I[CI)Z

    .line 3242
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandlistWhenRC(I)Z

    .line 3244
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateInlineWhenRC(I)Z

    goto :goto_0
.end method

.method private extractWordBeforeCursor(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "seqBeforCusor"    # Ljava/lang/CharSequence;
    .param p2, "word"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2043
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2045
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 2048
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 2051
    add-int/lit8 v0, v3, -0x1

    .local v0, "end":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2053
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2055
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2059
    :cond_0
    if-gez v0, :cond_2

    .line 2086
    .end local v0    # "end":I
    :cond_1
    :goto_1
    return-void

    .line 2065
    .restart local v0    # "end":I
    :cond_2
    const/4 v2, 0x1

    .line 2068
    .local v2, "valideSeq":Z
    add-int/lit8 v1, v0, -0x1

    .local v1, "start":I
    :goto_2
    if-ltz v1, :cond_9

    .line 2070
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2072
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v6, 0x3000

    if-lt v3, v6, :cond_3

    const v6, 0x9fa5

    if-le v3, v6, :cond_8

    :cond_3
    const v6, 0xe000

    if-lt v3, v6, :cond_4

    const v6, 0xeeb1

    if-le v3, v6, :cond_8

    :cond_4
    const v6, 0xf3a0

    if-lt v3, v6, :cond_5

    const v6, 0xf7ed

    if-le v3, v6, :cond_8

    :cond_5
    const v6, 0xef50

    if-lt v3, v6, :cond_6

    const v6, 0xfe6b

    if-le v3, v6, :cond_8

    :cond_6
    const v6, 0xff01

    if-lt v3, v6, :cond_7

    const v6, 0xff5e

    if-le v3, v6, :cond_8

    :cond_7
    const v6, 0xffe0

    if-lt v3, v6, :cond_a

    const v6, 0xffe5

    if-gt v3, v6, :cond_a

    :cond_8
    move v3, v4

    :goto_3
    if-nez v3, :cond_b

    move v3, v4

    :goto_4
    if-nez v3, :cond_c

    .line 2075
    const/4 v2, 0x0

    .line 2081
    :cond_9
    if-eqz v2, :cond_1

    .line 2083
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v0, 0x1

    invoke-interface {p1, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_a
    move v3, v5

    .line 2072
    goto :goto_3

    :cond_b
    move v3, v5

    goto :goto_4

    .line 2068
    :cond_c
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method private flushCurrWordAndClearWCL()V
    .locals 1

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 1203
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->clearPhraseListView()V

    .line 1206
    :cond_0
    return-void
.end method

.method private getRomajiBytesOfCurrentPos(I)I
    .locals 1
    .param p1, "iPos"    # I

    .prologue
    .line 3414
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCursorPosCount:I

    if-ge p1, v0, :cond_0

    .line 3416
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRomajiDivInfoOfInline:[I

    aget v0, v0, p1

    .line 3419
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRomajiPosByCursorPos(I)I
    .locals 3
    .param p1, "iCursorPos"    # I

    .prologue
    .line 3402
    const/4 v1, 0x0

    .line 3404
    .local v1, "inlinePos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCursorPosCount:I

    if-ge v0, v2, :cond_0

    .line 3406
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRomajiDivInfoOfInline:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 3404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3409
    :cond_0
    return v1
.end method

.method private handleAutoPunct()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2021
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 2023
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 2025
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->jp_period_symbol:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2028
    .local v0, "autopunct":Ljava/lang/CharSequence;
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2029
    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2030
    invoke-interface {v1, v0, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2031
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2033
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendKeyChar(C)V

    .line 2035
    .end local v0    # "autopunct":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method private handleFlickerPopup()V
    .locals 15

    .prologue
    .line 974
    sget-object v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "handleFlickerPopup()... japaneseFlickerKeyIndex: "

    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 977
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isValidFlickerRelativeIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_1

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 983
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v1, 0x0

    aget v7, v0, v1

    .line 984
    .local v7, "basecode":I
    const/4 v14, 0x0

    .line 986
    .local v14, "textcode":I
    const/16 v0, 0x3084

    if-ne v7, v0, :cond_5

    .line 987
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 990
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    div-int/lit8 v1, v1, 0x2

    aget v14, v0, v1

    .line 998
    :cond_3
    :goto_1
    int-to-char v0, v14

    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->isHiraIndex(C)I

    move-result v6

    .line 1000
    .local v6, "HiraIndex":I
    const/4 v10, 0x1

    .line 1002
    .local v10, "isHiraBig":Z
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    if-nez v0, :cond_6

    .line 1004
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v9

    .line 1006
    .local v9, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v9, :cond_0

    .line 1008
    invoke-interface {v9}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1010
    int-to-char v0, v14

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendKeyChar(C)V

    .line 1011
    invoke-interface {v9}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 994
    .end local v6    # "HiraIndex":I
    .end local v9    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v10    # "isHiraBig":Z
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    aget v14, v0, v1

    goto :goto_1

    .line 1016
    .restart local v6    # "HiraIndex":I
    .restart local v10    # "isHiraBig":Z
    :cond_6
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    if-eqz v0, :cond_7

    .line 1018
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 1020
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 1023
    :cond_7
    const/16 v0, 0x100

    if-lt v6, v0, :cond_8

    const/16 v0, 0x200

    if-lt v6, v0, :cond_9

    .line 1025
    :cond_8
    const/4 v10, 0x0

    .line 1028
    :cond_9
    const/16 v0, 0x3041

    if-lt v14, v0, :cond_0

    const/16 v0, 0x30fc

    if-gt v14, v0, :cond_0

    if-eqz v10, :cond_0

    .line 1030
    const/16 v0, 0x40

    new-array v11, v0, [C

    .local v11, "kana":[C
    const/16 v0, 0x40

    new-array v13, v0, [C

    .line 1032
    .local v13, "romaji":[C
    const/4 v0, 0x1

    new-array v12, v0, [I

    .line 1034
    .local v12, "plen":[I
    const/4 v0, 0x0

    int-to-char v1, v14

    aput-char v1, v11, v0

    .line 1036
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v1, 0x1

    invoke-virtual {v0, v11, v1, v13, v12}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->kanatoRomaji([CI[C[I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    const/16 v0, 0x3093

    if-ne v14, v0, :cond_a

    .line 1040
    const/4 v0, 0x1

    const/16 v1, 0x6e

    aput-char v1, v13, v0

    .line 1041
    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-char v1, v13, v0

    .line 1042
    const/4 v0, 0x0

    const/4 v1, 0x2

    aput v1, v12, v0

    .line 1046
    :cond_a
    const/4 v0, 0x0

    aget v0, v12, v0

    const/4 v1, 0x0

    aput-char v1, v13, v0

    .line 1048
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v0

    const/4 v1, 0x0

    aget v1, v12, v1

    add-int/2addr v0, v1

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 1050
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    const/4 v0, 0x0

    aget v0, v12, v0

    if-ge v8, v0, :cond_c

    .line 1052
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v1, 0x0

    aget-char v2, v13, v8

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1054
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    int-to-char v1, v14

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/EditState;->characterTyped(C)V

    .line 1050
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1062
    :cond_c
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineKanaWord:Ljava/lang/String;

    .line 1064
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->UpdateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_0
.end method

.method private handlePrediction(Landroid/graphics/Point;I[IJ)V
    .locals 18
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "eventTime"    # J

    .prologue
    .line 2111
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    .line 2321
    :cond_0
    :goto_0
    return-void

    .line 2116
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2117
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 2120
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 2122
    const/4 v10, 0x0

    .local v10, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 2127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v2, :cond_0

    .line 2128
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    .line 2129
    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "handlePrediction...primaryCode: "

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " getKeyCount(): "

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2130
    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "handlePrediction...mInlineWord: "

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    .line 2134
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeyboardInput()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->convertText2Romaji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2136
    .local v15, "romajiStr":Ljava/lang/String;
    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "handlePrediction...romajiStr: "

    const-string v4, "length: "

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v15, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2137
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    .line 2141
    .end local v15    # "romajiStr":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 2143
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 2146
    :cond_4
    const/16 v2, 0x30fc

    move/from16 v0, p2

    if-eq v2, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v2

    if-eqz v2, :cond_9

    move/from16 v0, p2

    int-to-char v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isWordAcceptingSymbol(C)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2148
    :cond_5
    const/16 v2, 0x40

    new-array v11, v2, [C

    .local v11, "kana":[C
    const/16 v2, 0x40

    new-array v14, v2, [C

    .line 2150
    .local v14, "romaji":[C
    const/4 v2, 0x1

    new-array v13, v2, [I

    .line 2152
    .local v13, "plen":[I
    const/4 v2, 0x0

    move/from16 v0, p2

    int-to-char v3, v0

    aput-char v3, v11, v2

    .line 2154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v3, 0x1

    invoke-virtual {v2, v11, v3, v14, v13}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->kanatoRomaji([CI[C[I)I

    move-result v2

    if-nez v2, :cond_0

    .line 2156
    const/16 v2, 0x3093

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    .line 2158
    const/4 v2, 0x0

    const/16 v3, 0x6e

    aput-char v3, v14, v2

    .line 2159
    const/4 v2, 0x1

    const/16 v3, 0x6e

    aput-char v3, v14, v2

    .line 2160
    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v13, v2

    .line 2163
    :cond_6
    const/4 v2, 0x0

    aget v2, v13, v2

    const/4 v3, 0x0

    aput-char v3, v14, v2

    .line 2165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v2

    const/4 v3, 0x0

    aget v3, v13, v3

    add-int/2addr v2, v3

    const/16 v3, 0x20

    if-gt v2, v3, :cond_0

    .line 2167
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    const/4 v2, 0x0

    aget v2, v13, v2

    if-ge v9, v2, :cond_8

    .line 2169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v3, 0x0

    invoke-static {v14, v9}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    move/from16 v0, p2

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/EditState;->characterTyped(C)V

    .line 2167
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2175
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineKanaWord:Ljava/lang/String;

    .line 2177
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->UpdateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_0

    .line 2181
    .end local v9    # "i":I
    .end local v11    # "kana":[C
    .end local v13    # "plen":[I
    .end local v14    # "romaji":[C
    :cond_9
    move/from16 v0, p2

    int-to-char v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isWordAcceptingSymbol(C)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    move/from16 v0, p2

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/EditState;->characterTyped(C)V

    .line 2188
    const/4 v2, 0x2

    new-array v8, v2, [C

    .line 2190
    .local v8, "char1":[C
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2192
    .local v12, "newSpanBuffer":Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x0

    move/from16 v0, p2

    int-to-char v3, v0

    aput-char v3, v8, v2

    .line 2193
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-char v3, v8, v2

    .line 2195
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v8, v2, v3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v2, :cond_e

    .line 2199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2205
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v16

    .line 2209
    .local v16, "wordCandidatesCount":I
    if-ltz v16, :cond_11

    .line 2211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 2224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x121

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v2

    if-nez v2, :cond_f

    .line 2229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKNextWordPredictionSpan:Landroid/text/style/BackgroundColorSpan;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x121

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGNextWordPredictionSpan:Landroid/text/style/ForegroundColorSpan;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x121

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2249
    :cond_a
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMultitapping()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x121

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x121

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2264
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2269
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mUpdatingInline:Z

    .line 2271
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v10

    .line 2273
    if-eqz v10, :cond_c

    .line 2275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    const/4 v3, 0x1

    invoke-interface {v10, v2, v3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2278
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivateKlingonMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_d

    .line 2280
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "QoS \'oH \'oHbe\' chenmoHta\'"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2285
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isCommaOrPeriod(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2287
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->UpdateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_0

    .line 2202
    .end local v16    # "wordCandidatesCount":I
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    goto/16 :goto_2

    .line 2238
    .restart local v16    # "wordCandidatesCount":I
    :cond_f
    if-lez v16, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->isInlineKnown()Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v2, :cond_10

    .line 2241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKWordErrorSpan:Landroid/text/style/BackgroundColorSpan;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x121

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGWordErrorSpan:Landroid/text/style/ForegroundColorSpan;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x121

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    .line 2245
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 2247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2296
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    goto/16 :goto_0

    .line 2301
    .end local v8    # "char1":[C
    .end local v12    # "newSpanBuffer":Landroid/text/SpannableStringBuilder;
    .end local v16    # "wordCandidatesCount":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x20

    if-gt v2, v3, :cond_0

    .line 2303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    move/from16 v0, p2

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/EditState;->characterTyped(C)V

    .line 2314
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineKanaWord:Ljava/lang/String;

    .line 2317
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->UpdateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_0
.end method

.method private handlePunctOrSymbol(I)V
    .locals 5
    .param p1, "primaryCode"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2357
    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    .line 2359
    invoke-virtual {p0, v2, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleSpace(ZI)Z

    .line 2391
    :goto_0
    return-void

    .line 2363
    :cond_0
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2365
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1, v4}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setContext([C)V

    .line 2368
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->composingState()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 2370
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2371
    .local v0, "selectedWord":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2372
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2373
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->cleanInlineWordSpanAndFlush()V

    .line 2375
    :cond_4
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrWordAndClearWCL()V

    .line 2384
    .end local v0    # "selectedWord":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 2387
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 2388
    int-to-char v1, p1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendKeyChar(C)V

    .line 2390
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    goto :goto_0

    .line 2377
    .restart local v0    # "selectedWord":Ljava/lang/String;
    :cond_5
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_1

    .line 2381
    .end local v0    # "selectedWord":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_1
.end method

.method private handleWhiteSpaces(I)V
    .locals 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 2325
    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    .line 2327
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleSpace(ZI)Z

    .line 2333
    :goto_0
    return-void

    .line 2332
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handlePunctOrSymbol(I)V

    goto :goto_0
.end method

.method private hasActiveKeySeq()Z
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->multitapIsInvalid()Z

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

.method private hasInputQueue()Z
    .locals 1

    .prologue
    .line 4920
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

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

.method private hideGridCandidatesView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3016
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mContextWindowShowing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3017
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJpWordPageContainer:Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->hideContextWindow(Landroid/view/View;)V

    .line 3018
    iput-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mContextWindowShowing:Z

    .line 3019
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJpWordPageContainer:Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->setMinimumHeight(I)V

    .line 3021
    :cond_0
    return-void
.end method

.method private initSegmentationPopup()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3965
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3992
    :cond_0
    :goto_0
    return-void

    .line 3968
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationView:Landroid/view/View;

    if-nez v1, :cond_4

    .line 3970
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3971
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3973
    sget v1, Lcom/nuance/swype/input/R$layout;->japanese_segmentation_popup:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationView:Landroid/view/View;

    .line 3974
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationView:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->leftArrow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->leftArrowButton:Landroid/view/View;

    .line 3975
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->leftArrowButton:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 3976
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->leftArrowButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3978
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationView:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->rightArrow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->rightArrowButton:Landroid/view/View;

    .line 3979
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->rightArrowButton:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 3980
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->rightArrowButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3982
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationView:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->closeArrow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->closeSegmentationButton:Landroid/view/View;

    .line 3983
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->closeSegmentationButton:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 3984
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->closeSegmentationButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3987
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 3988
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    .line 3989
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3990
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private isCharactersAllKana(Ljava/lang/String;)Z
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3362
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 3374
    :cond_0
    :goto_0
    return v1

    .line 3366
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 3368
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->isHiragana(C)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->isKatakana(C)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x30fc

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3366
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3374
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isCommaOrPeriod(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 2336
    const/16 v0, 0x3001

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3002

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLetterAndDigit(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 3379
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 3381
    .local v2, "length":I
    if-gtz v2, :cond_1

    .line 3398
    :cond_0
    :goto_0
    return v3

    .line 3386
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 3388
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3390
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3386
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3398
    .end local v0    # "ch":C
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isRomajiAlphaCharacterConverting(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 1196
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-ne v0, v1, :cond_2

    const/16 v0, 0x61

    if-gt v0, p1, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x30fc

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSegmentationPopupShowing()Z
    .locals 1

    .prologue
    .line 2817
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWordAcceptingSymbol(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 840
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isDiacriticMark(C)Z

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

.method private loadSettings()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2566
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getAutoCorrection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->isNameField()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2568
    const/4 v1, 0x2

    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->correctionLevel:I

    .line 2571
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTraceInputSuggestionOn:Z

    .line 2574
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isRecaptureEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRecaptureOn:Z

    .line 2576
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isNextWordPredictionEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mNextWordPredictionOn:Z

    .line 2578
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDefaultPortraitLayoutOptions()I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->portraitInputOptions:I

    .line 2580
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->portraitInputOptions:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_6

    .line 2581
    const/16 v0, 0x900

    .line 2585
    .local v0, "layoutId":I
    :goto_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    if-eq v1, v0, :cond_1

    .line 2587
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 2588
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->getNextLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    .line 2589
    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    .line 2591
    :cond_1
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->portraitInputOptions:I

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->portraitInputOptions:I

    const/16 v4, 0x11

    if-eq v1, v4, :cond_7

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadMultitapInputSupported:Z

    .line 2593
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->portraitInputOptions:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->portraitInputOptions:I

    const/16 v4, 0x10

    if-eq v1, v4, :cond_2

    move v3, v2

    :cond_2
    iput-boolean v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadFlickrInputSupported:Z

    .line 2595
    iput-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mNavOn:Z

    .line 2596
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$dimen;->key_height_5row:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerKeyWidth:I

    .line 2597
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerKeyWidth:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerMiddleKeyRadius:D

    .line 2598
    return-void

    .end local v0    # "layoutId":I
    :cond_3
    move v1, v3

    .line 2571
    goto/16 :goto_0

    :cond_4
    move v1, v3

    .line 2574
    goto :goto_1

    :cond_5
    move v1, v3

    .line 2576
    goto :goto_2

    .line 2583
    :cond_6
    const/16 v0, 0x600

    .restart local v0    # "layoutId":I
    goto :goto_3

    :cond_7
    move v1, v3

    .line 2591
    goto :goto_4
.end method

.method private moveHighlightToNearCandidate(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 4708
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4723
    :cond_0
    :goto_0
    return v0

    .line 4712
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4717
    const/16 v0, 0x16

    if-ne p1, v0, :cond_3

    .line 4718
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->rightArrowButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->onClick(Landroid/view/View;)V

    .line 4723
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 4719
    :cond_3
    const/16 v0, 0x15

    if-ne p1, v0, :cond_2

    .line 4720
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->leftArrowButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->onClick(Landroid/view/View;)V

    goto :goto_1
.end method

.method private moveHighlightToNearCandidateSoftKeyboard(I)Z
    .locals 14
    .param p1, "keyCode"    # I

    .prologue
    const/16 v13, 0x121

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3424
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v7, v8

    .line 3532
    :goto_0
    return v7

    .line 3428
    :cond_1
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v7

    if-nez v7, :cond_2

    move v7, v8

    .line 3430
    goto :goto_0

    .line 3433
    :cond_2
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 3435
    .local v6, "wordCandidatesCount":I
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 3437
    .local v3, "isRight":Ljava/lang/Boolean;
    const/16 v7, 0x16

    if-eq p1, v7, :cond_3

    const/16 v7, 0x14

    if-ne p1, v7, :cond_b

    .line 3438
    :cond_3
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 3443
    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    add-int/lit8 v10, v6, -0x1

    if-lt v7, v10, :cond_5

    .line 3444
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3445
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-virtual {v7, v10, v8}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 3446
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->syncCandidateDisplayStyleToMode()V

    .line 3449
    :cond_5
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 3451
    .local v0, "OldSelectIndex":I
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 3452
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3459
    :goto_2
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-gez v7, :cond_6

    .line 3461
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3464
    :cond_6
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3466
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 3468
    .local v5, "word":Ljava/lang/CharSequence;
    if-eqz v5, :cond_8

    .line 3470
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3472
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    iget-object v11, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v10, v11}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 3474
    instance-of v7, v5, Landroid/text/SpannableStringBuilder;

    if-eqz v7, :cond_7

    move-object v7, v5

    .line 3476
    check-cast v7, Landroid/text/SpannableStringBuilder;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mColorRecommended:Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v7, v10, v8, v11, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v7, v5

    .line 3477
    check-cast v7, Landroid/text/SpannableStringBuilder;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mExactWordSpan:Landroid/text/style/StyleSpan;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v7, v10, v8, v11, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3480
    :cond_7
    if-ltz v0, :cond_8

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-eq v0, v7, :cond_8

    .line 3482
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 3484
    .local v4, "oldword":Ljava/lang/CharSequence;
    if-eqz v4, :cond_8

    .line 3486
    instance-of v7, v4, Landroid/text/SpannableStringBuilder;

    if-eqz v7, :cond_8

    .line 3488
    check-cast v4, Landroid/text/SpannableStringBuilder;

    .end local v4    # "oldword":Ljava/lang/CharSequence;
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3494
    :cond_8
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->syncCandidateDisplayStyleToMode()V

    .line 3496
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isKeyOutofRightBound(I)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 3498
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 3500
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollNext()V

    .line 3509
    :cond_9
    :goto_3
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 3512
    .local v1, "defaultSpanNum":I
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_a

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    aget v7, v7, v8

    if-lez v7, :cond_a

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    aget v7, v7, v8

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    if-gt v7, v10, :cond_a

    .line 3514
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v11, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    aget v11, v11, v8

    iget-object v12, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3517
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 3519
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3521
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v11, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    invoke-virtual {v7, v10, v8, v11, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3523
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKRangeConversionDefaultSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v7, v10, v8, v1, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3526
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKRemainSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v11, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v7, v10, v1, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3528
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateInlineWhenRC(I)Z

    .line 3529
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v2, v7, v9}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3531
    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    move v7, v9

    .line 3532
    goto/16 :goto_0

    .line 3439
    .end local v0    # "OldSelectIndex":I
    .end local v1    # "defaultSpanNum":I
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v5    # "word":Ljava/lang/CharSequence;
    :cond_b
    const/16 v7, 0x15

    if-eq p1, v7, :cond_c

    const/16 v7, 0x13

    if-ne p1, v7, :cond_4

    .line 3440
    :cond_c
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_1

    .line 3453
    .restart local v0    # "OldSelectIndex":I
    :cond_d
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_e

    .line 3454
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto/16 :goto_2

    :cond_e
    move v7, v8

    .line 3456
    goto/16 :goto_0

    .line 3502
    .restart local v5    # "word":Ljava/lang/CharSequence;
    :cond_f
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isKeyOutofLeftBound(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3504
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 3506
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollPrev()V

    goto/16 :goto_3
.end method

.method private moveHighlightToVisible()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3537
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMoveHighlightForResize:Z

    if-nez v0, :cond_0

    .line 3563
    :goto_0
    return-void

    .line 3540
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3541
    :cond_1
    iput-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMoveHighlightForResize:Z

    goto :goto_0

    .line 3544
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 3545
    iput-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMoveHighlightForResize:Z

    goto :goto_0

    .line 3548
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_4

    .line 3549
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3552
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isKeyOutofRightBound(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3553
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 3554
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollRightToHighLight(I)V

    .line 3560
    :cond_5
    :goto_1
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 3561
    iput-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMoveHighlightForResize:Z

    goto :goto_0

    .line 3556
    :cond_6
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isKeyOutofLeftBound(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3557
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 3558
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollLeftToHighlight(I)V

    goto :goto_1
.end method

.method private moveHightlightToCenterOrLeftRight(I)Z
    .locals 11
    .param p1, "keyCode"    # I

    .prologue
    const/16 v10, 0x121

    const/16 v9, 0x16

    const/16 v8, 0x15

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4727
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4794
    :cond_0
    :goto_0
    return v3

    .line 4732
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v5

    if-eqz v5, :cond_0

    .line 4736
    const/16 v5, 0x14

    if-ne p1, v5, :cond_6

    .line 4737
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getCenterCandidateIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4746
    :goto_1
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 4747
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-gez v5, :cond_8

    .line 4748
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4752
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4754
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 4756
    .local v2, "word":Ljava/lang/CharSequence;
    if-eqz v2, :cond_5

    .line 4757
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->enableHighlight()V

    .line 4758
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v6, v7}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 4760
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->syncCandidateDisplayStyleToMode()V

    .line 4762
    if-ne p1, v9, :cond_9

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isKeyOutofRightBound(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4764
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 4766
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollNext()V

    .line 4775
    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4776
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 4777
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4778
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 4779
    .local v1, "span":Landroid/text/style/UnderlineSpan;
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v1, v3, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4781
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v1, v3, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4784
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4786
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_4

    .line 4787
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4788
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 4789
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4792
    :cond_4
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v1    # "span":Landroid/text/style/UnderlineSpan;
    :cond_5
    move v3, v4

    .line 4794
    goto/16 :goto_0

    .line 4738
    .end local v2    # "word":Ljava/lang/CharSequence;
    :cond_6
    if-ne p1, v8, :cond_7

    .line 4739
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto/16 :goto_1

    .line 4740
    :cond_7
    if-ne p1, v9, :cond_0

    .line 4741
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/16 :goto_1

    .line 4749
    :cond_8
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 4750
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_2

    .line 4768
    .restart local v2    # "word":Ljava/lang/CharSequence;
    :cond_9
    if-ne p1, v8, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isKeyOutofLeftBound(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4770
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 4772
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollPrev()V

    goto/16 :goto_3
.end method

.method private moveHightlightToNearPage(I)Z
    .locals 13
    .param p1, "keyCode"    # I

    .prologue
    .line 4799
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4800
    :cond_0
    const/4 v8, 0x0

    .line 4916
    :goto_0
    return v8

    .line 4803
    :cond_1
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v8

    if-nez v8, :cond_2

    .line 4805
    const/4 v8, 0x0

    goto :goto_0

    .line 4808
    :cond_2
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 4810
    .local v7, "wordCandidatesCount":I
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 4812
    .local v4, "isDown":Ljava/lang/Boolean;
    const/16 v8, 0x14

    if-ne p1, v8, :cond_4

    .line 4813
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 4818
    :cond_3
    :goto_1
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 4820
    .local v0, "OldSelectIndex":I
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 4822
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    add-int/lit8 v9, v7, -0x1

    if-ne v8, v9, :cond_5

    .line 4823
    const/4 v8, 0x1

    goto :goto_0

    .line 4814
    .end local v0    # "OldSelectIndex":I
    :cond_4
    const/16 v8, 0x13

    if-ne p1, v8, :cond_3

    .line 4815
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    .line 4825
    .restart local v0    # "OldSelectIndex":I
    :cond_5
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getFirstCandidateIndexInNextOrPreviousPage(Z)I

    move-result v3

    .line 4826
    .local v3, "index":I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_6

    .line 4827
    const/4 v8, 0x1

    goto :goto_0

    .line 4829
    :cond_6
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4830
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v9, v9, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    aget v9, v9, v10

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v10}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getLeftDistance()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateScrollPosition(I)V

    .line 4843
    :goto_2
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-gez v8, :cond_7

    .line 4845
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4848
    :cond_7
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4850
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 4852
    .local v6, "word":Ljava/lang/CharSequence;
    if-eqz v6, :cond_9

    .line 4854
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4856
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8, v9, v10}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 4858
    instance-of v8, v6, Landroid/text/SpannableStringBuilder;

    if-eqz v8, :cond_8

    move-object v8, v6

    .line 4860
    check-cast v8, Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mColorRecommended:Landroid/text/style/ForegroundColorSpan;

    const/4 v10, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const/16 v12, 0x121

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v8, v6

    .line 4861
    check-cast v8, Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mExactWordSpan:Landroid/text/style/StyleSpan;

    const/4 v10, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const/16 v12, 0x121

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4864
    :cond_8
    if-ltz v0, :cond_9

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-eq v0, v8, :cond_9

    .line 4866
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 4868
    .local v5, "oldword":Ljava/lang/CharSequence;
    if-eqz v5, :cond_9

    .line 4870
    instance-of v8, v5, Landroid/text/SpannableStringBuilder;

    if-eqz v8, :cond_9

    .line 4872
    check-cast v5, Landroid/text/SpannableStringBuilder;

    .end local v5    # "oldword":Ljava/lang/CharSequence;
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 4878
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->syncCandidateDisplayStyleToMode()V

    .line 4880
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isKeyOutofRightBound(I)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 4882
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 4884
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollNext()V

    .line 4893
    :cond_a
    :goto_3
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 4896
    .local v1, "defaultSpanNum":I
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_b

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    if-lez v8, :cond_b

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    if-gt v8, v9, :cond_b

    .line 4898
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4901
    :cond_b
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 4903
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 4905
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/16 v12, 0x121

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4907
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKRangeConversionDefaultSpan:Landroid/text/style/BackgroundColorSpan;

    const/4 v10, 0x0

    const/16 v11, 0x121

    invoke-virtual {v8, v9, v10, v1, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4910
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKRemainSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v8, v9, v1, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4912
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateInlineWhenRC(I)Z

    .line 4913
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    const/4 v9, 0x1

    invoke-interface {v2, v8, v9}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 4915
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 4916
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 4831
    .end local v1    # "defaultSpanNum":I
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "index":I
    .end local v6    # "word":Ljava/lang/CharSequence;
    :cond_c
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_e

    .line 4832
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getFirstCandidateIndexInNextOrPreviousPage(Z)I

    move-result v3

    .line 4833
    .restart local v3    # "index":I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_d

    .line 4834
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 4836
    :cond_d
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4838
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollPrev()V

    goto/16 :goto_2

    .line 4840
    .end local v3    # "index":I
    :cond_e
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 4886
    .restart local v3    # "index":I
    .restart local v6    # "word":Ljava/lang/CharSequence;
    :cond_f
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isKeyOutofLeftBound(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 4888
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 4890
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollPrev()V

    goto/16 :goto_3
.end method

.method private postDelayResumeSpeech()V
    .locals 4

    .prologue
    const/16 v1, 0xb

    .line 559
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 563
    return-void
.end method

.method private postToastMsg(I)V
    .locals 4
    .param p1, "msg"    # I

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->removeToastMsg(I)V

    .line 406
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 407
    return-void
.end method

.method private processSpaceKeyState(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->spaceKey()V

    .line 1938
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1940
    if-eqz p1, :cond_0

    .line 1942
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1943
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1946
    :cond_0
    return-void
.end method

.method private readStyles(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/high16 v8, -0x10000

    .line 2638
    sget v6, Lcom/nuance/swype/input/R$style;->InlineStringAlpha:I

    sget-object v7, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha:[I

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2641
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    .line 2643
    .local v4, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_6

    .line 2645
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 2647
    .local v2, "attr":I
    sget v6, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_wordErrorForegroundColor:I

    if-ne v2, v6, :cond_1

    .line 2648
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0, v2, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGWordErrorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 2643
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2649
    :cond_1
    sget v6, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_wordErrorBackgroundColor:I

    if-ne v2, v6, :cond_2

    .line 2650
    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v0, v2, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKWordErrorSpan:Landroid/text/style/BackgroundColorSpan;

    goto :goto_1

    .line 2652
    :cond_2
    sget v6, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_wordNextWordPredictionForegroundColor:I

    if-ne v2, v6, :cond_3

    .line 2653
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const v7, -0x333334

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGNextWordPredictionSpan:Landroid/text/style/ForegroundColorSpan;

    goto :goto_1

    .line 2655
    :cond_3
    sget v6, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_wordNextWordPredictionBackgroundColor:I

    if-ne v2, v6, :cond_4

    .line 2656
    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v6, v10}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKNextWordPredictionSpan:Landroid/text/style/BackgroundColorSpan;

    goto :goto_1

    .line 2658
    :cond_4
    sget v6, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_multitapForegroundColor:I

    if-ne v2, v6, :cond_5

    .line 2659
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0, v2, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    goto :goto_1

    .line 2661
    :cond_5
    sget v6, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_multitapBackgroundColor:I

    if-ne v2, v6, :cond_0

    .line 2662
    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v0, v2, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    goto :goto_1

    .line 2666
    .end local v2    # "attr":I
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2669
    sget v6, Lcom/nuance/swype/input/R$style;->WordListView:I

    sget-object v7, Lcom/nuance/swype/input/R$styleable;->WordListView:[I

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2670
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    sget v7, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateNormal:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mColorRecommended:Landroid/text/style/ForegroundColorSpan;

    .line 2672
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2675
    sget v6, Lcom/nuance/swype/input/R$style;->InlineStringJapanese:I

    sget-object v7, Lcom/nuance/swype/input/R$styleable;->InlineStringJapanese:[I

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2677
    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    sget v7, Lcom/nuance/swype/input/R$styleable;->InlineStringJapanese_convertingBackgroundColor:I

    const v8, -0xff0001

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKRangeConversionDefaultSpan:Landroid/text/style/BackgroundColorSpan;

    .line 2680
    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    sget v7, Lcom/nuance/swype/input/R$styleable;->InlineStringJapanese_remainingBackgroundColor:I

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKRemainSpan:Landroid/text/style/BackgroundColorSpan;

    .line 2682
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2684
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 2685
    .local v1, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v6, Lcom/nuance/swype/input/R$attr;->keyboardPopupBackground:I

    invoke-virtual {v1, v6}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerKeyPopupBackground:Landroid/graphics/drawable/Drawable;

    .line 2686
    sget v6, Lcom/nuance/swype/input/R$attr;->keyboardKeyFeedbackSelectedBackground:I

    invoke-virtual {v1, v6}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerKeyPopupSelectedBackground:Landroid/graphics/drawable/Drawable;

    .line 2688
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2689
    .local v5, "resources":Landroid/content/res/Resources;
    sget v6, Lcom/nuance/swype/input/R$dimen;->japanese_flicker_menu_key_text_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerKeyTextSize:I

    .line 2691
    sget v6, Lcom/nuance/swype/input/R$dimen;->key_height_5row:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerKeyHeight:I

    .line 2692
    return-void
.end method

.method private reduceRangeConversion()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3219
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCReadingDivInfo:[I

    aget v0, v0, v4

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 3230
    :goto_0
    return v4

    .line 3222
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3224
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->startRangeConversion(I[CI)Z

    .line 3226
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandlistWhenRC(I)Z

    .line 3228
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateInlineWhenRC(I)Z

    goto :goto_0
.end method

.method private removeAllMessages()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 389
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 390
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 391
    return-void
.end method

.method private removeToastMsg(I)V
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 400
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 401
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    return-void
.end method

.method private setCorrectionLevel(Ljava/lang/String;)V
    .locals 4
    .param p1, "inputMode"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x63

    .line 1964
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v0, :cond_0

    .line 1966
    const-string v0, "multitap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1968
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setAttribute(IZ)Z

    .line 1981
    :cond_0
    :goto_0
    return-void

    .line 1972
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/16 v1, 0x64

    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->correctionLevel:I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setAttribute(II)Z

    .line 1974
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/16 v1, 0x65

    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordCompletionPoint:I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setAttribute(II)Z

    .line 1976
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->autoCorrectionEnabled:Z

    invoke-virtual {v0, v3, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setAttribute(IZ)Z

    goto :goto_0
.end method

.method private setKeyboarLayoutDatabase()V
    .locals 2

    .prologue
    .line 1316
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    .line 1318
    if-eqz v0, :cond_0

    .line 1320
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x600

    if-ne v0, v1, :cond_1

    .line 1322
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setKeyboardType(I)V

    .line 1331
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-ne v0, v1, :cond_2

    .line 1325
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setKeyboardType(I)V

    goto :goto_0

    .line 1328
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setKeyboardType(I)V

    goto :goto_0
.end method

.method private setMultitapOrAmbigMode()V
    .locals 2

    .prologue
    .line 1949
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multitap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1953
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getMultitapMode(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1954
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->toggleAmbigMode()V

    .line 1955
    const-string v0, "multitap"

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setCorrectionLevel(Ljava/lang/String;)V

    .line 1960
    :cond_0
    :goto_0
    return-void

    .line 1957
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setCorrectionLevel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showGridCandidatesView(Ljava/util/List;)V
    .locals 17
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2825
    .local p1, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2945
    :cond_0
    :goto_0
    return-void

    .line 2827
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mContextWindowShowing:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 2829
    invoke-super/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->isSpeechViewShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2834
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isSegmentationPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2835
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isSegmentationPopupNeeded:Z

    .line 2836
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissSegmentationPopup()V

    .line 2839
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v4}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->getHeight()I

    move-result v4

    add-int v7, v3, v4

    .line 2840
    .local v7, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v14

    .line 2841
    .local v14, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJpWordPageContainer:Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;

    invoke-virtual {v3, v7}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->setMinimumHeight(I)V

    .line 2842
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setCandidatesViewShown(Z)V

    .line 2843
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-eq v3, v14, :cond_3

    .line 2844
    sget-object v3, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "recreate candidatesPopup....candidatesPopup.getMeasuredWidth(): "

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "keyboard width: "

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2846
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    .line 2848
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    if-nez v3, :cond_4

    .line 2850
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 2851
    .local v10, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 2853
    sget v3, Lcom/nuance/swype/input/R$layout;->candidates_popup:I

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    .line 2856
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v12, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2859
    .local v12, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v3, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2860
    const/high16 v3, -0x80000000

    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 2861
    .local v15, "widthMeasureSpec":I
    const/high16 v3, -0x80000000

    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 2862
    .local v9, "heightMeasureSpec":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v3, v15, v9}, Landroid/view/View;->measure(II)V

    .line 2864
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardViewEx;

    .line 2867
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->setDoubleBuffered(Z)V

    .line 2869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2870
    .local v8, "closeButton":Landroid/view/View;
    new-instance v3, Lcom/nuance/swype/input/japanese/JapaneseInputView$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView$2;-><init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V

    invoke-virtual {v8, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2883
    new-instance v3, Lcom/nuance/swype/input/japanese/JapaneseInputView$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView$3;-><init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V

    invoke-virtual {v8, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2902
    .end local v8    # "closeButton":Landroid/view/View;
    .end local v9    # "heightMeasureSpec":I
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15    # "widthMeasureSpec":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->scroll_view:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ScrollView;

    .line 2903
    .local v13, "scrollView":Landroid/widget/ScrollView;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 2904
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/input/KeyboardViewEx;

    .line 2906
    .local v11, "keyboardViewEx":Lcom/nuance/swype/input/KeyboardViewEx;
    invoke-virtual {v13}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setGridCandidates(Ljava/util/List;I)V

    .line 2907
    new-instance v2, Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$xml;->kbd_chinese_popup_template:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRows:Ljava/util/List;

    invoke-virtual {v13}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v6

    invoke-direct/range {v2 .. v7}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/util/List;II)V

    .line 2909
    .local v2, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    invoke-virtual {v11, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 2910
    new-instance v3, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;-><init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;Lcom/nuance/swype/input/KeyboardEx;)V

    invoke-virtual {v11, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 2941
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v5

    invoke-direct {v4, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2943
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJpWordPageContainer:Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->showContextWindow(Landroid/view/View;)V

    .line 2944
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mContextWindowShowing:Z

    goto/16 :goto_0
.end method

.method private startInputSession()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 567
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v2, :cond_3

    .line 569
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->startSession()V

    .line 571
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v1

    .line 572
    .local v1, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    sget-object v2, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v1, v2, :cond_2

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/nuance/swype/input/DatabaseConfig;->removeIncompatibleDBFiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 576
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v1

    .line 577
    sget-object v2, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v1, v2, :cond_2

    .line 579
    :cond_1
    iput-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isLDBCompatible:Z

    .line 580
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->promptUserToUpdateLanguage()V

    .line 581
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->toggleKeyboard(Z)V

    .line 584
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/16 v3, 0x65

    iget v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordCompletionPoint:I

    invoke-virtual {v2, v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setAttribute(II)Z

    .line 587
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/16 v3, 0x64

    iget v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->correctionLevel:I

    invoke-virtual {v2, v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setAttribute(II)Z

    .line 590
    iput v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastSelStart:I

    .line 591
    iput v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastSelEnd:I

    .line 592
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 594
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_3

    .line 596
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateContextBufferIfNecessary(Landroid/view/inputmethod/InputConnection;)V

    .line 599
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v1    # "status":Lcom/nuance/input/swypecorelib/XT9Status;
    :cond_3
    return-void
.end method

.method private toggleKeyboardMode()V
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->toggleSymbolKeyboard()V

    .line 1337
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->abortKey()V

    .line 1338
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setMultitapOrAmbigMode()V

    .line 1339
    return-void
.end method

.method private updateCandlistWhenRC(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 3295
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getRangeConvCandidateList(Landroid/text/SpannableStringBuilder;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    .line 3297
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3299
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateWordListeView(Ljava/util/List;IZ)V

    .line 3302
    :cond_0
    return v2
.end method

.method private updateContextBufferIfNecessary(Landroid/view/inputmethod/InputConnection;)V
    .locals 3
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 2090
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v1

    if-nez v1, :cond_0

    .line 2092
    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2094
    .local v0, "seqBeforeCursor":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2096
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->extractWordBeforeCursor(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 2098
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 2100
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setContext([C)V

    .line 2107
    .end local v0    # "seqBeforeCursor":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 2103
    .restart local v0    # "seqBeforeCursor":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->breakContext()V

    goto :goto_0
.end method

.method private updateInlineWhenRC(I)Z
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v8, 0x121

    const/4 v3, 0x0

    .line 3307
    const/16 v5, 0x100

    new-array v2, v5, [C

    .line 3309
    .local v2, "phrasebuf":[C
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCReadingDivInfo:[I

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    invoke-virtual {v5, p1, v6, v2, v7}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getRangeConvertedPhrase(I[I[C[I)I

    move-result v1

    .line 3311
    .local v1, "phraseLen":I
    if-gtz v1, :cond_0

    .line 3313
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3315
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3317
    const-string v4, ""

    iput-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineTextBak:Ljava/lang/CharSequence;

    .line 3357
    :goto_0
    return v3

    .line 3322
    :cond_0
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3324
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3326
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-static {v2, v3, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3328
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3330
    const-string v5, ""

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineTextBak:Ljava/lang/CharSequence;

    .line 3332
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    aget v5, v5, v3

    if-eqz v5, :cond_1

    .line 3334
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    aget v5, v5, v3

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 3336
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKRangeConversionDefaultSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    aget v7, v7, v3

    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3338
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKRemainSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    aget v7, v7, v3

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3340
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    aget v3, v6, v3

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineTextBak:Ljava/lang/CharSequence;

    .line 3348
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3350
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    .line 3352
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3353
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3354
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_2
    move v3, v4

    .line 3357
    goto :goto_0

    .line 3344
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKRangeConversionDefaultSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method

.method private updateWordListeView(Ljava/util/List;IZ)V
    .locals 1
    .param p2, "defaultWordIndex"    # I
    .param p3, "bShowHighlight"    # Z
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
    .line 333
    .local p1, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p3, :cond_0

    .line 335
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->enableHighlight()V

    .line 341
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 343
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->syncCandidateDisplayStyleToMode()V

    .line 344
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->disableHighlight()V

    goto :goto_0
.end method


# virtual methods
.method public addDigitsFromUILayer(Ljava/lang/String;)Z
    .locals 8
    .param p1, "inlineWord"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/16 v7, 0x40

    const/4 v4, 0x0

    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_0

    .line 327
    :goto_0
    return v4

    .line 303
    :cond_0
    new-array v0, v7, [C

    .line 307
    .local v0, "charsin":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    if-ge v3, v7, :cond_1

    .line 309
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v0, v3

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 312
    :cond_1
    aget-char v6, v0, v4

    invoke-static {v6}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->isHiraIndex(C)I

    move-result v6

    if-lez v6, :cond_2

    .line 314
    new-array v1, v7, [C

    .line 315
    .local v1, "charsout":[C
    new-array v2, v5, [I

    .line 316
    .local v2, "dlen":[I
    invoke-static {v0, v3, v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->convertHira2DigitalFull([CI[C[I)Z

    .line 317
    aget v6, v2, v4

    invoke-static {v1, v4, v6}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->addWordtoList(Ljava/lang/String;)V

    .line 320
    new-array v1, v7, [C

    .line 321
    new-array v2, v5, [I

    .line 322
    invoke-static {v0, v3, v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->convertHira2Digital([CI[C[I)Z

    .line 323
    aget v6, v2, v4

    invoke-static {v1, v4, v6}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->addWordtoList(Ljava/lang/String;)V

    .end local v1    # "charsout":[C
    .end local v2    # "dlen":[I
    :cond_2
    move v4, v5

    .line 327
    goto :goto_0
.end method

.method protected addWordtoList(Ljava/lang/String;)V
    .locals 10
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 260
    const/4 v1, 0x0

    .line 262
    .local v1, "found":Z
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 263
    .local v4, "nListSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 265
    .local v5, "nWordLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 267
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 269
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v7, v5, :cond_3

    .line 271
    const/4 v3, 0x0

    .line 273
    .local v3, "l":I
    :goto_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_0

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_0

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 278
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v3, v7, :cond_3

    .line 280
    const/4 v1, 0x1

    .line 286
    .end local v0    # "cs":Ljava/lang/CharSequence;
    .end local v3    # "l":I
    :cond_1
    if-nez v1, :cond_2

    .line 288
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 290
    .local v6, "newSpanBuffer":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v7, v8, v9}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 292
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 294
    .end local v6    # "newSpanBuffer":Landroid/text/SpannableStringBuilder;
    :cond_2
    return-void

    .line 265
    .restart local v0    # "cs":Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected bufferDrawTrace(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1280
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1284
    :goto_0
    return-void

    .line 1283
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->bufferDrawTrace(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected calculateDirectionFlickerPopup(II)I
    .locals 10
    .param p1, "verLen"    # I
    .param p2, "horLen"    # I

    .prologue
    .line 4208
    const/4 v2, 0x0

    .line 4209
    .local v2, "dir":I
    mul-int v3, p2, p2

    mul-int v6, p1, p1

    add-int/2addr v3, v6

    int-to-double v0, v3

    .line 4210
    .local v0, "dimenSquare":D
    iget-wide v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerMiddleKeyRadius:D

    iget-wide v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerMiddleKeyRadius:D

    mul-double v4, v6, v8

    .line 4211
    .local v4, "radiusSquare":D
    cmpg-double v3, v0, v4

    if-gtz v3, :cond_1

    .line 4212
    const/4 v2, 0x0

    .line 4227
    :cond_0
    :goto_0
    sget-object v3, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "calculateDirectionFlickerPopup()... dir: "

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4228
    return v2

    .line 4213
    :cond_1
    const-wide v6, 0x3ffccccccccccccdL    # 1.8

    mul-double/2addr v6, v4

    cmpg-double v3, v0, v6

    if-gtz v3, :cond_2

    .line 4214
    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 4215
    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    goto :goto_0

    .line 4217
    :cond_2
    if-gez p2, :cond_3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-lt v3, v6, :cond_3

    .line 4218
    const/4 v2, 0x1

    goto :goto_0

    .line 4219
    :cond_3
    if-gez p1, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v3, v6, :cond_4

    .line 4220
    const/4 v2, 0x2

    goto :goto_0

    .line 4221
    :cond_4
    if-lez p2, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lt p2, v3, :cond_5

    .line 4222
    const/4 v2, 0x3

    goto :goto_0

    .line 4224
    :cond_5
    const/4 v2, 0x4

    goto :goto_0
.end method

.method protected changeKeyboardMode()V
    .locals 5

    .prologue
    .line 1785
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrWordAndClearWCL()V

    .line 1786
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 1787
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 1789
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1792
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v1, :cond_1

    .line 1794
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 1795
    .local v0, "inputMode":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4, v0}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 1797
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 1805
    .end local v0    # "inputMode":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1801
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->toggleSymbolKeyboard()V

    .line 1802
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setMultitapOrAmbigMode()V

    .line 1803
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_0
.end method

.method protected checkMultiTap(JI)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "keyIndex"    # I

    .prologue
    .line 224
    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-virtual {p0, p3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 230
    .local v0, "a":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_0

    .line 233
    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadMultitapInputSupported:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isCharactersAllKana(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    :cond_2
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTapCount:I

    if-ltz v1, :cond_3

    .line 239
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 241
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    if-eqz v1, :cond_3

    .line 243
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 245
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 250
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->checkMultiTap(JI)V

    goto :goto_0

    .line 233
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected clearAllKeys()V
    .locals 2

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    .line 2543
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2544
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2546
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    .line 2547
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2548
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2549
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2551
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v0, :cond_2

    .line 2552
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearAllKeys()Z

    .line 2554
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineKanaWord:Ljava/lang/String;

    .line 2555
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 2556
    return-void
.end method

.method public clearCurrentActiveWord()V
    .locals 1

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 478
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 479
    return-void
.end method

.method protected clearKeyboardState()V
    .locals 0

    .prologue
    .line 3720
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->clearKeyboardState()V

    .line 3721
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissJapanesePopup()V

    .line 3722
    return-void
.end method

.method protected clearSuggestions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 349
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-nez v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 354
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateWordListeView(Ljava/util/List;IZ)V

    goto :goto_0
.end method

.method public confirmSelectedWordWhenConverting(I)Z
    .locals 14
    .param p1, "index"    # I

    .prologue
    const/16 v2, 0x40

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 3251
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->confirmRangeConvWord(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v6, v12

    .line 3253
    .local v6, "bFinish":Z
    :goto_0
    if-nez v6, :cond_4

    .line 3255
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3257
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineTextBak:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3259
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineTextBak:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3262
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearAllKeys()Z

    .line 3264
    new-array v9, v2, [C

    .line 3265
    .local v9, "kana":[C
    new-array v11, v2, [C

    .line 3267
    .local v11, "romaji":[C
    new-array v10, v13, [I

    .line 3269
    .local v10, "plen":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 3271
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    aput-char v0, v9, v12

    .line 3273
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0, v9, v13, v11, v10}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->kanatoRomaji([CI[C[I)I

    move-result v0

    if-nez v0, :cond_2

    .line 3275
    aget v0, v10, v12

    aput-char v12, v11, v0

    .line 3277
    const/4 v8, 0x0

    .local v8, "ii":I
    :goto_2
    aget v0, v10, v12

    if-ge v8, v0, :cond_2

    .line 3279
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v1, 0x0

    aget-char v2, v11, v8

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    .line 3277
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v6    # "bFinish":Z
    .end local v7    # "i":I
    .end local v8    # "ii":I
    .end local v9    # "kana":[C
    .end local v10    # "plen":[I
    .end local v11    # "romaji":[C
    :cond_1
    move v6, v13

    .line 3251
    goto :goto_0

    .line 3269
    .restart local v6    # "bFinish":Z
    .restart local v7    # "i":I
    .restart local v9    # "kana":[C
    .restart local v10    # "plen":[I
    .restart local v11    # "romaji":[C
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3284
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3286
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateInlineWhenRC(I)Z

    .line 3288
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandlistWhenRC(I)Z

    .line 3290
    .end local v7    # "i":I
    .end local v9    # "kana":[C
    .end local v10    # "plen":[I
    .end local v11    # "romaji":[C
    :cond_4
    return v6
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 4
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 411
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 412
    check-cast p2, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    .end local p2    # "xt9coreinput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    iput-object p2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    .line 413
    new-instance v1, Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-direct {v1, v2, v3}, Lcom/nuance/swype/input/KeyboardSwitcher;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 414
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 417
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 419
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 421
    .local v0, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    .line 423
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->readStyles(Landroid/content/Context;)V

    .line 425
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createOpenWnnEngineJAJP()Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOpenwnnEngine:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    .line 426
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOpenwnnEngine:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    invoke-virtual {v1}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->init()V

    .line 427
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

    .line 442
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-nez v2, :cond_0

    .line 464
    :goto_0
    return-object v1

    .line 446
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-nez v2, :cond_1

    .line 448
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 451
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/nuance/swype/input/R$layout;->japanese_candidates:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    .line 453
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->initViews()V

    .line 454
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->requestLayout()V

    .line 455
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    sget v2, Lcom/nuance/swype/input/R$id;->cjk_candidates:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 460
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V

    .line 462
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->disableHighlight()V

    .line 463
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    .line 464
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 431
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->destroy()V

    .line 433
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 434
    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 435
    return-void
.end method

.method public dismissJapanesePopup()V
    .locals 1

    .prologue
    .line 4194
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4195
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4197
    :cond_0
    return-void
.end method

.method public dismissSegmentationPopup()V
    .locals 1

    .prologue
    .line 4064
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4065
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4067
    :cond_0
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 794
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletionOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    if-nez v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/Completions;->update([Landroid/view/inputmethod/CompletionInfo;)V

    .line 796
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Completions;->getDisplayItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 797
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->syncCandidateDisplayStyleToMode()V

    .line 799
    :cond_0
    return-void
.end method

.method public finishInput()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 613
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->removeAllMessages()V

    .line 615
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-nez v0, :cond_0

    .line 630
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->endSession()V

    .line 622
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 624
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->endInputSession()V

    .line 625
    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 626
    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 628
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissSegmentationPopup()V

    .line 629
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    goto :goto_0
.end method

.method public flushCurrentActiveWord()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 635
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 637
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 639
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 640
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 641
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 643
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 644
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 646
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hideGridCandidatesView()V

    .line 648
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineKanaWord:Ljava/lang/String;

    .line 650
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConfirmedInlineRomaji:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 651
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConfirmedKanji:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 653
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissSegmentationPopup()V

    .line 654
    return-void
.end method

.method public getWordCandidateListContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    return-object v0
.end method

.method public getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .locals 1

    .prologue
    .line 3578
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    return-object v0
.end method

.method public handleBackspace(I)Z
    .locals 10
    .param p1, "repeatedCount"    # I

    .prologue
    const/16 v9, 0x40

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    .line 1344
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1346
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1348
    const/4 p1, 0x1

    .line 1353
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 1355
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v3, :cond_1

    if-nez v2, :cond_3

    .line 1357
    :cond_1
    iput v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 1359
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendBackspace(I)V

    .line 1361
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 1486
    :cond_2
    :goto_0
    return v7

    .line 1365
    :cond_3
    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    if-eq v3, v7, :cond_4

    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    if-ne v3, v5, :cond_5

    .line 1367
    :cond_4
    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->UpdateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 1369
    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    goto :goto_0

    .line 1373
    :cond_5
    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    if-ne v3, v5, :cond_6

    .line 1375
    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 1377
    iput v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 1379
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1380
    const-string v3, ""

    invoke-interface {v2, v3, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1381
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1383
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 1385
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 1387
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 1389
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 1391
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->start()V

    goto :goto_0

    .line 1397
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMultitapping()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1399
    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    if-lez v3, :cond_2

    .line 1401
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getRomajiPosByCursorPos(I)I

    move-result v4

    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getRomajiBytesOfCurrentPos(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearKeyByIndex(II)Z

    .line 1406
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/16 v4, 0x100

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRomajiDivInfoOfInline:[I

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKanaDivInfoOfInline:[I

    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getInlineDivInfo(I[I[I)I

    move-result v3

    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCursorPosCount:I

    .line 1407
    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCursorPosCount:I

    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    goto :goto_0

    .line 1414
    :cond_7
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v3

    if-lez v3, :cond_b

    .line 1416
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getRomajiPosByCursorPos(I)I

    move-result v4

    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getRomajiBytesOfCurrentPos(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearKeyByIndex(II)Z

    .line 1419
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/16 v4, 0x100

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRomajiDivInfoOfInline:[I

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKanaDivInfoOfInline:[I

    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getInlineDivInfo(I[I[I)I

    move-result v3

    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCursorPosCount:I

    .line 1421
    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCursorPosCount:I

    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    .line 1423
    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    if-nez v3, :cond_8

    .line 1425
    iput v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 1427
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1428
    const-string v3, ""

    invoke-interface {v2, v3, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1429
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1431
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 1433
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 1435
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 1437
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 1439
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->start()V

    goto/16 :goto_0

    .line 1443
    :cond_8
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v3

    if-lez v3, :cond_a

    .line 1445
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineKanaWord:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isCharactersAllKana(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineKanaWord:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 1447
    new-array v0, v9, [C

    .line 1448
    .local v0, "charsin":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_9

    if-ge v1, v9, :cond_9

    .line 1450
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    aput-char v3, v0, v1

    .line 1449
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1454
    .end local v0    # "charsin":[C
    .end local v1    # "i":I
    :cond_9
    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->UpdateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_0

    .line 1458
    :cond_a
    iput v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 1460
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1461
    const-string v3, ""

    invoke-interface {v2, v3, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1462
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1464
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 1466
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 1468
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 1470
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 1472
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->start()V

    goto/16 :goto_0

    .line 1478
    :cond_b
    iput v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 1480
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendBackspace(I)V

    .line 1481
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 1483
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 1485
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->backSpace()V

    goto/16 :goto_0
.end method

.method public handleCallbackMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v13, 0x3ea

    const/16 v12, 0x3ed

    const/16 v11, 0x68

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 3776
    iget v3, p1, Landroid/os/Message;->what:I

    .line 3777
    .local v3, "message":I
    if-ne v3, v11, :cond_7

    .line 3778
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 3779
    .local v2, "keyIndex":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 3781
    .local v4, "pointerId":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_2

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 3782
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v0, v6, v2

    .line 3783
    .local v0, "currentKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_2

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v6, :cond_2

    .line 3784
    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v6, v8

    const/16 v7, 0xfed

    if-eq v6, v7, :cond_1

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v6, v8

    const/16 v7, 0xfea

    if-eq v6, v7, :cond_1

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v6, v8

    const/16 v7, 0x18

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v6, v8

    const/16 v7, 0x193e

    if-eq v6, v7, :cond_1

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v6, v8

    const/16 v7, 0xb7b

    if-eq v6, v7, :cond_1

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v6, v8

    const/16 v7, 0x7a

    if-eq v6, v7, :cond_1

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v6, v8

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3

    .line 3792
    :cond_1
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleCallbackMessage(Landroid/os/Message;)Z

    .line 3847
    .end local v0    # "currentKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v2    # "keyIndex":I
    .end local v4    # "pointerId":I
    :cond_2
    :goto_0
    return v10

    .line 3797
    .restart local v0    # "currentKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .restart local v2    # "keyIndex":I
    .restart local v4    # "pointerId":I
    :cond_3
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleMessageJP(Landroid/os/Message;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3799
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 3800
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetMultiTap()V

    .line 3801
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x6a

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 3803
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hasAltSymbolOrCode(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3804
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hasAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->showPopup:Z

    if-nez v6, :cond_6

    .line 3805
    :cond_4
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->onLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isLongPressableBackspaceKey(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3807
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3c

    invoke-virtual {v6, v13, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3809
    invoke-virtual {p0, v0, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showAltSymbolPopup(Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    .line 3812
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3813
    iput-boolean v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyRepeated:Z

    .line 3814
    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->repeatCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->repeatCount:I

    .line 3815
    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->repeatCount:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 3816
    .local v1, "expValue":I
    const/16 v5, 0x64

    .line 3817
    .local v5, "timeOut":I
    if-ltz v1, :cond_5

    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mShortLongPressTimeout:I

    if-ge v1, v6, :cond_5

    .line 3818
    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mShortLongPressTimeout:I

    sub-int v5, v6, v1

    .line 3821
    :cond_5
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    int-to-long v8, v5

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 3827
    .end local v1    # "expValue":I
    .end local v5    # "timeOut":I
    :cond_6
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    iget v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLongPressTimeout:I

    int-to-long v8, v7

    invoke-virtual {v6, v12, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3829
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3c

    invoke-virtual {v6, v13, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3831
    invoke-virtual {p0, v0, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showAltSymbolPopup(Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    goto :goto_0

    .line 3837
    .end local v0    # "currentKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v2    # "keyIndex":I
    .end local v4    # "pointerId":I
    :cond_7
    const/16 v6, 0x3ef

    if-ne v3, v6, :cond_8

    .line 3839
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleMessageJP(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3841
    :cond_8
    if-ne v3, v12, :cond_9

    .line 3842
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleMessageJP(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3845
    :cond_9
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleCallbackMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public handleCharKey(Landroid/graphics/Point;I[IJ)V
    .locals 8
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "eventTime"    # J

    .prologue
    const/16 v7, 0x600

    const/16 v6, 0x121

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 1073
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/input/InputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    .line 1075
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->removeToastMsg(I)V

    .line 1077
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    if-nez v1, :cond_5

    .line 1079
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->end()V

    .line 1080
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    .line 1081
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1083
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p2

    .line 1086
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMultitapping()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1088
    int-to-char v1, p2

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendKeyChar(C)V

    .line 1186
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->recordUsedTimeTapDisplaySelectionList()V

    .line 1188
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    int-to-char v2, p2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isWordCompounder(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->composingState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->supportsAlphaMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1190
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->toggleKeyboardMode()V

    .line 1192
    :cond_3
    return-void

    .line 1091
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1092
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1093
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    int-to-char v2, p2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1095
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1097
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1100
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1102
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    .line 1104
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 1109
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_5
    int-to-char v1, p2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1111
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1113
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ltz v1, :cond_2

    .line 1115
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto/16 :goto_0

    .line 1121
    :cond_6
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleWhiteSpaces(I)V

    .line 1123
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearAllKeys()Z

    .line 1125
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineKanaWord:Ljava/lang/String;

    .line 1127
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1128
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    goto/16 :goto_0

    .line 1130
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMultitapping()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1133
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-ne v1, v5, :cond_8

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isCommaOrPeriod(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1134
    :cond_8
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    const/16 v2, 0x900

    if-ne v1, v2, :cond_a

    .line 1135
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrWordAndClearWCL()V

    .line 1142
    :cond_9
    :goto_1
    invoke-direct/range {p0 .. p5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handlePrediction(Landroid/graphics/Point;I[IJ)V

    goto/16 :goto_0

    .line 1136
    :cond_a
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    if-ne v1, v7, :cond_9

    .line 1137
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isCommaOrPeriod(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1138
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrWordAndClearWCL()V

    goto :goto_1

    .line 1143
    :cond_b
    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    if-ne v2, v7, :cond_d

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isCommaOrPeriod(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1146
    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadFlickrInputSupported:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadMultitapInputSupported:Z

    if-nez v1, :cond_c

    if-eqz p3, :cond_c

    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_c

    .line 1151
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 1152
    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 1153
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isValidFlickerIndex()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1155
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    .line 1156
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetFlickerIndex()V

    .line 1160
    :cond_c
    invoke-direct/range {p0 .. p5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handlePrediction(Landroid/graphics/Point;I[IJ)V

    goto/16 :goto_0

    .line 1161
    :cond_d
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isWordAcceptingSymbol(C)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {v1}, Lcom/nuance/swype/util/CharacterUtilities;->isDigit(I)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1172
    :cond_e
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handlePunctOrSymbol(I)V

    goto/16 :goto_0

    .line 1173
    :cond_f
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isRomajiAlphaCharacterConverting(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1175
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1176
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->cleanInlineWordSpanAndFlush()V

    .line 1178
    :cond_10
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 1179
    :cond_11
    invoke-direct/range {p0 .. p5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handlePrediction(Landroid/graphics/Point;I[IJ)V

    goto/16 :goto_0
.end method

.method public handleClose()V
    .locals 0

    .prologue
    .line 1575
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 1577
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->removeAllMessages()V

    .line 1579
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 1580
    return-void
.end method

.method public handleHardKeyCapsLock(Z)Z
    .locals 1
    .param p1, "iscapslockon"    # Z

    .prologue
    .line 4652
    const/4 v0, 0x1

    return v0
.end method

.method public handleHardKeyDirectionKey(I)Z
    .locals 3
    .param p1, "keycode"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 4672
    packed-switch p1, :pswitch_data_0

    .line 4704
    :cond_0
    :goto_0
    return v0

    .line 4675
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 4676
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 4677
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->moveHightlightToCenterOrLeftRight(I)Z

    move-result v0

    goto :goto_0

    .line 4679
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 4680
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentActiveWord()V

    goto :goto_0

    .line 4684
    :cond_2
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->moveHighlightToNearCandidate(I)Z

    move-result v0

    goto :goto_0

    .line 4687
    :pswitch_1
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hasInputQueue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4688
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 4689
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 4690
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentActiveWord()V

    goto :goto_0

    .line 4693
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 4695
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 4696
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->moveHightlightToCenterOrLeftRight(I)Z

    move-result v0

    goto :goto_0

    .line 4698
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 4699
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentActiveWord()V

    goto :goto_0

    .line 4672
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public handleHardKeyEscapeKey()Z
    .locals 1

    .prologue
    .line 4662
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hasInputQueue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4663
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentActiveWord()V

    .line 4666
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardkeyBackspace(I)Z
    .locals 10
    .param p1, "repeatedCount"    # I

    .prologue
    const/16 v9, 0x40

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    .line 4418
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4420
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 4422
    const/4 p1, 0x1

    .line 4427
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 4429
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v3, :cond_1

    if-nez v2, :cond_3

    .line 4431
    :cond_1
    iput v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 4433
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendBackspace(I)V

    .line 4435
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 4566
    :cond_2
    :goto_0
    return v7

    .line 4439
    :cond_3
    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    if-eq v3, v7, :cond_4

    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    if-ne v3, v5, :cond_5

    .line 4441
    :cond_4
    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->UpdateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 4443
    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    goto :goto_0

    .line 4447
    :cond_5
    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    if-ne v3, v5, :cond_6

    .line 4449
    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 4451
    iput v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 4453
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4454
    const-string v3, ""

    invoke-interface {v2, v3, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4455
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4457
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 4459
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 4461
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 4463
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 4465
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->start()V

    goto :goto_0

    .line 4471
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMultitapping()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4473
    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    if-lez v3, :cond_2

    .line 4475
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getRomajiPosByCursorPos(I)I

    move-result v4

    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getRomajiBytesOfCurrentPos(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearKeyByIndex(II)Z

    .line 4480
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/16 v4, 0x100

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRomajiDivInfoOfInline:[I

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKanaDivInfoOfInline:[I

    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getInlineDivInfo(I[I[I)I

    move-result v3

    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCursorPosCount:I

    .line 4481
    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCursorPosCount:I

    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    goto :goto_0

    .line 4488
    :cond_7
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v3

    if-lez v3, :cond_b

    .line 4490
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getRomajiPosByCursorPos(I)I

    move-result v4

    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getRomajiBytesOfCurrentPos(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearKeyByIndex(II)Z

    .line 4493
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/16 v4, 0x100

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRomajiDivInfoOfInline:[I

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKanaDivInfoOfInline:[I

    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getInlineDivInfo(I[I[I)I

    move-result v3

    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCursorPosCount:I

    .line 4495
    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCursorPosCount:I

    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    .line 4497
    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    if-nez v3, :cond_8

    .line 4499
    iput v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 4501
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4502
    const-string v3, ""

    invoke-interface {v2, v3, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4503
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4505
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 4507
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 4509
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 4511
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 4513
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->start()V

    goto/16 :goto_0

    .line 4517
    :cond_8
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v3

    if-lez v3, :cond_a

    .line 4519
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineKanaWord:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isCharactersAllKana(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineKanaWord:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 4521
    new-array v0, v9, [C

    .line 4522
    .local v0, "charsin":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_9

    if-ge v1, v9, :cond_9

    .line 4524
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    aput-char v3, v0, v1

    .line 4523
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4528
    .end local v0    # "charsin":[C
    .end local v1    # "i":I
    :cond_9
    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->UpdateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_0

    .line 4532
    :cond_a
    iput v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 4534
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4535
    const-string v3, ""

    invoke-interface {v2, v3, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4536
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4538
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 4540
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 4542
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 4544
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 4546
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->start()V

    goto/16 :goto_0

    .line 4552
    :cond_b
    iput v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 4554
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 4555
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4556
    const-string v3, ""

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4557
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4561
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 4563
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 4565
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->backSpace()V

    goto/16 :goto_0

    .line 4559
    :cond_c
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendBackspace(I)V

    goto :goto_2
.end method

.method public handleHardkeyCharKey(ILandroid/view/KeyEvent;Z)V
    .locals 6
    .param p1, "primaryCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "shiftable"    # Z

    .prologue
    .line 4408
    if-nez p1, :cond_0

    .line 4414
    :goto_0
    return-void

    .line 4412
    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [I

    const/4 v0, 0x0

    aput p1, v3, v0

    .line 4413
    .local v3, "keyCodes":[I
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    :goto_1
    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method public handleHardkeyDelete(I)Z
    .locals 6
    .param p1, "repeatedCount"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4584
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 4586
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    .line 4587
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendBackspace(I)V

    .line 4628
    :cond_1
    :goto_0
    return v4

    .line 4595
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isComposingText()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hasInputQueue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 4597
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 4598
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 4600
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 4603
    :cond_5
    const-string v2, "multitap"

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRecaptureOn:Z

    if-eqz v2, :cond_6

    .line 4606
    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4607
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4608
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4609
    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 4610
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 4615
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 4616
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 4618
    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4619
    .local v0, "cSeqAfter":Ljava/lang/CharSequence;
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 4620
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4621
    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 4622
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4624
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 4625
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setContext([C)V

    .line 4626
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->backSpace()V

    goto :goto_0
.end method

.method public handleHardkeyEnter()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4633
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4636
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4637
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 4638
    .local v0, "word":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 4639
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4640
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 4641
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->selectActiveWord()V

    .line 4647
    .end local v0    # "word":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return v4

    .line 4645
    :cond_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendKeyToApplication(I)V

    goto :goto_0
.end method

.method public handleHardkeyShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 1
    .param p1, "state"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 4657
    const/4 v0, 0x1

    return v0
.end method

.method public handleHardkeySpace(ZI)Z
    .locals 2
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    .line 4571
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 4572
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4574
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleHardkeyEnter()Z

    move-result v0

    .line 4578
    :goto_0
    return v0

    .line 4577
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissSegmentationPopup()V

    .line 4578
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleSpace(ZI)Z

    move-result v0

    goto :goto_0
.end method

.method public handleKey(IZI)Z
    .locals 12
    .param p1, "primaryCode"    # I
    .param p2, "quickPressed"    # Z
    .param p3, "repeatedCount"    # I

    .prologue
    .line 3026
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->removeToastMsg(I)V

    .line 3028
    sparse-switch p1, :sswitch_data_0

    .line 3169
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    :goto_0
    return v0

    .line 3032
    :sswitch_0
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v0, :cond_0

    .line 3034
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->postToastMsg(I)V

    .line 3037
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3040
    :sswitch_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 3041
    if-nez p2, :cond_1

    .line 3042
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 3043
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->startSpeech()V

    .line 3046
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3050
    :sswitch_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3052
    const/4 v0, 0x1

    goto :goto_0

    .line 3055
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3057
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 3059
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 3061
    .local v10, "pos":I
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    .line 3062
    .local v6, "charin":C
    invoke-static {v6}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->convertHira(C)C

    move-result v2

    .line 3064
    .local v2, "charout":C
    if-eqz v2, :cond_4

    .line 3065
    const/4 v0, 0x2

    new-array v8, v0, [C

    .line 3066
    .local v8, "kana":[C
    const/16 v0, 0x40

    new-array v11, v0, [C

    .line 3068
    .local v11, "romaji":[C
    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 3070
    .local v9, "plen":[I
    const/4 v0, 0x0

    aput-char v6, v8, v0

    .line 3071
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v1, 0x1

    invoke-virtual {v0, v8, v1, v11, v9}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->kanatoRomaji([CI[C[I)I

    move-result v0

    if-nez v0, :cond_3

    .line 3072
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/4 v0, 0x0

    aget v0, v9, v0

    if-ge v7, v0, :cond_3

    .line 3073
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearKey()Z

    .line 3072
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3076
    .end local v7    # "i":I
    :cond_3
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handlePrediction(Landroid/graphics/Point;I[IJ)V

    .line 3080
    .end local v2    # "charout":C
    .end local v6    # "charin":C
    .end local v8    # "kana":[C
    .end local v9    # "plen":[I
    .end local v10    # "pos":I
    .end local v11    # "romaji":[C
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 3084
    :sswitch_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3086
    const/4 v0, 0x1

    goto :goto_0

    .line 3089
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3091
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 3095
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    .line 3096
    .restart local v6    # "charin":C
    invoke-static {v6}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->hiraCycle(C)C

    move-result v2

    .line 3098
    .restart local v2    # "charout":C
    if-lez v2, :cond_8

    .line 3099
    const/4 v0, 0x2

    new-array v8, v0, [C

    .line 3100
    .restart local v8    # "kana":[C
    const/16 v0, 0x40

    new-array v11, v0, [C

    .line 3102
    .restart local v11    # "romaji":[C
    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 3103
    .restart local v9    # "plen":[I
    const/4 v0, 0x0

    aput-char v6, v8, v0

    .line 3104
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v1, 0x1

    invoke-virtual {v0, v8, v1, v11, v9}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->kanatoRomaji([CI[C[I)I

    move-result v0

    if-nez v0, :cond_8

    .line 3106
    const/16 v0, 0x3093

    if-ne v6, v0, :cond_6

    .line 3107
    const/4 v0, 0x0

    const/4 v1, 0x2

    aput v1, v9, v0

    .line 3109
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    const/4 v0, 0x0

    aget v0, v9, v0

    if-ge v7, v0, :cond_7

    .line 3110
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearKey()Z

    .line 3109
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3112
    :cond_7
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handlePrediction(Landroid/graphics/Point;I[IJ)V

    .line 3117
    .end local v2    # "charout":C
    .end local v6    # "charin":C
    .end local v7    # "i":I
    .end local v8    # "kana":[C
    .end local v9    # "plen":[I
    .end local v11    # "romaji":[C
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 3120
    :sswitch_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showSegmentationPopup()V

    .line 3121
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 3125
    :sswitch_5
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 3127
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3129
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->reduceRangeConversion()Z

    .line 3139
    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 3132
    :cond_9
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->doConversionEx()Z

    goto :goto_3

    .line 3136
    :cond_a
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/16 v1, 0x15

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/input/IME;->sendLeftRightKey(II)V

    goto :goto_3

    .line 3143
    :sswitch_6
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 3145
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3147
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->expandRangeConversion()Z

    .line 3154
    :cond_b
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 3151
    :cond_c
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/16 v1, 0x16

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/input/IME;->sendLeftRightKey(II)V

    goto :goto_4

    .line 3158
    :sswitch_7
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->toggleLastKeyboard()V

    .line 3160
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 3164
    :sswitch_8
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    goto/16 :goto_0

    .line 3028
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_5
        0x16 -> :sswitch_6
        0x17 -> :sswitch_4
        0xb7c -> :sswitch_0
        0x193e -> :sswitch_8
        0x193f -> :sswitch_1
        0xaa38 -> :sswitch_7
        0xaa39 -> :sswitch_2
        0xaa3a -> :sswitch_3
    .end sparse-switch
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 804
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 812
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_2

    const/16 v1, 0x15

    if-eq p1, v1, :cond_0

    const/16 v1, 0x16

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-ne p1, v1, :cond_2

    .line 818
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 821
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "selectedWord":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 824
    const/4 v1, 0x1

    .line 835
    .end local v0    # "selectedWord":Ljava/lang/String;
    :goto_0
    return v1

    .line 825
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 827
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 829
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 835
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleKeyboardResize()V
    .locals 1

    .prologue
    .line 2013
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleKeyboardResize()V

    .line 2014
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissJapanesePopup()V

    .line 2015
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearKeyOffsets()V

    .line 2016
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMoveHighlightForResize:Z

    .line 2017
    return-void
.end method

.method public handleMessageJP(Landroid/os/Message;)Z
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v10, 0x3ed

    const/16 v9, 0x68

    const/16 v8, 0xb79

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 3851
    const/4 v1, 0x0

    .line 3853
    .local v1, "breakable":Z
    iget v3, p1, Landroid/os/Message;->what:I

    .line 3856
    .local v3, "msg":I
    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    if-eq v5, v7, :cond_0

    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 3857
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    aget-object v2, v5, v6

    .line 3858
    .local v2, "currentKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    sparse-switch v3, :sswitch_data_0

    .line 3948
    .end local v2    # "currentKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_0
    :goto_0
    return v1

    .line 3864
    .restart local v2    # "currentKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :sswitch_0
    if-eqz v2, :cond_0

    .line 3865
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3866
    iget-object v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v5, v5

    if-lez v5, :cond_1

    iget-object v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v5, v5, v4

    const/16 v6, 0x20

    if-eq v5, v6, :cond_0

    iget-object v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v4, v5, v4

    const v5, 0xaa37

    if-eq v4, v5, :cond_0

    .line 3870
    :cond_1
    iget v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    if-eq v4, v8, :cond_0

    .line 3872
    const/4 v1, 0x1

    goto :goto_0

    .line 3878
    :sswitch_1
    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    if-eq v5, v7, :cond_0

    .line 3879
    if-eqz v2, :cond_0

    .line 3880
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadFlickrInputSupported:Z

    if-eqz v5, :cond_0

    iget v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    if-eq v5, v8, :cond_0

    .line 3883
    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    if-ltz v5, :cond_2

    .line 3884
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    aget-object v0, v5, v6

    .line 3891
    .local v0, "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_1
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3892
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 3893
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 3894
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3ef

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 3885
    .end local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2
    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKeyNav:I

    if-ltz v5, :cond_3

    .line 3886
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKeyNav:I

    aget-object v0, v5, v6

    .restart local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    goto :goto_1

    .line 3888
    .end local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_3
    const/4 v0, 0x0

    .line 3889
    .restart local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    goto :goto_1

    .line 3897
    :cond_4
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v5, v5

    if-lez v5, :cond_0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v5, v5, v4

    const/16 v6, 0x3040

    if-le v5, v6, :cond_0

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v5, v5, v4

    const/16 v6, 0x30fc

    if-gt v5, v6, :cond_0

    .line 3899
    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    .line 3900
    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    iput v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    .line 3901
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    .line 3902
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 3903
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 3904
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3ef

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 3911
    .end local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :sswitch_2
    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    if-eq v5, v7, :cond_0

    .line 3912
    if-eqz v2, :cond_0

    .line 3913
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadFlickrInputSupported:Z

    if-eqz v5, :cond_a

    iget v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    if-eq v5, v8, :cond_a

    .line 3916
    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    if-ltz v5, :cond_8

    .line 3917
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    aget-object v0, v5, v6

    .line 3925
    .restart local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_2
    if-eqz v0, :cond_5

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v5, v5

    if-lez v5, :cond_5

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v5, v5, v4

    const/16 v6, 0x3040

    if-le v5, v6, :cond_5

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v5, v5, v4

    const/16 v6, 0x30fc

    if-gt v5, v6, :cond_5

    const/4 v4, 0x1

    .line 3927
    :cond_5
    if-nez v4, :cond_6

    .line 3928
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    .line 3929
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->popupMiniKeyboardOrLongPress()Z

    .line 3931
    :cond_6
    iget-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInMultiTap:Z

    if-eqz v4, :cond_7

    .line 3932
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetMultiTap()V

    .line 3934
    :cond_7
    const/4 v1, 0x1

    .line 3935
    goto/16 :goto_0

    .line 3918
    .end local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_8
    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKeyNav:I

    if-ltz v5, :cond_9

    .line 3919
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKeyNav:I

    aget-object v0, v5, v6

    .restart local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    goto :goto_2

    .line 3921
    .end local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_9
    const/4 v0, 0x0

    .line 3922
    .restart local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    .line 3923
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->popupMiniKeyboardOrLongPress()Z

    goto :goto_2

    .line 3936
    .end local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadMultitapInputSupported:Z

    if-eqz v5, :cond_b

    iget-object v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v4, v5, v4

    int-to-char v4, v4

    invoke-static {v4}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->isHiragana(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3938
    :cond_b
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->popupMiniKeyboardOrLongPress()Z

    goto/16 :goto_0

    .line 3858
    :sswitch_data_0
    .sparse-switch
        0x68 -> :sswitch_0
        0x3ed -> :sswitch_2
        0x3ef -> :sswitch_1
    .end sparse-switch
.end method

.method public handleMultitapToggle()V
    .locals 4

    .prologue
    .line 1833
    iget-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v2, :cond_1

    .line 1835
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->toggleAmbigMode()V

    .line 1837
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 1839
    .local v0, "inputMode":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setCorrectionLevel(Ljava/lang/String;)V

    .line 1840
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    const-string v3, "multitap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/AppPreferences;->setMultitapMode(Z)V

    .line 1845
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1847
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1849
    .local v1, "selectedWord":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1852
    .end local v1    # "selectedWord":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/nuance/swype/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 1854
    .end local v0    # "inputMode":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public handlePossibleActionAfterResize()V
    .locals 1

    .prologue
    .line 4366
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearKeyOffsets()V

    .line 4367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMoveHighlightForResize:Z

    .line 4368
    return-void
.end method

.method public handlePossibleActionAfterUniversalKeyboardResize(Z)V
    .locals 0
    .param p1, "hideSymbolView"    # Z

    .prologue
    .line 4372
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handlePossibleActionAfterResize()V

    .line 4373
    return-void
.end method

.method protected handleScrollLeft()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2702
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/4 v3, 0x1

    .line 2704
    .local v3, "landscape":Z
    :goto_0
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    .line 2705
    .local v0, "alphaMode":Z
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v5

    if-eqz v5, :cond_0

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 2706
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    .line 2707
    .local v1, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDefaultPortraitLayoutOptions()I

    move-result v5

    iput v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->portraitInputOptions:I

    .line 2708
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2709
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$InputMode;->getPortaitKeypadOptionsPrefKey()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->portraitInputOptions:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2711
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$InputMode;->getPortaitLayoutOptionsPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2719
    :goto_1
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleKeyboard()V

    .line 2721
    .end local v1    # "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    :cond_0
    return-void

    .end local v0    # "alphaMode":Z
    .end local v3    # "landscape":Z
    :cond_1
    move v3, v4

    .line 2702
    goto :goto_0

    .line 2714
    .restart local v0    # "alphaMode":Z
    .restart local v1    # "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    .restart local v3    # "landscape":Z
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDefaultPortraitKeypadOptions()I

    move-result v2

    .line 2715
    .local v2, "keypadInputOptions":I
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$InputMode;->getPortaitLayoutOptionsPrefKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected handleScrollRight()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2726
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/4 v3, 0x1

    .line 2728
    .local v3, "landscape":Z
    :goto_0
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    .line 2730
    .local v0, "alphaMode":Z
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v5

    if-eqz v5, :cond_0

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 2731
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    .line 2732
    .local v1, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDefaultPortraitLayoutOptions()I

    move-result v5

    iput v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->portraitInputOptions:I

    .line 2733
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2734
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$InputMode;->getPortaitKeypadOptionsPrefKey()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->portraitInputOptions:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$InputMode;->getPortaitLayoutOptionsPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2743
    :goto_1
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleKeyboard()V

    .line 2745
    .end local v1    # "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    :cond_0
    return-void

    .end local v0    # "alphaMode":Z
    .end local v3    # "landscape":Z
    :cond_1
    move v3, v4

    .line 2726
    goto :goto_0

    .line 2739
    .restart local v0    # "alphaMode":Z
    .restart local v1    # "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    .restart local v3    # "landscape":Z
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDefaultPortraitKeypadOptions()I

    move-result v2

    .line 2740
    .local v2, "keypadInputOptions":I
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$InputMode;->getPortaitLayoutOptionsPrefKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public handleShiftKey()V
    .locals 1

    .prologue
    .line 2560
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->cycleShiftState()V

    .line 2561
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->invalidateKeyboardImage()V

    .line 2562
    return-void
.end method

.method public handleSpace(ZI)Z
    .locals 11
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1492
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 1494
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v5, :cond_0

    if-nez v3, :cond_2

    .line 1496
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendSpace()V

    .line 1569
    :cond_1
    :goto_0
    return v7

    .line 1500
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1502
    const/16 v5, 0x16

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->moveHighlightToNearCandidateSoftKeyboard(I)Z

    goto :goto_0

    .line 1507
    :cond_3
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1509
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->doConversion()Z

    goto :goto_0

    .line 1515
    :cond_4
    const/4 v5, 0x3

    iput v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 1517
    const/4 v0, 0x1

    .line 1518
    .local v0, "addSpace":Z
    const/4 v2, 0x0

    .line 1520
    .local v2, "displayNWP":Z
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-eq v5, v10, :cond_5

    .line 1522
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 1524
    iget-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mNextWordPredictionOn:Z

    .line 1525
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1526
    .local v4, "selectedWord":Ljava/lang/String;
    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v4, v6}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1527
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1528
    const/4 v0, 0x0

    .line 1535
    .end local v4    # "selectedWord":Ljava/lang/String;
    :cond_5
    if-eqz p1, :cond_6

    if-ge p2, v9, :cond_6

    iget-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mAutoPunctuationOn:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    if-eqz v5, :cond_6

    .line 1537
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1538
    invoke-interface {v3, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1539
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1546
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v9, :cond_6

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1551
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleAutoPunct()V

    .line 1552
    const/4 v0, 0x0

    .line 1556
    .end local v1    # "cSeqBefore":Ljava/lang/CharSequence;
    :cond_6
    if-eqz v0, :cond_7

    .line 1558
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->processSpaceKeyState(Landroid/view/inputmethod/InputConnection;)V

    .line 1560
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendKeyChar(C)V

    .line 1565
    :goto_1
    if-eqz v2, :cond_1

    .line 1566
    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->UpdateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_0

    .line 1563
    :cond_7
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v5}, Lcom/nuance/swype/input/EditState;->start()V

    goto :goto_1
.end method

.method protected handleTouchAction(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V
    .locals 2
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p3, "action"    # I

    .prologue
    .line 3736
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->subHandleTouchInitialized(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3771
    :cond_0
    :goto_0
    return-void

    .line 3740
    :cond_1
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 3743
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->subHandleTouchDown(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    goto :goto_0

    .line 3749
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleTouchActionFlickr(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3750
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->subHandleTouchMove(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    goto :goto_0

    .line 3756
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3757
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3758
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3759
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3760
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3762
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleTouchActionFlickr(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mPreTraceAlreadDispatched:Z

    goto :goto_0

    .line 3767
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->subHandleTouchUp(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    goto :goto_0

    .line 3740
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleTouchActionFlickr(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)Z
    .locals 12
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p3, "action"    # I

    .prologue
    .line 4070
    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "handleTouchActionFlickr()...action: "

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4071
    const/4 v0, 0x0

    .line 4072
    .local v0, "breakable":Z
    const/4 v3, 0x0

    .line 4073
    .local v3, "keys":[I
    packed-switch p3, :pswitch_data_0

    .line 4186
    :cond_0
    :goto_0
    return v0

    .line 4075
    :pswitch_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetFlickerIndex()V

    goto :goto_0

    .line 4078
    :pswitch_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTraceInputEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4079
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v6

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v7, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7, v5}, Lcom/nuance/swype/input/KeyboardEx;->getNearestKeys(II)[I

    move-result-object v3

    .line 4083
    array-length v5, v3

    if-eqz v5, :cond_9

    .line 4084
    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v2, v6, v5

    .line 4085
    .local v2, "hLen":I
    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int v4, v6, v5

    .line 4093
    .local v4, "vLen":I
    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    sget-boolean v5, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTopKeyFlicerUp:Z

    if-eqz v5, :cond_8

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v6, v5

    const-wide v8, 0x3fe999999999999aL    # 0.8

    iget-wide v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerMiddleKeyRadius:D

    mul-double/2addr v8, v10

    cmpl-double v5, v6, v8

    if-lez v5, :cond_8

    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x3

    if-gt v5, v6, :cond_8

    const/4 v5, 0x0

    aget v5, v3, v5

    if-lez v5, :cond_8

    .line 4098
    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "current index is 0 when flick from 2"

    invoke-virtual {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 4099
    const/4 v1, 0x0

    .line 4109
    .local v1, "dir":I
    :goto_1
    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "current index is="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " current keys[0]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 4110
    sget-object v6, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v5, "y value of the end of path:"

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 4111
    const/4 v5, 0x4

    if-eq v1, v5, :cond_2

    if-gez v4, :cond_2

    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x3

    if-gt v5, v6, :cond_2

    const/4 v5, 0x0

    aget v5, v3, v5

    if-ltz v5, :cond_2

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-nez v5, :cond_2

    .line 4113
    const/4 v1, 0x2

    .line 4114
    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "current index = 2 when flick from 0"

    invoke-virtual {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 4119
    const/4 v5, 0x1

    sput-boolean v5, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTopKeyFlicerUp:Z

    .line 4123
    :cond_2
    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    .line 4124
    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    iput v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    .line 4125
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isValidFlickerIndex()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4126
    iget-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mAbortKey:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyRepeated:Z

    if-nez v5, :cond_3

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->isTraceDetected()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    if-gez v4, :cond_3

    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x3

    if-gt v5, v6, :cond_3

    const/4 v5, 0x0

    aget v5, v3, v5

    if-ltz v5, :cond_3

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-eqz v5, :cond_4

    :cond_3
    if-nez v1, :cond_7

    sget-boolean v5, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTopKeyFlicerUp:Z

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x3

    if-gt v5, v6, :cond_7

    const/4 v5, 0x0

    aget v5, v3, v5

    if-ltz v5, :cond_7

    .line 4145
    :cond_4
    if-nez v1, :cond_5

    sget-boolean v5, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTopKeyFlicerUp:Z

    if-eqz v5, :cond_5

    .line 4147
    const/4 v5, 0x0

    sput-boolean v5, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTopKeyFlicerUp:Z

    .line 4149
    :cond_5
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    .line 4151
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x68

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4152
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ef

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4153
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ed

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4155
    iget-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInMultiTap:Z

    if-eqz v5, :cond_6

    .line 4156
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetMultiTap()V

    .line 4159
    :cond_6
    iget v5, p2, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->pointerId:I

    iput v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTracePointerId:I

    .line 4160
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->releaseAllOtherPointers(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)V

    .line 4162
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getTimes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->reset(Ljava/util/List;Ljava/util/List;)V

    .line 4167
    .end local v1    # "dir":I
    .end local v2    # "hLen":I
    .end local v4    # "vLen":I
    :cond_7
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 4102
    .restart local v2    # "hLen":I
    .restart local v4    # "vLen":I
    :cond_8
    invoke-virtual {p0, v4, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->calculateDirectionFlickerPopup(II)I

    move-result v1

    .restart local v1    # "dir":I
    goto/16 :goto_1

    .line 4165
    .end local v1    # "dir":I
    .end local v2    # "hLen":I
    .end local v4    # "vLen":I
    :cond_9
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    goto :goto_2

    .line 4176
    :pswitch_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isValidFlickerIndex()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 4178
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTracePoints:Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getPoints()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getTimes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->reset(Ljava/util/List;Ljava/util/List;)V

    .line 4180
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4181
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x400

    const-wide/16 v8, 0xa

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4182
    invoke-virtual {p2, p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->release(Landroid/view/MotionEvent;)V

    .line 4183
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->invalidate()V

    .line 4184
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 4073
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
    .locals 7
    .param p1, "trace"    # Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1234
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1237
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isValidFlickerIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1238
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleFlickerPopup()V

    .line 1239
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    .line 1240
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetFlickerIndex()V

    .line 1271
    :cond_0
    :goto_0
    return-void

    .line 1246
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1248
    :cond_2
    iput v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 1251
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 1253
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->getTimes()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->processTrace(Ljava/util/List;Ljava/util/List;Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v1

    .line 1255
    if-eqz v1, :cond_0

    .line 1256
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->UpdateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    move-result v0

    .line 1257
    .local v0, "status":I
    if-gtz v0, :cond_6

    .line 1258
    iput v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 1259
    if-eq v0, v5, :cond_5

    .line 1260
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v1, :cond_4

    .line 1261
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->clearPhraseListView()V

    .line 1263
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setNotMatchToolTipSuggestion()V

    .line 1266
    :cond_5
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearAllKeys()Z

    goto :goto_0

    .line 1268
    :cond_6
    const/4 v1, 0x2

    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    goto :goto_0
.end method

.method public isConverting()Z
    .locals 1

    .prologue
    .line 3175
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyboardInput()Z
    .locals 2

    .prologue
    .line 1287
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

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

.method public isKeypadInput()Z
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

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

.method protected isMultitapHandledInCore()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method protected isPressHoldFlickrMessage()Z
    .locals 1

    .prologue
    .line 3726
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadFlickrInputSupported:Z

    if-eqz v0, :cond_0

    .line 3727
    const/4 v0, 0x1

    .line 3729
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z
    .locals 1
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 2759
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mScrollable:Z

    return v0
.end method

.method protected isSupportMultitouchGesture()Z
    .locals 1

    .prologue
    .line 2696
    const/4 v0, 0x1

    return v0
.end method

.method protected isTraceInputEnabled()Z
    .locals 1

    .prologue
    .line 2621
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTraceEnabledOnKeyboard:Z

    return v0
.end method

.method protected isValidFlickerIndex()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4233
    sget-object v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "isValidFlickerIndex()...japaneseFlickerKeyIndex: "

    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4234
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 4243
    :goto_0
    return v0

    .line 4238
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v0, v0, v1

    .line 4240
    int-to-char v0, v0

    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->isHiragana(C)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 4241
    goto :goto_0

    .line 4243
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isValidFlickerRelativeIndex()Z
    .locals 3

    .prologue
    .line 4247
    sget-object v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "isValidFlickerRelativeIndex()...japaneseFlickerKeyRelativeIndex: "

    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4249
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isValidFlickerIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4251
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    if-ltz v0, :cond_0

    .line 4254
    const/4 v0, 0x1

    .line 4257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 2
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 2770
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissPopupKeyboard()V

    .line 2772
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-ne p1, v1, :cond_0

    .line 2773
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 2774
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2775
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 2776
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollNext()V

    .line 2777
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 2791
    :cond_0
    :goto_0
    return-void

    .line 2780
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->suggestions()Ljava/util/List;

    move-result-object v0

    .line 2781
    .local v0, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showGridCandidatesView(Ljava/util/List;)V

    goto :goto_0

    .line 2783
    .end local v0    # "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2
    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletionOn:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Completions;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2784
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->suggestions()Ljava/util/List;

    move-result-object v0

    .line 2785
    .restart local v0    # "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2786
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showGridCandidatesView(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onApplicationUnbind()V
    .locals 0

    .prologue
    .line 2627
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onApplicationUnbind()V

    .line 2632
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 2634
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 2635
    return-void
.end method

.method public onBeginDrag()V
    .locals 0

    .prologue
    .line 4951
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onBeginDrag()V

    .line 4952
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearKeyOffsets()V

    .line 4953
    return-void
.end method

.method public onCandidateLongPressed(ILjava/lang/String;ILcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "wdSource"    # I
    .param p4, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 3574
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 4029
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->leftArrowButton:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 4030
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 4032
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4034
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->reduceRangeConversion()Z

    .line 4061
    :cond_0
    :goto_0
    return-void

    .line 4037
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->doConversionEx()Z

    goto :goto_0

    .line 4040
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 4041
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/16 v1, 0x15

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/IME;->sendLeftRightKey(II)V

    goto :goto_0

    .line 4044
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->rightArrowButton:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 4045
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 4047
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4049
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->expandRangeConversion()Z

    goto :goto_0

    .line 4052
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 4053
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/IME;->sendLeftRightKey(II)V

    goto :goto_0

    .line 4056
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->closeSegmentationButton:Landroid/view/View;

    if-ne p1, v0, :cond_6

    .line 4057
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissSegmentationPopup()V

    goto :goto_0

    .line 4059
    :cond_6
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onDrag(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 4957
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->onDrag(II)V

    .line 4958
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateSegemetationPopup(II)V

    .line 4959
    return-void
.end method

.method public onEndDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4963
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onEndDrag()V

    .line 4964
    invoke-virtual {p0, v0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateSegemetationPopup(II)V

    .line 4965
    return-void
.end method

.method public onMultitapTimeout()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1859
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInMultiTap:Z

    if-nez v3, :cond_1

    .line 1861
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1862
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1863
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1864
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1866
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1867
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1932
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return-void

    .line 1873
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    if-nez v3, :cond_4

    .line 1875
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1877
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1881
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 1882
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1884
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1885
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1886
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1888
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1931
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->invalidateKeyboardImage()V

    goto :goto_0

    .line 1892
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1893
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1895
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1897
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1901
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 1902
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1905
    :cond_5
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 1907
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    .line 1909
    .local v1, "lastSymbol":C
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isWordAcceptingSymbol(C)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v3, v1}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move v3, v4

    .line 1913
    :goto_2
    if-eqz v3, :cond_3

    .line 1915
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_3

    .line 1918
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1920
    .local v2, "selectedWord":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 1922
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1923
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1924
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1926
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    goto/16 :goto_1

    .line 1909
    .end local v2    # "selectedWord":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public onScrollContentChanged()V
    .locals 1

    .prologue
    .line 4945
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v0, :cond_0

    .line 4946
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->updateScrollArrowVisibility()V

    .line 4948
    :cond_0
    return-void
.end method

.method public onSnapToEdge(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 4969
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->onSnapToEdge(II)V

    .line 4970
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateSegemetationPopup(II)V

    .line 4971
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 14
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 847
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    if-nez v0, :cond_4

    .line 853
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v7

    .line 855
    .local v7, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 857
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 860
    :cond_3
    if-eqz v7, :cond_0

    .line 862
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 864
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 865
    const/4 v0, 0x1

    invoke-interface {v7, p1, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 866
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 870
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 872
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->composingState()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 873
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 874
    .local v11, "selectedWord":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 875
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrWordAndClearWCL()V

    .line 884
    .end local v11    # "selectedWord":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v7

    .line 886
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_5

    .line 888
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 890
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 891
    const/4 v0, 0x1

    invoke-interface {v7, p1, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 892
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 895
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    goto :goto_0

    .line 877
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v11    # "selectedWord":Ljava/lang/String;
    :cond_6
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v11, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_1

    .line 880
    .end local v11    # "selectedWord":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 881
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    goto :goto_1

    .line 896
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->composingState()Z

    move-result v0

    if-nez v0, :cond_a

    .line 899
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 901
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 903
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v7

    .line 905
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_9

    .line 907
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 909
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 910
    const/4 v0, 0x1

    invoke-interface {v7, p1, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 911
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 914
    :cond_9
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    goto/16 :goto_0

    .line 915
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 917
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v7

    .line 919
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_0

    .line 921
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 923
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 924
    const/4 v0, 0x1

    invoke-interface {v7, p1, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 925
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 929
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_b
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    .line 933
    .local v12, "textcode":I
    const/16 v0, 0x3041

    if-lt v12, v0, :cond_0

    const/16 v0, 0x30fc

    if-gt v12, v0, :cond_0

    .line 935
    const/16 v0, 0x40

    new-array v8, v0, [C

    .line 936
    .local v8, "kana":[C
    const/16 v0, 0x40

    new-array v10, v0, [C

    .line 938
    .local v10, "romaji":[C
    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 940
    .local v9, "plen":[I
    const/4 v0, 0x0

    int-to-char v1, v12

    aput-char v1, v8, v0

    .line 942
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v1, 0x1

    invoke-virtual {v0, v8, v1, v10, v9}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->kanatoRomaji([CI[C[I)I

    move-result v0

    if-nez v0, :cond_0

    .line 944
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x0

    aput-char v1, v10, v0

    .line 946
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v0

    const/4 v1, 0x0

    aget v1, v9, v1

    add-int/2addr v0, v1

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 948
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    const/4 v0, 0x0

    aget v0, v9, v0

    if-ge v6, v0, :cond_d

    .line 950
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v1, 0x0

    aget-char v2, v10, v6

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 952
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    int-to-char v1, v12

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/EditState;->characterTyped(C)V

    .line 948
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 962
    :cond_d
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->UpdateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_0
.end method

.method protected popupMiniKeyboardOrLongPress()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3583
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMultitapping()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3584
    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTapCount:I

    if-ltz v2, :cond_2

    .line 3585
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->multitapTimeOut()V

    .line 3593
    :cond_0
    :goto_0
    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mPopupLayout:I

    if-nez v2, :cond_3

    .line 3610
    :cond_1
    :goto_1
    return v1

    .line 3587
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3588
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetMultiTap()V

    goto :goto_0

    .line 3597
    :cond_3
    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 3601
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    aget-object v0, v2, v3

    .line 3603
    .local v0, "popupKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_5

    .line 3604
    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v3, 0xb79

    if-eq v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3605
    :cond_4
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 3610
    :cond_5
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->onLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    goto :goto_1
.end method

.method public postAddMoreSuggestions()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2749
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2751
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2754
    :cond_0
    return-void
.end method

.method public final prepareFlickerPopup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3953
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3954
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3956
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    .line 3957
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFlickerPopup:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFlickerView:Landroid/view/View;

    .line 3958
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFlickerView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3959
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3960
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3961
    return-void
.end method

.method public prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 2
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 2795
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mExactKeyboardPhrase:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 2796
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 2797
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2798
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 2799
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollPrev()V

    .line 2800
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 2814
    :cond_0
    :goto_0
    return-void

    .line 2803
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->suggestions()Ljava/util/List;

    move-result-object v0

    .line 2804
    .local v0, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showGridCandidatesView(Ljava/util/List;)V

    goto :goto_0

    .line 2806
    .end local v0    # "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2
    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletionOn:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Completions;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2807
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->suggestions()Ljava/util/List;

    move-result-object v0

    .line 2808
    .restart local v0    # "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2809
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showGridCandidatesView(Ljava/util/List;)V

    goto :goto_0
.end method

.method public refreshBTAutoCorrection()V
    .locals 3

    .prologue
    .line 1985
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->refreshBTAutoCorrection()V

    .line 1986
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/16 v1, 0x63

    iget-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->autoCorrectionEnabled:Z

    invoke-virtual {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setAttribute(IZ)Z

    .line 1987
    return-void
.end method

.method protected resetFlickerIndex()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 4261
    sget-object v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "resetFlickerIndex"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 4262
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    .line 4263
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    .line 4264
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTopKeyFlicerUp:Z

    .line 4265
    return-void
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 12
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/CharSequence;
    .param p3, "source"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x4

    const/4 v10, -0x1

    const/16 v9, 0xff

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1612
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 1613
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1614
    if-eqz v2, :cond_0

    .line 1616
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1617
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1618
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1621
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->confirmSelectedWordWhenConverting(I)Z

    move-result v0

    .line 1622
    .local v0, "allConfirmed":Z
    if-eq p1, v10, :cond_1

    if-eqz v0, :cond_5

    .line 1624
    :cond_1
    iput v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 1626
    iput v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 1627
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1628
    .local v4, "romajiString":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5, v4}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getExactType(Ljava/lang/StringBuilder;)V

    .line 1630
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1632
    .local v3, "kana":Landroid/text/SpannableStringBuilder;
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5, v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getInlineText(Landroid/text/SpannableStringBuilder;)V

    .line 1634
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 1635
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->ShowNextWordPrediction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1639
    :goto_0
    if-eqz v0, :cond_2

    .line 1640
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 1643
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeyboardInput()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1644
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissSegmentationPopup()V

    .line 1780
    .end local v0    # "allConfirmed":Z
    .end local v3    # "kana":Landroid/text/SpannableStringBuilder;
    .end local v4    # "romajiString":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    return-void

    .line 1637
    .restart local v0    # "allConfirmed":Z
    .restart local v3    # "kana":Landroid/text/SpannableStringBuilder;
    .restart local v4    # "romajiString":Ljava/lang/StringBuilder;
    :cond_4
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->ShowNextWordPrediction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1649
    .end local v3    # "kana":Landroid/text/SpannableStringBuilder;
    .end local v4    # "romajiString":Ljava/lang/StringBuilder;
    :cond_5
    const/4 v5, 0x2

    iput v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 1651
    iput v11, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    goto :goto_1

    .line 1657
    .end local v0    # "allConfirmed":Z
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeyboardInput()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1658
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissSegmentationPopup()V

    .line 1661
    :cond_7
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-nez v5, :cond_8

    .line 1663
    iget-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletionOn:Z

    if-eqz v5, :cond_3

    if-ltz p1, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v5}, Lcom/nuance/swype/input/Completions;->size()I

    move-result v5

    if-ge p1, v5, :cond_3

    .line 1664
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v5, p1}, Lcom/nuance/swype/input/Completions;->get(I)Landroid/view/inputmethod/CompletionInfo;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    goto :goto_1

    .line 1669
    :cond_8
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lcom/nuance/swype/input/EditState;->selectWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1672
    if-eqz v2, :cond_9

    .line 1673
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1674
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1675
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1678
    :cond_9
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1680
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getSpeechAlternateCandidates()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_c

    .line 1682
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->speechChooseCandidate(I)V

    .line 1765
    :cond_a
    :goto_2
    if-nez p1, :cond_b

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mExactKeyboardPhrase:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mExactKeyboardPhrase:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    iget-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mExactKeyboardShowable:Z

    if-eqz v5, :cond_b

    .line 1768
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1770
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1771
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mExactKeyboardPhrase:Ljava/lang/String;

    invoke-interface {v2, v5, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1772
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1774
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearAllKeys()Z

    .line 1776
    :cond_b
    iput v11, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 1778
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->ShowNextWordPrediction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1779
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    goto/16 :goto_1

    .line 1685
    :cond_c
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_f

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->isHiraIndex(C)I

    move-result v5

    if-nez v5, :cond_f

    .line 1688
    const/16 p1, 0xff

    .line 1690
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordListBak:Ljava/util/List;

    if-eqz v5, :cond_d

    .line 1692
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordListBak:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_d

    .line 1694
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordListBak:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1696
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1698
    move p1, v1

    .line 1704
    .end local v1    # "i":I
    :cond_d
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isUDBSubstitutionField()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1706
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5, p1, v7}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->wordSelected(IZ)V

    goto/16 :goto_2

    .line 1692
    .restart local v1    # "i":I
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1709
    .end local v1    # "i":I
    :cond_f
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v5

    if-nez v5, :cond_10

    if-ltz p1, :cond_10

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_10

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-static {v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isLetterAndDigit(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1713
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isUDBSubstitutionField()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1715
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5, v9, v7}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->wordSelected(IZ)V

    goto/16 :goto_2

    .line 1717
    :cond_10
    if-ltz p1, :cond_13

    .line 1719
    const/16 p1, 0xff

    .line 1721
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordListBak:Ljava/util/List;

    if-eqz v5, :cond_11

    .line 1723
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordListBak:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_11

    .line 1725
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordListBak:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1727
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1729
    move p1, v1

    .line 1735
    .end local v1    # "i":I
    :cond_11
    if-eq p1, v9, :cond_a

    .line 1737
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5, p1, v7}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->wordSelected(IZ)V

    goto/16 :goto_2

    .line 1723
    .restart local v1    # "i":I
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1741
    .end local v1    # "i":I
    :cond_13
    const/16 p1, 0xff

    .line 1743
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_14

    .line 1745
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1747
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1749
    move p1, v1

    .line 1754
    :cond_14
    if-eq p1, v9, :cond_a

    .line 1756
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isUDBSubstitutionField()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1759
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5, p1, v7}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->wordSelected(IZ)V

    goto/16 :goto_2

    .line 1743
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method protected sendHardKeyChar(C)V
    .locals 4
    .param p1, "character"    # C

    .prologue
    const/4 v3, 0x1

    .line 4925
    packed-switch p1, :pswitch_data_0

    .line 4932
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4933
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 4934
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4939
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 4940
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateShiftKeyState()V

    .line 4941
    return-void

    .line 4927
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/IME;->sendDefaultEditorAction(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4928
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IME;->sendDownUpKeyEvents(I)V

    goto :goto_0

    .line 4925
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public setContainerView(Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;)V
    .locals 0
    .param p1, "container"    # Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJpWordPageContainer:Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;

    .line 396
    return-void
.end method

.method public setGridCandidates(Ljava/util/List;I)V
    .locals 19
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
    .line 2949
    .local p1, "aLableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/nuance/swype/input/R$dimen;->key_text_size:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 2951
    .local v16, "textSize":I
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 2952
    .local v12, "paint":Landroid/graphics/Paint;
    sget-object v17, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2953
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2954
    sget-object v17, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2955
    div-int/lit8 v17, v16, 0x3

    add-int/lit8 v11, v17, 0x1

    .line 2957
    .local v11, "paddingWidth":I
    const/4 v6, 0x0

    .line 2958
    .local v6, "curRowWidth":I
    const/4 v5, 0x0

    .line 2959
    .local v5, "curRowNumber":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2960
    .local v14, "rowKeyWidth":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRows:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 2961
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_8

    .line 2964
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRows:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-gt v0, v5, :cond_3

    .line 2965
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2966
    .local v4, "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRows:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2967
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2968
    .local v3, "curRowKeyWidth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2975
    :goto_1
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2976
    .local v15, "str":Ljava/lang/String;
    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x2

    mul-int/lit8 v18, v11, 0x2

    add-int v9, v17, v18

    .line 2977
    .local v9, "keyWidth":I
    mul-int/lit8 v17, v11, 0x2

    add-int v17, v17, v16

    move/from16 v0, v17

    if-ge v9, v0, :cond_1

    .line 2978
    mul-int/lit8 v17, v11, 0x2

    add-int v9, v16, v17

    .line 2982
    :cond_1
    add-int v17, v6, v9

    move/from16 v0, v17

    move/from16 v1, p2

    if-le v0, v1, :cond_7

    .line 2984
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2985
    :cond_2
    new-instance v17, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2986
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3004
    :goto_2
    const/4 v6, 0x0

    .line 3005
    add-int/lit8 v5, v5, 0x1

    .line 2961
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 2970
    .end local v3    # "curRowKeyWidth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    .end local v9    # "keyWidth":I
    .end local v15    # "str":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRows:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2971
    .restart local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .restart local v3    # "curRowKeyWidth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 2988
    .restart local v9    # "keyWidth":I
    .restart local v15    # "str":Ljava/lang/String;
    :cond_4
    sub-int v17, p2, v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    div-int v2, v17, v18

    .line 2989
    .local v2, "addingWidth":I
    const/4 v13, 0x0

    .line 2990
    .local v13, "refreshedRowWidth":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_6

    .line 2991
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int v10, v17, v2

    .line 2992
    .local v10, "newKeyWidth":I
    add-int/2addr v13, v10

    .line 2994
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v0, v8, :cond_5

    .line 2995
    sub-int v17, p2, v13

    add-int v10, v10, v17

    .line 2997
    :cond_5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v8, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2998
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move-object/from16 v0, v17

    iput v10, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 2990
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 3001
    .end local v10    # "newKeyWidth":I
    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 3007
    .end local v2    # "addingWidth":I
    .end local v8    # "j":I
    .end local v13    # "refreshedRowWidth":I
    :cond_7
    add-int/2addr v6, v9

    .line 3008
    new-instance v17, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move-object/from16 v0, v17

    invoke-direct {v0, v9, v15}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3009
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3013
    .end local v3    # "curRowKeyWidth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    .end local v9    # "keyWidth":I
    .end local v15    # "str":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 4
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1294
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1296
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1297
    iput-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTraceEnabledOnKeyboard:Z

    .line 1312
    :goto_0
    return-void

    .line 1301
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setKeyboarLayoutDatabase()V

    .line 1303
    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    const/16 v3, 0x600

    if-ne v2, v3, :cond_3

    .line 1304
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setPressDownPreviewEnabled(Z)V

    .line 1309
    :goto_1
    iget-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mNavOn:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadFlickrInputSupported:Z

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeyboardInput()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTraceInputSuggestionOn:Z

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v2, v3, :cond_4

    :goto_2
    iput-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTraceEnabledOnKeyboard:Z

    goto :goto_0

    .line 1306
    :cond_3
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setPressDownPreviewEnabled(Z)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1309
    goto :goto_2
.end method

.method public setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .locals 3
    .param p1, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 1812
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1828
    :goto_0
    return-void

    .line 1817
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 1818
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->startSession()V

    .line 1819
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissPopupKeyboard()V

    .line 1821
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 1822
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 1824
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 1826
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_0
.end method

.method protected setNotMatchToolTipSuggestion()V
    .locals 1

    .prologue
    .line 4402
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->syncCandidateDisplayStyleToMode()V

    .line 4403
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showNotMatchTootip()V

    .line 4404
    return-void
.end method

.method public setScrollable(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 2764
    iput-boolean p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mScrollable:Z

    .line 2765
    return-void
.end method

.method protected setSwypeKeytoolTipSuggestion()V
    .locals 1

    .prologue
    .line 4394
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    .line 4395
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showSwypeTooltip()V

    .line 4396
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->syncCandidateDisplayStyleToMode()V

    .line 4398
    :cond_0
    return-void
.end method

.method protected shouldShowTips()Z
    .locals 1

    .prologue
    .line 3567
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTraceInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showNav(I)V
    .locals 17
    .param p1, "keyindex"    # I

    .prologue
    .line 3615
    sget-object v11, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v12, "showNav()...keyindex: "

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3616
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v11

    if-nez v11, :cond_1

    .line 3716
    :cond_0
    :goto_0
    return-void

    .line 3619
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    .line 3620
    .local v10, "previewPopup":Landroid/widget/PopupWindow;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3623
    .local v8, "keys":[Lcom/nuance/swype/input/KeyboardEx$Key;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    if-ltz v11, :cond_2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v12, v12

    if-ge v11, v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_3

    .line 3624
    :cond_2
    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3629
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mPopupParent:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 3632
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    if-ltz v11, :cond_4

    .line 3633
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKeyNav:I

    .line 3635
    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKeyNav:I

    aget-object v7, v8, v11

    .line 3637
    .local v7, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    if-nez v11, :cond_5

    .line 3638
    const/4 v11, 0x5

    new-array v11, v11, [Lcom/nuance/swype/widget/PreviewView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    .line 3639
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFlickerView:Landroid/view/View;

    sget v14, Lcom/nuance/swype/input/R$id;->flicker_zero:I

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/widget/PreviewView;

    aput-object v11, v12, v13

    .line 3640
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFlickerView:Landroid/view/View;

    sget v14, Lcom/nuance/swype/input/R$id;->flicker_one:I

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/widget/PreviewView;

    aput-object v11, v12, v13

    .line 3641
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFlickerView:Landroid/view/View;

    sget v14, Lcom/nuance/swype/input/R$id;->flicker_two:I

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/widget/PreviewView;

    aput-object v11, v12, v13

    .line 3642
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFlickerView:Landroid/view/View;

    sget v14, Lcom/nuance/swype/input/R$id;->flicker_three:I

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/widget/PreviewView;

    aput-object v11, v12, v13

    .line 3643
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFlickerView:Landroid/view/View;

    sget v14, Lcom/nuance/swype/input/R$id;->flicker_four:I

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/widget/PreviewView;

    aput-object v11, v12, v13

    .line 3646
    :cond_5
    move/from16 v4, p1

    .line 3647
    .local v4, "index":I
    if-ltz p1, :cond_6

    iget-object v11, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    const/16 v12, 0x3040

    if-le v11, v12, :cond_7

    :cond_6
    iget-object v11, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    const v12, 0xaa37

    if-ne v11, v12, :cond_8

    .line 3648
    :cond_7
    const/4 v4, -0x1

    .line 3651
    :cond_8
    const/4 v11, -0x1

    if-ne v4, v11, :cond_9

    .line 3652
    invoke-virtual {v10}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 3655
    :cond_9
    if-ltz p1, :cond_c

    const/4 v11, 0x5

    move/from16 v0, p1

    if-ge v0, v11, :cond_c

    .line 3656
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v11, 0x5

    if-ge v2, v11, :cond_a

    .line 3657
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    aget-object v11, v11, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mPopupTextColor:I

    invoke-virtual {v11, v12}, Lcom/nuance/swype/widget/PreviewView;->setTextColor(I)V

    .line 3658
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    aget-object v11, v11, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerKeyPopupBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v12}, Lcom/nuance/swype/widget/PreviewView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3659
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    aget-object v11, v11, v2

    const-string v12, ""

    invoke-virtual {v11, v12}, Lcom/nuance/swype/widget/PreviewView;->setText(Ljava/lang/CharSequence;)V

    .line 3656
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3662
    :cond_a
    const/4 v2, 0x0

    :goto_2
    const/4 v11, 0x5

    if-ge v2, v11, :cond_c

    .line 3663
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    aget-object v11, v11, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerKeyTextSize:I

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Lcom/nuance/swype/widget/PreviewView;->setTextSizePixels(F)V

    .line 3664
    move/from16 v0, p1

    if-ne v2, v0, :cond_b

    .line 3665
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    aget-object v11, v11, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->miTraceColor:I

    invoke-virtual {v11, v12}, Lcom/nuance/swype/widget/PreviewView;->setTextColor(I)V

    .line 3666
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    aget-object v11, v11, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerKeyPopupSelectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v12}, Lcom/nuance/swype/widget/PreviewView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3662
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3673
    .end local v2    # "i":I
    :cond_c
    const/4 v11, 0x2

    new-array v1, v11, [C

    .line 3674
    .local v1, "c":[C
    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-char v12, v1, v11

    .line 3675
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerKeyHeight:I

    mul-int/lit8 v11, v11, 0x3

    add-int/lit8 v9, v11, 0x4

    .line 3676
    .local v9, "popupWidth":I
    const/4 v3, 0x0

    .local v3, "icodes":I
    :goto_3
    iget-object v11, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v11, v11

    if-ge v3, v11, :cond_12

    .line 3680
    const/4 v11, 0x0

    iget-object v12, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v12, v12, v3

    int-to-char v12, v12

    aput-char v12, v1, v11

    .line 3682
    const/4 v11, 0x0

    aget-char v11, v1, v11

    invoke-static {v11}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->isBigHiragana(C)Z

    move-result v6

    .line 3684
    .local v6, "isHiraBig":Z
    if-ltz v3, :cond_d

    const/4 v11, 0x5

    if-ge v3, v11, :cond_d

    if-nez v6, :cond_e

    :cond_d
    const/4 v11, 0x0

    aget-char v11, v1, v11

    const/16 v12, 0x30fc

    if-ne v11, v12, :cond_10

    .line 3686
    :cond_e
    iget-object v11, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    const/16 v12, 0x3084

    if-ne v11, v12, :cond_11

    .line 3687
    if-eqz v3, :cond_f

    const/4 v11, 0x1

    if-eq v3, v11, :cond_f

    const/4 v11, 0x2

    if-ne v3, v11, :cond_10

    .line 3688
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    mul-int/lit8 v12, v3, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v1, v12, v13}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/nuance/swype/widget/PreviewView;->setText(Ljava/lang/CharSequence;)V

    .line 3678
    :cond_10
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3691
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    aget-object v11, v11, v3

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v1, v12, v13}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/nuance/swype/widget/PreviewView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 3696
    .end local v6    # "isHiraBig":Z
    :cond_12
    iget v11, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v12, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    div-int/lit8 v12, v9, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mPopupPreviewX:I

    .line 3697
    iget v11, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v12, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    div-int/lit8 v12, v9, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mPopupPreviewY:I

    .line 3699
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOffsetInWindow:[I

    if-nez v11, :cond_13

    .line 3700
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->recalculateOffsets()V

    .line 3703
    :cond_13
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerKeyHeight:I

    mul-int/lit8 v5, v11, 0x2

    .line 3705
    .local v5, "interval":I
    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 3707
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mPopupPreviewX:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOffsetInWindow:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mPopupPreviewY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOffsetInWindow:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    sub-int/2addr v12, v5

    invoke-virtual {v10, v11, v12, v9, v9}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0

    .line 3709
    :cond_14
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v11

    if-nez v11, :cond_0

    .line 3710
    invoke-virtual {v10, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3711
    invoke-virtual {v10, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3713
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mPopupParent:Landroid/view/View;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mPopupPreviewX:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOffsetInWindow:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mPopupPreviewY:I

    sub-int/2addr v14, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOffsetInWindow:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    add-int/2addr v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method

.method public showSegmentationPopup()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3995
    iput-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isSegmentationPopupNeeded:Z

    .line 3996
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_1

    .line 4014
    :cond_0
    :goto_0
    return-void

    .line 4000
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->recalculateOffsets()V

    .line 4001
    const/4 v0, 0x0

    .line 4004
    .local v0, "y":I
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4005
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->getHeight()I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 4007
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4008
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOffsetInWindow:[I

    aget v2, v2, v4

    add-int/lit8 v2, v2, 0x0

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOffsetInWindow:[I

    aget v3, v3, v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 4010
    :cond_3
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4011
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 4012
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOffsetInWindow:[I

    aget v2, v2, v4

    add-int/lit8 v2, v2, 0x0

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOffsetInWindow:[I

    aget v3, v3, v5

    invoke-virtual {v1, p0, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V
    .locals 7
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 484
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 486
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v3, :cond_2

    .line 491
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateCandidatesSize()V

    .line 496
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getEditState()Lcom/nuance/swype/input/EditState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->startSession()V

    .line 500
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissPopupKeyboard()V

    .line 502
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 505
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 507
    iput-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletionOn:Z

    .line 510
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->loadSettings()V

    .line 512
    iput-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRecaptureOn:Z

    .line 514
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    .line 516
    .local v2, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->startInputSession()V

    .line 518
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    .line 519
    .local v0, "currentLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    if-eqz p2, :cond_7

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v3, :cond_7

    .line 522
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3, v0, p1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 529
    :goto_1
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v3}, Lcom/nuance/swype/input/Completions;->clear()V

    .line 531
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 532
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 533
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setAttribute(II)Z

    .line 536
    :cond_3
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 541
    iput-boolean v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    .line 544
    :cond_4
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputFieldInfo;->isCompletionField()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 550
    :cond_5
    iput-boolean v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    .line 552
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->initGestureDetector(II)V

    .line 553
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearKeyOffsets()V

    .line 554
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->initSegmentationPopup()V

    .line 555
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->postDelayResumeSpeech()V

    goto/16 :goto_0

    .line 524
    :cond_7
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3, p1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 525
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v4, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 526
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setMultitapOrAmbigMode()V

    goto :goto_1
.end method

.method public toggleAmbigMode()V
    .locals 6

    .prologue
    .line 1994
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1996
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 1997
    .local v0, "currentInputMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 1999
    .local v1, "notHandwriting":Z
    :goto_0
    const-string v2, "multitap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2001
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v5, v5, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;Z)Lcom/nuance/swype/input/XT9Keyboard;

    .line 2009
    .end local v0    # "currentInputMode":Ljava/lang/String;
    .end local v1    # "notHandwriting":Z
    :cond_0
    :goto_1
    return-void

    .line 1997
    .restart local v0    # "currentInputMode":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2005
    .restart local v1    # "notHandwriting":Z
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    const-string v5, "multitap"

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;Z)Lcom/nuance/swype/input/XT9Keyboard;

    goto :goto_1
.end method

.method public updateSegemetationPopup(II)V
    .locals 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 4016
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    .line 4026
    :cond_0
    :goto_0
    return-void

    .line 4019
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->recalculateOffsets()V

    .line 4020
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4023
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOffsetInWindow:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x0

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOffsetInWindow:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
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
    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 660
    invoke-super/range {p0 .. p6}, Lcom/nuance/swype/input/InputView;->updateSelection(IIIIII)V

    .line 663
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 665
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 671
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v5, :cond_0

    .line 674
    if-ne p3, p1, :cond_2

    if-eq p4, p2, :cond_3

    :cond_2
    if-eq p1, p2, :cond_3

    .line 679
    if-ne p5, p6, :cond_4

    if-ne p5, v6, :cond_4

    .line 681
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrWordAndClearWCL()V

    .line 708
    :cond_3
    :goto_1
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v2, v5, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeEditorText:Landroid/view/inputmethod/ExtractedText;

    .line 709
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v4, :cond_5

    .line 710
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeInlineText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 683
    :cond_4
    if-ne p3, p4, :cond_3

    .line 684
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v2, v5, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v3

    .line 693
    .local v3, "text":Landroid/view/inputmethod/ExtractedText;
    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeEditorText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v5, :cond_3

    iget-object v5, v3, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeEditorText:Landroid/view/inputmethod/ExtractedText;

    iget-object v5, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    iget-object v5, v3, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeEditorText:Landroid/view/inputmethod/ExtractedText;

    iget-object v6, v6, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeInlineText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeInlineText:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 699
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrWordAndClearWCL()V

    goto :goto_1

    .line 712
    .end local v3    # "text":Landroid/view/inputmethod/ExtractedText;
    :cond_5
    const-string v4, ""

    iput-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeInlineText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 717
    :cond_6
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v2, v5, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeEditorText:Landroid/view/inputmethod/ExtractedText;

    .line 718
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_c

    .line 719
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeInlineText:Ljava/lang/CharSequence;

    .line 723
    :goto_2
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v5, :cond_b

    .line 725
    invoke-interface {v2, v1, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 727
    .local v0, "charBeforeCusor":Ljava/lang/CharSequence;
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_d

    .line 729
    :cond_7
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->breakContext()V

    .line 741
    :goto_3
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v5, v0}, Lcom/nuance/swype/input/EditState;->cursorChanged(Ljava/lang/CharSequence;)V

    .line 744
    if-ne p3, p6, :cond_8

    if-ne p4, p6, :cond_8

    if-ne p6, v6, :cond_f

    if-nez p4, :cond_f

    .line 749
    .local v1, "cursorChanged":Z
    :cond_8
    :goto_4
    iget-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mUpdatingInline:Z

    if-nez v5, :cond_10

    if-eqz v1, :cond_10

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v5

    if-lez v5, :cond_10

    .line 751
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v5

    if-nez v5, :cond_9

    .line 752
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 754
    :cond_9
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 755
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrWordAndClearWCL()V

    .line 757
    :cond_a
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v5}, Lcom/nuance/swype/input/EditState;->start()V

    .line 780
    .end local v0    # "charBeforeCusor":Ljava/lang/CharSequence;
    .end local v1    # "cursorChanged":Z
    :cond_b
    :goto_5
    iput p3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastSelStart:I

    .line 781
    iput p4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastSelEnd:I

    .line 786
    iput-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mUpdatingInline:Z

    .line 788
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 721
    :cond_c
    const-string v5, ""

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeInlineText:Ljava/lang/CharSequence;

    goto :goto_2

    .line 730
    .restart local v0    # "charBeforeCusor":Ljava/lang/CharSequence;
    :cond_d
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v5

    if-nez v5, :cond_e

    .line 732
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->breakContext()V

    goto :goto_3

    .line 735
    :cond_e
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    goto :goto_3

    :cond_f
    move v1, v4

    .line 744
    goto :goto_4

    .line 758
    .restart local v1    # "cursorChanged":Z
    :cond_10
    iget-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRecaptureOn:Z

    if-eqz v5, :cond_b

    if-le p4, p3, :cond_b

    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastSelStart:I

    if-eq v5, p3, :cond_b

    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastSelEnd:I

    if-eq v5, p4, :cond_b

    .line 761
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 763
    invoke-interface {v2, p4, p4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 765
    invoke-interface {v2, p3, p4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 767
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 773
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v5

    if-lez v5, :cond_b

    .line 775
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    goto :goto_5
.end method
