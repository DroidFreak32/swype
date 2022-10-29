.class public Lcom/nuance/swype/input/japanese/JapaneseInputView;
.super Lcom/nuance/swype/input/InputView;
.source "JapaneseInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;,
        Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;
    }
.end annotation


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

.field protected static final MSG_DELAY_SHOW_SEGMENTATION_POP:I = 0x17

.field protected static final MSG_DELAY_UPDATE_SEGMENTATION_POP:I = 0x16

.field private static final QWERTY_KEYBOARD_TYPE:I = 0x1

.field private static final RC_PHRASE_CONVERSION:I = 0x1

.field private static final RC_PHRASE_CONVERSION_AGAIN:I = 0x4

.field private static final RC_PHRASE_REDUCTION:I = 0x2

.field private static final RC_PHREAE_EXPANTION:I = 0x3

.field private static final TRACE_GESTURE:I = -0x1

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field JpInputViewCallback:Landroid/os/Handler$Callback;

.field JpInputViewHandler:Landroid/os/Handler;

.field private arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

.field private candidatesPopup:Landroid/view/View;

.field private charUtils:Lcom/nuance/swype/util/CharacterUtilities;

.field private closeSegmentationButton:Landroid/view/View;

.field private covertingMidashigo:Ljava/lang/StringBuilder;

.field private covertingYomi:Ljava/lang/StringBuilder;

.field private flickerKeyHeight:I

.field private flickerKeyPopupBackground:Landroid/graphics/drawable/Drawable;

.field private flickerKeyPopupSelectedBackground:Landroid/graphics/drawable/Drawable;

.field private flickerKeyTextSize:I

.field private flickerMiddleKeyRadius:D

.field private gridViewFunctionButtonPressed:Z

.field private inputContextRequestHandler:Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;

.field private isKeypadFlickrInputSupported:Z

.field private isKeypadMultitapInputSupported:Z

.field private isSegmentationPopupNeeded:Z

.field private isTopKeyFlicerUp:Z

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

.field private mConvert:I

.field private mCurrentCursorPosInline:I

.field private mCurrentKeyNav:I

.field private mCursorPosCount:I

.field private final mExactWordSpan:Landroid/text/style/StyleSpan;

.field private mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

.field private mFGNextWordPredictionSpan:Landroid/text/style/ForegroundColorSpan;

.field private mFGWordErrorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mFlickerView:Landroid/view/View;

.field protected mInlineTextBak:Ljava/lang/CharSequence;

.field protected mInlineWord:Landroid/text/SpannableStringBuilder;

.field private mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

.field private mJapaneseNavPopup:Landroid/widget/PopupWindow;

.field private mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

.field protected mJpWordPageContainer:Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;

.field private mKanaDivInfoOfInline:[I

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

.field touchKeyActionHandler:Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    const-string/jumbo v0, "JapaneseInputView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v4, 0x101

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2447
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRows:Ljava/util/List;

    .line 136
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    .line 137
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mExactWordSpan:Landroid/text/style/StyleSpan;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    .line 156
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 158
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    .line 159
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 165
    iput-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadMultitapInputSupported:Z

    .line 166
    iput-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadFlickrInputSupported:Z

    .line 168
    iput-boolean v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mScrollable:Z

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConfirmedInlineRomaji:Ljava/lang/StringBuilder;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConfirmedKanji:Ljava/lang/StringBuilder;

    .line 178
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCReadingDivInfo:[I

    .line 179
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    .line 181
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 198
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKeyNav:I

    .line 203
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    .line 204
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    .line 205
    iput-boolean v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTopKeyFlicerUp:Z

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->covertingYomi:Ljava/lang/StringBuilder;

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->covertingMidashigo:Ljava/lang/StringBuilder;

    .line 216
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRomajiDivInfoOfInline:[I

    .line 217
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKanaDivInfoOfInline:[I

    .line 331
    new-instance v0, Lcom/nuance/swype/input/japanese/JapaneseInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView$1;-><init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewCallback:Landroid/os/Handler$Callback;

    .line 378
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    .line 4487
    new-instance v0, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;

    invoke-direct {v0, p0, v6}, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;-><init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;Lcom/nuance/swype/input/japanese/JapaneseInputView$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;

    .line 4530
    new-instance v0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;

    invoke-direct {v0, p0, v6}, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;-><init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;Lcom/nuance/swype/input/japanese/JapaneseInputView$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;

    .line 2449
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    aput v2, v0, v3

    .line 2450
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCReadingDivInfo:[I

    aput v2, v0, v3

    .line 2451
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->prepareFlickerPopup()V

    .line 2453
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v4, 0x101

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2457
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRows:Ljava/util/List;

    .line 136
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    .line 137
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mExactWordSpan:Landroid/text/style/StyleSpan;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    .line 156
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 158
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    .line 159
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 165
    iput-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadMultitapInputSupported:Z

    .line 166
    iput-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadFlickrInputSupported:Z

    .line 168
    iput-boolean v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mScrollable:Z

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConfirmedInlineRomaji:Ljava/lang/StringBuilder;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConfirmedKanji:Ljava/lang/StringBuilder;

    .line 178
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCReadingDivInfo:[I

    .line 179
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    .line 181
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 198
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKeyNav:I

    .line 203
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    .line 204
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    .line 205
    iput-boolean v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTopKeyFlicerUp:Z

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->covertingYomi:Ljava/lang/StringBuilder;

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->covertingMidashigo:Ljava/lang/StringBuilder;

    .line 216
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRomajiDivInfoOfInline:[I

    .line 217
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKanaDivInfoOfInline:[I

    .line 331
    new-instance v0, Lcom/nuance/swype/input/japanese/JapaneseInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView$1;-><init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewCallback:Landroid/os/Handler$Callback;

    .line 378
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    .line 4487
    new-instance v0, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;

    invoke-direct {v0, p0, v6}, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;-><init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;Lcom/nuance/swype/input/japanese/JapaneseInputView$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;

    .line 4530
    new-instance v0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;

    invoke-direct {v0, p0, v6}, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;-><init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;Lcom/nuance/swype/input/japanese/JapaneseInputView$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;

    .line 2459
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    aput v2, v0, v3

    .line 2460
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCReadingDivInfo:[I

    aput v2, v0, v3

    .line 2461
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->prepareFlickerPopup()V

    .line 2462
    return-void
.end method

.method private ShowNextWordPrediction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 10
    .param p1, "hiragana"    # Ljava/lang/CharSequence;
    .param p2, "word"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    .line 1508
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1510
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOpenwnnEngine:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    if-eqz v3, :cond_4e

    .line 1512
    if-eqz p1, :cond_3f

    .line 1513
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOpenwnnEngine:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->doExactSearch(Ljava/lang/String;Ljava/lang/String;)Ljp/co/omronsoft/openwnn/WnnWord;

    move-result-object v2

    .line 1518
    .local v2, "previousWord":Ljp/co/omronsoft/openwnn/WnnWord;
    :goto_1a
    if-eqz v2, :cond_4e

    .line 1520
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOpenwnnEngine:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    invoke-virtual {v3, v2}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->doPredictionSearch(Ljp/co/omronsoft/openwnn/WnnWord;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1522
    .local v1, "predictionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_4e

    .line 1524
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1526
    .local v0, "aWord":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 1515
    .end local v0    # "aWord":Ljava/lang/String;
    .end local v1    # "predictionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "previousWord":Ljp/co/omronsoft/openwnn/WnnWord;
    :cond_3f
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOpenwnnEngine:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->doExactSearch(Ljava/lang/String;Ljava/lang/String;)Ljp/co/omronsoft/openwnn/WnnWord;

    move-result-object v2

    .restart local v2    # "previousWord":Ljp/co/omronsoft/openwnn/WnnWord;
    goto :goto_1a

    .line 1531
    .end local v2    # "previousWord":Ljp/co/omronsoft/openwnn/WnnWord;
    :cond_4e
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1532
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-direct {p0, v3, v6, v6}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateWordListView(Ljava/util/List;IZ)V

    .line 1533
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mUpdatingInline:Z

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setSpeechViewHost()V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hideGridCandidatesView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setCandidatesViewShown(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isSegmentationPopupNeeded:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->postDelayShowSegmentationPopupMessage()V

    return-void
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->gridViewFunctionButtonPressed:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->gridViewFunctionButtonPressed:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setCandidatesViewShown(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resumeSpeech()V

    return-void
.end method

.method static synthetic access$2000(Lcom/nuance/swype/input/japanese/JapaneseInputView;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->indexOfInline(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2102(Lcom/nuance/swype/input/japanese/JapaneseInputView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    return p1
.end method

.method static synthetic access$2300(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isValidBuild()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadFlickrInputSupported:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Landroid/widget/PopupWindow;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTopKeyFlicerUp:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTopKeyFlicerUp:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/nuance/swype/input/japanese/JapaneseInputView;)D
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerMiddleKeyRadius:D

    return-wide v0
.end method

.method static synthetic access$2800(Lcom/nuance/swype/input/japanese/JapaneseInputView;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    return v0
.end method

.method static synthetic access$2900(Lcom/nuance/swype/input/japanese/JapaneseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->startInputSession()V

    return-void
.end method

.method static synthetic access$3000(Lcom/nuance/swype/input/japanese/JapaneseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;I)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->pressKey([Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/nuance/swype/input/japanese/JapaneseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/nuance/swype/input/japanese/JapaneseInputView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetTrace(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/nuance/swype/input/japanese/JapaneseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/nuance/swype/input/japanese/JapaneseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    return-void
.end method

.method static synthetic access$3500(Lcom/nuance/swype/input/japanese/JapaneseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/nuance/swype/input/japanese/JapaneseInputView;I[F[F[IZI)V
    .registers 7
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # [F
    .param p3, "x3"    # [F
    .param p4, "x4"    # [I
    .param p5, "x5"    # Z
    .param p6, "x6"    # I

    .prologue
    .line 89
    invoke-virtual/range {p0 .. p6}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->onTouchMoved(I[F[F[IZI)V

    return-void
.end method

.method static synthetic access$3700(Lcom/nuance/swype/input/japanese/JapaneseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/nuance/swype/input/japanese/JapaneseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    return-void
.end method

.method static synthetic access$3900(Lcom/nuance/swype/input/japanese/JapaneseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeepingKeyboard:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/nuance/swype/input/japanese/JapaneseInputView;IZI)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleFunctionKey(IZI)V

    return-void
.end method

.method static synthetic access$4100(Lcom/nuance/swype/input/japanese/JapaneseInputView;Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/nuance/swype/input/japanese/JapaneseInputView;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isCommaOrPeriod(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrWordAndClearWCL()V

    return-void
.end method

.method static synthetic access$4500(Lcom/nuance/swype/input/japanese/JapaneseInputView;Lcom/nuance/input/swypecorelib/Candidates$Source;)I
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadMultitapInputSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4702(Lcom/nuance/swype/input/japanese/JapaneseInputView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    return p1
.end method

.method static synthetic access$4800(Lcom/nuance/swype/input/japanese/JapaneseInputView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->finishTrace(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/nuance/swype/input/japanese/JapaneseInputView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetTrace(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/nuance/swype/input/japanese/JapaneseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/nuance/swype/input/japanese/JapaneseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    return-void
.end method

.method static synthetic access$5200(Lcom/nuance/swype/input/japanese/JapaneseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/nuance/swype/input/japanese/JapaneseInputView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    return p1
.end method

.method static synthetic access$5500(Lcom/nuance/swype/input/japanese/JapaneseInputView;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    return v0
.end method

.method static synthetic access$5600(Lcom/nuance/swype/input/japanese/JapaneseInputView;Lcom/nuance/swype/input/KeyboardEx$Key;II)Z
    .registers 5
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->onShortPress(Lcom/nuance/swype/input/KeyboardEx$Key;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/swype/input/IME;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/nuance/swype/input/japanese/JapaneseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/nuance/swype/input/japanese/JapaneseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setMultitapOrAmbigMode()V

    return-void
.end method

.method static synthetic access$6000(Lcom/nuance/swype/input/japanese/JapaneseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/nuance/swype/input/japanese/JapaneseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/nuance/swype/input/japanese/JapaneseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # [Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    return-void
.end method

.method static synthetic access$6300(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/swype/input/IME;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/nuance/swype/input/japanese/JapaneseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6502(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInMultiTap:Z

    return p1
.end method

.method static synthetic access$6602(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInMultiTap:Z

    return p1
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/swype/input/InputView$WclPrompt;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->themeStoreWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;

    return-object v0
.end method

.method private addExactEnWordsFromUILayer()I
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3898
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3899
    .local v5, "newExactBuffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeyboardInput()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 3900
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v8, v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getExactType(Ljava/lang/StringBuilder;)V

    .line 3905
    :goto_11
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-gtz v8, :cond_1e

    .line 3945
    :cond_17
    :goto_17
    return v10

    .line 3902
    :cond_18
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 3909
    :cond_1e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 3910
    .local v4, "lowercaseEn":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 3911
    .local v6, "uppercaseEn":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 3914
    .local v2, "firstCapEn":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_51

    .line 3915
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3916
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    .line 3917
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 3916
    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3920
    .end local v0    # "ch":C
    :cond_51
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5d

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    .line 3924
    :cond_5d
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_a0

    .line 3925
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    .line 3926
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6c
    if-ge v3, v1, :cond_a0

    .line 3927
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 3928
    .local v7, "wd":Ljava/lang/CharSequence;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_94

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_94

    .line 3929
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9d

    .line 3930
    :cond_94
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3931
    add-int/lit8 v3, v3, -0x1

    .line 3932
    add-int/lit8 v1, v1, -0x1

    .line 3926
    :cond_9d
    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    .line 3937
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v7    # "wd":Ljava/lang/CharSequence;
    :cond_a0
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3938
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ba

    .line 3939
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3941
    :cond_ba
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    .line 3942
    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17
.end method

.method private addExplicit(ILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 2168
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    int-to-char v3, p1

    aput-char v3, v1, v2

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;->addExplicitSymbol([CLcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    invoke-static {v0, v1, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;->access$900(Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;[CLcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v0

    return v0
.end method

.method private cleanInlineWordSpanAndFlush()V
    .registers 7

    .prologue
    .line 3985
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2e

    .line 3986
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x121

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3988
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3990
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2e

    .line 3991
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3992
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3993
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 3996
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2e
    return-void
.end method

.method private clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V
    .registers 4
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_25

    .line 2203
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2204
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2206
    if-eqz p1, :cond_25

    .line 2208
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2209
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2210
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2213
    :cond_25
    return-void
.end method

.method private clearOneSymbol()V
    .registers 4

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getRomajiPosByCursorPos(I)I

    move-result v1

    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getRomajiBytesOfCurrentPos(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearKeyByIndex(II)Z

    .line 1286
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateRomajiInlineDivisionInfo()V

    .line 1287
    return-void
.end method

.method private composingState()Z
    .registers 3

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    .line 1165
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    .line 1166
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

.method private convertText2Romaji(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "textStr"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x40

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3950
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3951
    .local v4, "romajiString":Ljava/lang/StringBuilder;
    new-array v1, v5, [C

    .line 3952
    .local v1, "kana":[C
    new-array v3, v5, [C

    .line 3953
    .local v3, "romaji":[C
    new-array v2, v7, [I

    .line 3955
    .local v2, "plen":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_38

    .line 3957
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v1, v6

    .line 3959
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5, v1, v7, v3, v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->kanatoRomaji([CI[C[I)I

    move-result v5

    if-nez v5, :cond_35

    .line 3960
    aget v5, v2, v6

    aput-char v6, v3, v5

    .line 3961
    aget v5, v2, v6

    if-lez v5, :cond_35

    .line 3962
    aget v5, v2, v6

    invoke-static {v3, v6, v5}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3955
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 3967
    :cond_38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private cycleKeyboard()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2560
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_88

    move v3, v4

    .line 2562
    .local v3, "landscape":Z
    :goto_10
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    .line 2564
    .local v0, "alphaMode":Z
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v6

    if-eqz v6, :cond_c3

    if-nez v3, :cond_c3

    if-eqz v0, :cond_c3

    .line 2565
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    .line 2566
    .local v1, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDefaultPortraitLayoutOptions()I

    move-result v6

    iput v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->portraitInputOptions:I

    .line 2568
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 2569
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$InputMode;->getPortaitKeypadOptionsPrefKey()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->portraitInputOptions:I

    .line 2570
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 2569
    invoke-virtual {v1, v6, v7}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$InputMode;->getPortaitLayoutOptionsPrefKey()Ljava/lang/String;

    move-result-object v6

    .line 2572
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 2571
    invoke-virtual {v1, v6, v5}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$InputMode;->getPortaitLayoutOptionsPrefKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v5, v6, v7}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2583
    :goto_80
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleKeyboard()V

    .line 2586
    .end local v1    # "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    :goto_87
    return v4

    .end local v0    # "alphaMode":Z
    .end local v3    # "landscape":Z
    :cond_88
    move v3, v5

    .line 2560
    goto :goto_10

    .line 2576
    .restart local v0    # "alphaMode":Z
    .restart local v1    # "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    .restart local v3    # "landscape":Z
    :cond_8a
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDefaultPortraitKeypadOptions()I

    move-result v2

    .line 2577
    .local v2, "keypadInputOptions":I
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$InputMode;->getPortaitLayoutOptionsPrefKey()Ljava/lang/String;

    move-result-object v5

    .line 2578
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 2577
    invoke-virtual {v1, v5, v6}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2580
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$InputMode;->getPortaitLayoutOptionsPrefKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    .end local v1    # "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    .end local v2    # "keypadInputOptions":I
    :cond_c3
    move v4, v5

    .line 2586
    goto :goto_87
.end method

.method private doConversion()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2998
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v2

    if-nez v2, :cond_56

    .line 3000
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetConversionStrings()V

    .line 3002
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->covertingYomi:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getExactType(Ljava/lang/StringBuilder;)V

    .line 3004
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->indexOfInline(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->wordSelected(IZ)V

    .line 3006
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->startRangeConversion(I[CI)Z

    .line 3008
    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 3010
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3012
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandlistWhenRC(I)Z

    .line 3014
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateInlineWhenRC(I)Z

    .line 3019
    :goto_55
    return v0

    :cond_56
    move v0, v1

    goto :goto_55
.end method

.method private doConversionEx()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3024
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetConversionStrings()V

    .line 3026
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->covertingYomi:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getExactType(Ljava/lang/StringBuilder;)V

    .line 3028
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

    invoke-virtual {v0, v4, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->startRangeConversion(I[CI)Z

    .line 3030
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->indexOfInline(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->wordSelected(IZ)V

    .line 3032
    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 3034
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3036
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandlistWhenRC(I)Z

    .line 3038
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateInlineWhenRC(I)Z

    .line 3040
    return v3
.end method

.method private endInputSession()V
    .registers 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v0, :cond_e

    .line 599
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->breakContext()V

    .line 600
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->finishSession()V

    .line 602
    :cond_e
    return-void
.end method

.method private expandRangeConversion()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 3062
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCReadingDivInfo:[I

    aget v0, v0, v1

    if-ne v0, v4, :cond_11

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_11

    .line 3073
    :goto_10
    return v4

    .line 3065
    :cond_11
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3067
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

    .line 3069
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandlistWhenRC(I)Z

    .line 3071
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateInlineWhenRC(I)Z

    goto :goto_10
.end method

.method private extractWordBeforeCursor(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    .registers 8
    .param p1, "seqBeforCusor"    # Ljava/lang/CharSequence;
    .param p2, "word"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1958
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1960
    if-eqz p1, :cond_23

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_23

    .line 1963
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1966
    add-int/lit8 v0, v3, -0x1

    .local v0, "end":I
    :goto_12
    if-ltz v0, :cond_21

    .line 1968
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1966
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 1974
    :cond_21
    if-gez v0, :cond_24

    .line 2001
    .end local v0    # "end":I
    :cond_23
    :goto_23
    return-void

    .line 1980
    .restart local v0    # "end":I
    :cond_24
    const/4 v2, 0x1

    .line 1983
    .local v2, "valideSeq":Z
    add-int/lit8 v1, v0, -0x1

    .local v1, "start":I
    :goto_27
    if-ltz v1, :cond_3e

    .line 1985
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 1988
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/nuance/swype/util/CharacterUtilities;->isValidAlphabeticChar(I)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 1990
    const/4 v2, 0x0

    .line 1996
    :cond_3e
    if-eqz v2, :cond_23

    .line 1998
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v0, 0x1

    invoke-interface {p1, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 1983
    :cond_4c
    add-int/lit8 v1, v1, -0x1

    goto :goto_27
.end method

.method private flushCurrWordAndClearWCL()V
    .registers 2

    .prologue
    .line 1117
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 1118
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v0, :cond_c

    .line 1119
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->clearPhraseListView()V

    .line 1121
    :cond_c
    return-void
.end method

.method private flushCurrWordByIndexAndClearWCL(II)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 1124
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1126
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_24

    .line 1128
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1129
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1130
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1132
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearKeyByIndex(II)Z

    .line 1134
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 1136
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hideGridCandidatesView()V

    .line 1138
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConfirmedInlineRomaji:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1139
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConfirmedKanji:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1141
    :cond_24
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissSegmentationPopup()V

    .line 1143
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v1, :cond_30

    .line 1144
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->clearPhraseListView()V

    .line 1146
    :cond_30
    return-void
.end method

.method private getRomajiBytesOfCurrentPos(I)I
    .registers 3
    .param p1, "iPos"    # I

    .prologue
    .line 3227
    if-ltz p1, :cond_b

    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCursorPosCount:I

    if-ge p1, v0, :cond_b

    .line 3229
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRomajiDivInfoOfInline:[I

    aget v0, v0, p1

    .line 3232
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private getRomajiPosByCursorPos(I)I
    .registers 5
    .param p1, "iCursorPos"    # I

    .prologue
    .line 3215
    const/4 v1, 0x0

    .line 3217
    .local v1, "inlinePos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, p1, :cond_10

    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCursorPosCount:I

    if-ge v0, v2, :cond_10

    .line 3219
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRomajiDivInfoOfInline:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 3217
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3222
    :cond_10
    return v1
.end method

.method private getWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;
    .registers 8
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
    .line 4452
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 4453
    .local v1, "scratchDefaultWordIndex":[I
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v1, v4}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getWords(Landroid/text/SpannableStringBuilder;[II)Ljava/util/List;

    move-result-object v0

    .line 4454
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4455
    return-object v0
.end method

.method private handleAutoPunct()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1936
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1938
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_2b

    .line 1940
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->jp_period_symbol:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1943
    .local v0, "autopunct":Ljava/lang/CharSequence;
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1944
    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1945
    invoke-interface {v1, v0, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1946
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1948
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendKeyChar(C)V

    .line 1950
    .end local v0    # "autopunct":Ljava/lang/CharSequence;
    :cond_2b
    return-void
.end method

.method private handleExplicitInput(I)V
    .registers 16
    .param p1, "primaryCode"    # I

    .prologue
    const/16 v13, 0x20

    const/4 v12, 0x2

    const/16 v11, 0x121

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2027
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v5

    if-nez v5, :cond_f

    if-nez p1, :cond_10

    .line 2165
    :cond_f
    :goto_f
    return-void

    .line 2032
    :cond_10
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v5

    .line 2034
    if-eqz v5, :cond_f

    .line 2039
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v5, :cond_f

    .line 2040
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    .line 2041
    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "...primaryCode: "

    aput-object v7, v6, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    const-string/jumbo v7, " getKeyCount(): "

    aput-object v7, v6, v12

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2042
    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v12, [Ljava/lang/Object;

    const-string/jumbo v7, "handleExplicitInput...mInlineWord: "

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2043
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v5

    if-ge v5, v13, :cond_f

    .line 2046
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeyboardInput()Z

    move-result v5

    if-eqz v5, :cond_94

    .line 2047
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->convertText2Romaji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2048
    .local v3, "romajiStr":Ljava/lang/String;
    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "handleExplicitInput...romajiStr: "

    aput-object v7, v6, v9

    aput-object v3, v6, v10

    const-string/jumbo v7, "length: "

    aput-object v7, v6, v12

    const/4 v7, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2049
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v13, :cond_f

    .line 2054
    .end local v3    # "romajiStr":Ljava/lang/String;
    :cond_94
    int-to-char v5, p1

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isWordAcceptingSymbol(C)Z

    move-result v5

    if-eqz v5, :cond_1d0

    .line 2055
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    int-to-char v6, p1

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/EditState;->characterTyped(C)V

    .line 2060
    new-array v0, v12, [C

    .line 2062
    .local v0, "char1":[C
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2064
    .local v2, "newSpanBuffer":Landroid/text/SpannableStringBuilder;
    int-to-char v5, p1

    aput-char v5, v0, v9

    .line 2065
    aput-char v9, v0, v10

    .line 2067
    invoke-static {v0, v9, v10}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2069
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v5, :cond_199

    .line 2071
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 2077
    :goto_bd
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2079
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 2081
    .local v4, "wordCandidatesCount":I
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2082
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2084
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2085
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2086
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2092
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_18c

    .line 2094
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v9, v7, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2097
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v5

    if-nez v5, :cond_1a2

    .line 2099
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKNextWordPredictionSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 2100
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 2099
    invoke-virtual {v5, v6, v9, v7, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2102
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGNextWordPredictionSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 2103
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 2102
    invoke-virtual {v5, v6, v9, v7, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2117
    :cond_122
    :goto_122
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMultitapping()Z

    move-result v5

    if-eqz v5, :cond_152

    .line 2119
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 2120
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 2119
    invoke-virtual {v5, v6, v7, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2122
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 2123
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 2122
    invoke-virtual {v5, v6, v7, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2127
    :cond_152
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2131
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const/16 v6, 0x15

    const-wide/16 v8, 0xa

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2132
    iput-boolean v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mUpdatingInline:Z

    .line 2134
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 2136
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_16f

    .line 2138
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v5, v10}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2141
    :cond_16f
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ActivateKlingonMode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_18c

    .line 2143
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "QoS \'oH \'oHbe\' chenmoHta\'"

    invoke-static {v5, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 2144
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2148
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_18c
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isCommaOrPeriod(I)Z

    move-result v5

    if-nez v5, :cond_f

    .line 2150
    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_f

    .line 2074
    .end local v4    # "wordCandidatesCount":I
    :cond_199
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    goto/16 :goto_bd

    .line 2108
    .restart local v4    # "wordCandidatesCount":I
    :cond_1a2
    if-lez v4, :cond_122

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->isInlineKnown()Z

    move-result v5

    if-nez v5, :cond_122

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2109
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-eqz v5, :cond_122

    .line 2111
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKWordErrorSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v9, v7, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2113
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGWordErrorSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v9, v7, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_122

    .line 2154
    .end local v0    # "char1":[C
    .end local v2    # "newSpanBuffer":Landroid/text/SpannableStringBuilder;
    .end local v4    # "wordCandidatesCount":I
    :cond_1d0
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-gt v5, v13, :cond_f

    .line 2155
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->addExplicit(ILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2157
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    int-to-char v6, p1

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/EditState;->characterTyped(C)V

    .line 2160
    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_f
.end method

.method private handleFlickerPopup()V
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x0

    .line 926
    sget-object v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v10, [Ljava/lang/Object;

    const-string/jumbo v3, "handleFlickerPopup()... japaneseFlickerKeyIndex: "

    aput-object v3, v1, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 929
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isValidFlickerRelativeIndex()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 930
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_2c

    .line 984
    :cond_2b
    :goto_2b
    return-void

    .line 935
    :cond_2c
    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 936
    .local v9, "visibleKeys":[Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    aget-object v0, v9, v0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v0, v5

    .line 937
    .local v6, "basecode":I
    const/4 v2, 0x0

    .line 939
    .local v2, "textcode":I
    const/16 v0, 0x3084

    if-ne v6, v0, :cond_6f

    .line 940
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    if-eqz v0, :cond_48

    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    if-eq v0, v10, :cond_48

    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_54

    .line 943
    :cond_48
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    aget-object v0, v9, v0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    div-int/lit8 v1, v1, 0x2

    aget v2, v0, v1

    .line 949
    :cond_54
    :goto_54
    if-eqz v2, :cond_2b

    .line 950
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v0, :cond_5e

    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    if-nez v0, :cond_7a

    .line 952
    :cond_5e
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v8

    .line 954
    .local v8, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v8, :cond_2b

    .line 956
    invoke-interface {v8}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 958
    int-to-char v0, v2

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendKeyChar(C)V

    .line 959
    invoke-interface {v8}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_2b

    .line 946
    .end local v8    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_6f
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    aget-object v0, v9, v0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    aget v2, v0, v1

    goto :goto_54

    .line 964
    :cond_7a
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    if-eqz v0, :cond_83

    .line 966
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 968
    iput v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 971
    :cond_83
    int-to-char v0, v2

    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->isHiraIndex(C)I

    move-result v7

    .line 973
    .local v7, "hiraIndex":I
    const/16 v0, 0x3041

    if-lt v2, v0, :cond_2b

    const/16 v0, 0x30fc

    if-gt v2, v0, :cond_2b

    const/16 v0, 0x100

    if-gt v0, v7, :cond_2b

    const/16 v0, 0x200

    if-ge v7, v0, :cond_2b

    .line 974
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_2b

    .line 975
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v1, 0x0

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 977
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    int-to-char v1, v2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/EditState;->characterTyped(C)V

    .line 980
    :cond_b7
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_2b
.end method

.method private handleFunctionKey(IZI)V
    .registers 12
    .param p1, "keyCode"    # I
    .param p2, "quickPress"    # Z
    .param p3, "repeatCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 4478
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->shouldHandleKeyViaIME(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleKey(IZI)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4479
    :cond_d
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleGesture(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4480
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    const-wide/16 v6, 0x0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/IME;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    .line 4483
    :cond_1d
    return-void
.end method

.method private handlePunctOrSymbol(I)V
    .registers 7
    .param p1, "primaryCode"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2217
    const/16 v1, 0x20

    if-ne p1, v1, :cond_b

    .line 2219
    invoke-virtual {p0, v2, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleSpace(ZI)Z

    .line 2251
    :goto_a
    return-void

    .line 2223
    :cond_b
    const/16 v1, 0xa

    if-ne p1, v1, :cond_26

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v1, :cond_26

    .line 2224
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hasActiveKeySeq()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_26

    .line 2225
    :cond_21
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1, v4}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setContext([C)V

    .line 2228
    :cond_26
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v1, :cond_63

    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->composingState()Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_63

    .line 2230
    :cond_38
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2231
    .local v0, "selectedWord":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 2232
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 2233
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->cleanInlineWordSpanAndFlush()V

    .line 2235
    :cond_4d
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrWordAndClearWCL()V

    .line 2244
    .end local v0    # "selectedWord":Ljava/lang/String;
    :goto_50
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 2247
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 2248
    int-to-char v1, p1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendKeyChar(C)V

    .line 2250
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    goto :goto_a

    .line 2237
    .restart local v0    # "selectedWord":Ljava/lang/String;
    :cond_5e
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_50

    .line 2241
    .end local v0    # "selectedWord":Ljava/lang/String;
    :cond_63
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_50
.end method

.method private handleWhiteSpaces(I)V
    .registers 4
    .param p1, "primaryCode"    # I

    .prologue
    .line 2173
    const/16 v0, 0x20

    if-ne p1, v0, :cond_a

    .line 2175
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleSpace(ZI)Z

    .line 2181
    :goto_9
    return-void

    .line 2180
    :cond_a
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handlePunctOrSymbol(I)V

    goto :goto_9
.end method

.method private hasActiveKeySeq()Z
    .registers 2

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v0

    if-gtz v0, :cond_e

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->multitapIsInvalid()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private hasInputQueue()Z
    .registers 2

    .prologue
    .line 4385
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 4386
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

.method private hideGridCandidatesView()V
    .registers 3

    .prologue
    .line 2852
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mContextWindowShowing:Z

    if-eqz v0, :cond_11

    .line 2853
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJpWordPageContainer:Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->hideContextWindow(Landroid/view/View;)V

    .line 2854
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJpWordPageContainer:Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->setMinimumHeight(I)V

    .line 2856
    :cond_11
    return-void
.end method

.method private indexOfInline(Ljava/lang/String;)I
    .registers 5
    .param p1, "inline"    # Ljava/lang/String;

    .prologue
    .line 2979
    const/16 v1, 0xff

    .line 2980
    .local v1, "index":I
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v2, :cond_22

    .line 2981
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 2982
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2983
    move v1, v0

    .line 2988
    .end local v0    # "i":I
    :cond_22
    return v1

    .line 2981
    .restart local v0    # "i":I
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private initSegmentationPopup()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3706
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3735
    :cond_7
    :goto_7
    return-void

    .line 3709
    :cond_8
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationView:Landroid/view/View;

    if-nez v2, :cond_6f

    .line 3710
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 3711
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 3712
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 3713
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 3714
    sget v2, Lcom/nuance/swype/input/R$layout;->japanese_segmentation_popup:I

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationView:Landroid/view/View;

    .line 3715
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 3717
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationView:Landroid/view/View;

    sget v3, Lcom/nuance/swype/input/R$id;->leftArrow:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->leftArrowButton:Landroid/view/View;

    .line 3718
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->leftArrowButton:Landroid/view/View;

    if-eqz v2, :cond_49

    .line 3719
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->leftArrowButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3721
    :cond_49
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationView:Landroid/view/View;

    sget v3, Lcom/nuance/swype/input/R$id;->rightArrow:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->rightArrowButton:Landroid/view/View;

    .line 3722
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->rightArrowButton:Landroid/view/View;

    if-eqz v2, :cond_5c

    .line 3723
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->rightArrowButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3725
    :cond_5c
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationView:Landroid/view/View;

    sget v3, Lcom/nuance/swype/input/R$id;->closeArrow:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->closeSegmentationButton:Landroid/view/View;

    .line 3726
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->closeSegmentationButton:Landroid/view/View;

    if-eqz v2, :cond_6f

    .line 3727
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->closeSegmentationButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3730
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_6f
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    if-nez v2, :cond_7

    .line 3731
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    .line 3732
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3733
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7
.end method

.method private isCharactersAllKana(Ljava/lang/String;)Z
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3174
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_a

    .line 3186
    :cond_9
    :goto_9
    return v1

    .line 3178
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_30

    .line 3180
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->isHiragana(C)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->isKatakana(C)Z

    move-result v2

    if-nez v2, :cond_2d

    const/16 v2, 0x30fc

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_9

    .line 3178
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 3186
    :cond_30
    const/4 v1, 0x1

    goto :goto_9
.end method

.method private isCommaOrPeriod(I)Z
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 2196
    const/16 v0, 0x3001

    if-eq p1, v0, :cond_8

    const/16 v0, 0x3002

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isKeypadMultitapInputSupported()Z
    .registers 3

    .prologue
    .line 1871
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x600

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadMultitapInputSupported:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static isLetterAndDigit(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 3191
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 3193
    .local v2, "length":I
    if-gtz v2, :cond_8

    .line 3210
    :cond_7
    :goto_7
    return v3

    .line 3198
    :cond_8
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v2, :cond_1e

    .line 3200
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3202
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3198
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3210
    .end local v0    # "ch":C
    :cond_1e
    const/4 v3, 0x1

    goto :goto_7
.end method

.method private isRomajiAlphaCharacterConverting(I)Z
    .registers 4
    .param p1, "keyCode"    # I

    .prologue
    .line 1111
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-ne v0, v1, :cond_1a

    const/16 v0, 0x61

    if-gt v0, p1, :cond_14

    const/16 v0, 0x7a

    if-le p1, v0, :cond_18

    :cond_14
    const/16 v0, 0x30fc

    if-ne p1, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private isSegmentationPopupShowing()Z
    .registers 2

    .prologue
    .line 2650
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isWordAcceptingSymbol(C)Z
    .registers 3
    .param p1, "ch"    # C

    .prologue
    .line 824
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isDiacriticMark(C)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private loadSettings()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2409
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getAutoCorrection()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputFieldInfo;->isNameField()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2411
    iput-boolean v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->autoCorrectionEnabled:Z

    .line 2414
    :cond_1a
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_b3

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 2415
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v2

    if-eqz v2, :cond_b3

    move v2, v3

    :goto_2f
    iput-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTraceInputSuggestionOn:Z

    .line 2417
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isRecaptureEnabled()Z

    move-result v2

    if-eqz v2, :cond_b6

    iget-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    if-eqz v2, :cond_b6

    move v2, v3

    :goto_42
    iput-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRecaptureOn:Z

    .line 2419
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    .line 2420
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isNextWordPredictionEnabled()Z

    move-result v2

    if-eqz v2, :cond_b8

    iget-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    if-eqz v2, :cond_b8

    move v2, v3

    :goto_55
    iput-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mNextWordPredictionOn:Z

    .line 2421
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDefaultPortraitLayoutOptions()I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->portraitInputOptions:I

    .line 2423
    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->portraitInputOptions:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_ba

    .line 2424
    const/16 v1, 0x900

    .line 2428
    .local v1, "layoutId":I
    :goto_6b
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_86

    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    if-eq v2, v1, :cond_86

    .line 2430
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    .line 2431
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getNextLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    .line 2432
    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    .line 2434
    :cond_86
    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->portraitInputOptions:I

    if-eqz v2, :cond_bd

    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->portraitInputOptions:I

    const/16 v5, 0x11

    if-eq v2, v5, :cond_bd

    move v2, v3

    :goto_91
    iput-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadMultitapInputSupported:Z

    .line 2437
    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->portraitInputOptions:I

    if-eqz v2, :cond_9e

    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->portraitInputOptions:I

    const/16 v5, 0x10

    if-eq v2, v5, :cond_9e

    move v4, v3

    :cond_9e
    iput-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadFlickrInputSupported:Z

    .line 2440
    iput-boolean v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mNavOn:Z

    .line 2441
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->key_height_5row:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2442
    .local v0, "flickerKeyWidth":I
    int-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerMiddleKeyRadius:D

    .line 2443
    return-void

    .end local v0    # "flickerKeyWidth":I
    .end local v1    # "layoutId":I
    :cond_b3
    move v2, v4

    .line 2415
    goto/16 :goto_2f

    :cond_b6
    move v2, v4

    .line 2417
    goto :goto_42

    :cond_b8
    move v2, v4

    .line 2420
    goto :goto_55

    .line 2426
    :cond_ba
    const/16 v1, 0x600

    .restart local v1    # "layoutId":I
    goto :goto_6b

    :cond_bd
    move v2, v4

    .line 2434
    goto :goto_91
.end method

.method private moveHighlightToNearCandidate(I)Z
    .registers 4
    .param p1, "keyCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 4294
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 4309
    :cond_19
    :goto_19
    return v0

    .line 4298
    :cond_1a
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v1

    if-eqz v1, :cond_19

    .line 4303
    const/16 v0, 0x16

    if-ne p1, v0, :cond_2d

    .line 4304
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->rightArrowButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->onClick(Landroid/view/View;)V

    .line 4309
    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    goto :goto_19

    .line 4305
    :cond_2d
    const/16 v0, 0x15

    if-ne p1, v0, :cond_2b

    .line 4306
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->leftArrowButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->onClick(Landroid/view/View;)V

    goto :goto_2b
.end method

.method private moveHighlightToNearCandidateSoftKeyboard(I)Z
    .registers 16
    .param p1, "keyCode"    # I

    .prologue
    const/16 v13, 0x121

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3237
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v7, :cond_1c

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v7, :cond_1c

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v7, :cond_1c

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    if-eqz v7, :cond_1c

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1e

    :cond_1c
    move v7, v8

    .line 3343
    :goto_1d
    return v7

    .line 3241
    :cond_1e
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v7

    if-nez v7, :cond_28

    move v7, v8

    .line 3243
    goto :goto_1d

    .line 3246
    :cond_28
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 3248
    .local v6, "wordCandidatesCount":I
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 3250
    .local v3, "isRight":Ljava/lang/Boolean;
    const/16 v7, 0x16

    if-eq p1, v7, :cond_3a

    const/16 v7, 0x14

    if-ne p1, v7, :cond_170

    .line 3251
    :cond_3a
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 3256
    :cond_3e
    :goto_3e
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5e

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    add-int/lit8 v10, v6, -0x1

    if-lt v7, v10, :cond_5e

    .line 3257
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3258
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-virtual {v7, v10, v8}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 3259
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->syncCandidateDisplayStyleToMode()V

    .line 3262
    :cond_5e
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 3264
    .local v0, "OldSelectIndex":I
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_17e

    .line 3265
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3270
    :goto_6f
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-gez v7, :cond_7c

    .line 3272
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3275
    :cond_7c
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3277
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 3279
    .local v5, "word":Ljava/lang/CharSequence;
    if-eqz v5, :cond_dc

    .line 3281
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3283
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    iget-object v11, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v10, v11}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 3285
    instance-of v7, v5, Landroid/text/SpannableStringBuilder;

    if-eqz v7, :cond_bf

    move-object v7, v5

    .line 3287
    check-cast v7, Landroid/text/SpannableStringBuilder;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mColorRecommended:Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v7, v10, v8, v11, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v7, v5

    .line 3288
    check-cast v7, Landroid/text/SpannableStringBuilder;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mExactWordSpan:Landroid/text/style/StyleSpan;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v7, v10, v8, v11, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3291
    :cond_bf
    if-ltz v0, :cond_dc

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-eq v0, v7, :cond_dc

    .line 3293
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 3295
    .local v4, "oldword":Ljava/lang/CharSequence;
    if-eqz v4, :cond_dc

    .line 3297
    instance-of v7, v4, Landroid/text/SpannableStringBuilder;

    if-eqz v7, :cond_dc

    .line 3299
    check-cast v4, Landroid/text/SpannableStringBuilder;

    .end local v4    # "oldword":Ljava/lang/CharSequence;
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3305
    :cond_dc
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->syncCandidateDisplayStyleToMode()V

    .line 3307
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_185

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isKeyOutofRightBound(I)Z

    move-result v7

    if-eqz v7, :cond_185

    .line 3309
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 3311
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollNext()V

    .line 3320
    :cond_fb
    :goto_fb
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 3323
    .local v1, "defaultSpanNum":I
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_130

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    aget v7, v7, v8

    if-lez v7, :cond_130

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    aget v7, v7, v8

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    if-gt v7, v10, :cond_130

    .line 3325
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

    .line 3328
    :cond_130
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 3330
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3332
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v11, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    invoke-virtual {v7, v10, v8, v11, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3334
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKRangeConversionDefaultSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v7, v10, v8, v1, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3337
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKRemainSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v11, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v7, v10, v1, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3339
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateInlineWhenRC(I)Z

    .line 3340
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v2, v7, v9}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3342
    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    move v7, v9

    .line 3343
    goto/16 :goto_1d

    .line 3252
    .end local v0    # "OldSelectIndex":I
    .end local v1    # "defaultSpanNum":I
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v5    # "word":Ljava/lang/CharSequence;
    :cond_170
    const/16 v7, 0x15

    if-eq p1, v7, :cond_178

    const/16 v7, 0x13

    if-ne p1, v7, :cond_3e

    .line 3253
    :cond_178
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_3e

    .line 3267
    .restart local v0    # "OldSelectIndex":I
    :cond_17e
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto/16 :goto_6f

    .line 3313
    .restart local v5    # "word":Ljava/lang/CharSequence;
    :cond_185
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_fb

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isKeyOutofLeftBound(I)Z

    move-result v7

    if-eqz v7, :cond_fb

    .line 3315
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 3317
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollPrev()V

    goto/16 :goto_fb
.end method

.method private moveHightlightToCenterOrLeftRight(I)Z
    .registers 13
    .param p1, "keyCode"    # I

    .prologue
    const/16 v10, 0x121

    const/16 v9, 0x16

    const/16 v8, 0x15

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4313
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    .line 4314
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 4380
    :cond_20
    :goto_20
    return v3

    .line 4318
    :cond_21
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v5

    if-eqz v5, :cond_20

    .line 4322
    const/16 v5, 0x14

    if-ne p1, v5, :cond_ca

    .line 4323
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getCenterCandidateIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4332
    :goto_38
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 4333
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-gez v5, :cond_dc

    .line 4334
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4338
    :cond_47
    :goto_47
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4340
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 4342
    .local v2, "word":Ljava/lang/CharSequence;
    if-eqz v2, :cond_c7

    .line 4343
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->enableHighlight()V

    .line 4344
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v6, v7}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 4346
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->syncCandidateDisplayStyleToMode()V

    .line 4348
    if-ne p1, v9, :cond_f9

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isKeyOutofRightBound(I)Z

    move-result v5

    if-eqz v5, :cond_f9

    .line 4350
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 4352
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollNext()V

    .line 4361
    :cond_89
    :goto_89
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4362
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 4363
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4364
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 4365
    .local v1, "span":Landroid/text/style/UnderlineSpan;
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v1, v3, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4367
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v1, v3, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4370
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4372
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_c4

    .line 4373
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4374
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 4375
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4378
    :cond_c4
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v1    # "span":Landroid/text/style/UnderlineSpan;
    :cond_c7
    move v3, v4

    .line 4380
    goto/16 :goto_20

    .line 4324
    .end local v2    # "word":Ljava/lang/CharSequence;
    :cond_ca
    if-ne p1, v8, :cond_d3

    .line 4325
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto/16 :goto_38

    .line 4326
    :cond_d3
    if-ne p1, v9, :cond_20

    .line 4327
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/16 :goto_38

    .line 4335
    :cond_dc
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_47

    .line 4336
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_47

    .line 4354
    .restart local v2    # "word":Ljava/lang/CharSequence;
    :cond_f9
    if-ne p1, v8, :cond_89

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isKeyOutofLeftBound(I)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 4356
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 4358
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollPrev()V

    goto/16 :goto_89
.end method

.method private postDelayResumeSpeech()V
    .registers 5

    .prologue
    const/16 v1, 0xb

    .line 563
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 564
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 566
    :cond_f
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 567
    return-void
.end method

.method private postDelayShowSegmentationPopupMessage()V
    .registers 5

    .prologue
    const/16 v1, 0x17

    .line 570
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 571
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 573
    :cond_f
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 574
    return-void
.end method

.method private postToastMsg(I)V
    .registers 6
    .param p1, "msg"    # I

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->removeToastMsg(I)V

    .line 403
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 404
    return-void
.end method

.method private processSpaceKeyState(Landroid/view/inputmethod/InputConnection;)V
    .registers 4
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->spaceKey()V

    .line 1860
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 1862
    if-eqz p1, :cond_16

    .line 1864
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1865
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1868
    :cond_16
    return-void
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
    .line 2484
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

    .line 2485
    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainStyledAttributes$6d3b0587(Landroid/content/Context;Landroid/util/AttributeSet;[IIIILjava/lang/String;)Lcom/nuance/swype/plugin/TypedArrayWrapper;

    move-result-object v8

    .line 5030
    .local v8, "a":Lcom/nuance/swype/plugin/TypedArrayWrapper;
    iget-object v0, v8, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    .line 2490
    .local v12, "n":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1f
    if-ge v11, v12, :cond_89

    .line 2492
    invoke-virtual {v8, v11}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getIndex(I)I

    move-result v10

    .line 2494
    .local v10, "attr":I
    sget v0, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_wordErrorForegroundColor:I

    if-ne v10, v0, :cond_39

    .line 2495
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v1, -0x10000

    invoke-virtual {v8, v10, v1}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGWordErrorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 2490
    :cond_36
    :goto_36
    add-int/lit8 v11, v11, 0x1

    goto :goto_1f

    .line 2496
    :cond_39
    sget v0, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_wordErrorBackgroundColor:I

    if-ne v10, v0, :cond_4a

    .line 2497
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const/4 v1, 0x0

    invoke-virtual {v8, v10, v1}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKWordErrorSpan:Landroid/text/style/BackgroundColorSpan;

    goto :goto_36

    .line 2499
    :cond_4a
    sget v0, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_wordNextWordPredictionForegroundColor:I

    if-ne v10, v0, :cond_59

    .line 2500
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0x333334

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGNextWordPredictionSpan:Landroid/text/style/ForegroundColorSpan;

    goto :goto_36

    .line 2502
    :cond_59
    sget v0, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_wordNextWordPredictionBackgroundColor:I

    if-ne v10, v0, :cond_66

    .line 2503
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKNextWordPredictionSpan:Landroid/text/style/BackgroundColorSpan;

    goto :goto_36

    .line 2505
    :cond_66
    sget v0, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_multitapForegroundColor:I

    if-ne v10, v0, :cond_77

    .line 2506
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    .line 2507
    invoke-virtual {v8, v10, v1}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    goto :goto_36

    .line 2508
    :cond_77
    sget v0, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_multitapBackgroundColor:I

    if-ne v10, v0, :cond_36

    .line 2509
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const/high16 v1, -0x10000

    invoke-virtual {v8, v10, v1}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    goto :goto_36

    .line 2513
    .end local v10    # "attr":I
    :cond_89
    invoke-virtual {v8}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->recycle()V

    .line 2516
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->WordListView:[I

    const/4 v4, 0x0

    sget v5, Lcom/nuance/swype/input/R$style;->WordListView:I

    sget v6, Lcom/nuance/swype/input/R$xml;->defaults:I

    const-string/jumbo v7, "WordListView"

    move-object v1, p1

    .line 2517
    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainStyledAttributes$6d3b0587(Landroid/content/Context;Landroid/util/AttributeSet;[IIIILjava/lang/String;)Lcom/nuance/swype/plugin/TypedArrayWrapper;

    move-result-object v8

    .line 2519
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    sget v1, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateNormal:I

    const/high16 v2, -0x10000

    invoke-virtual {v8, v1, v2}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mColorRecommended:Landroid/text/style/ForegroundColorSpan;

    .line 2521
    invoke-virtual {v8}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->recycle()V

    .line 2524
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->InlineStringJapanese:[I

    const/4 v4, 0x0

    sget v5, Lcom/nuance/swype/input/R$style;->InlineStringJapanese:I

    sget v6, Lcom/nuance/swype/input/R$xml;->defaults:I

    const-string/jumbo v7, "InlineStringJapanese"

    move-object v1, p1

    .line 2525
    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainStyledAttributes$6d3b0587(Landroid/content/Context;Landroid/util/AttributeSet;[IIIILjava/lang/String;)Lcom/nuance/swype/plugin/TypedArrayWrapper;

    move-result-object v8

    .line 2527
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    sget v1, Lcom/nuance/swype/input/R$styleable;->InlineStringJapanese_convertingBackgroundColor:I

    const v2, -0xff0001

    invoke-virtual {v8, v1, v2}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKRangeConversionDefaultSpan:Landroid/text/style/BackgroundColorSpan;

    .line 2530
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    sget v1, Lcom/nuance/swype/input/R$styleable;->InlineStringJapanese_remainingBackgroundColor:I

    const/4 v2, -0x1

    invoke-virtual {v8, v1, v2}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKRemainSpan:Landroid/text/style/BackgroundColorSpan;

    .line 2532
    invoke-virtual {v8}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->recycle()V

    .line 2534
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    .line 2535
    .local v9, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v0, Lcom/nuance/swype/input/R$attr;->keyboardPopupBackgroundFlick:I

    invoke-virtual {v9, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerKeyPopupBackground:Landroid/graphics/drawable/Drawable;

    .line 2536
    sget v0, Lcom/nuance/swype/input/R$attr;->keyboardKeyFeedbackSelectedBackground:I

    invoke-virtual {v9, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerKeyPopupSelectedBackground:Landroid/graphics/drawable/Drawable;

    .line 2538
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 2539
    .local v13, "resources":Landroid/content/res/Resources;
    sget v0, Lcom/nuance/swype/input/R$dimen;->japanese_flicker_menu_key_text_size:I

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerKeyTextSize:I

    .line 2541
    sget v0, Lcom/nuance/swype/input/R$dimen;->key_height_5row:I

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerKeyHeight:I

    .line 2542
    return-void
.end method

.method private reduceRangeConversion()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 3046
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCReadingDivInfo:[I

    aget v0, v0, v4

    if-ne v0, v4, :cond_10

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_10

    .line 3057
    :goto_f
    return v4

    .line 3049
    :cond_10
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3051
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

    .line 3053
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandlistWhenRC(I)Z

    .line 3055
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateInlineWhenRC(I)Z

    goto :goto_f
.end method

.method private removeToastMsg(I)V
    .registers 3
    .param p1, "msg"    # I

    .prologue
    .line 397
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 398
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 399
    return-void
.end method

.method private resetConversionStrings()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2992
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->covertingMidashigo:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2993
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->covertingYomi:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2994
    return-void
.end method

.method private setCorrectionLevel(Ljava/lang/String;)V
    .registers 6
    .param p1, "inputMode"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x63

    .line 1881
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v0, :cond_15

    .line 1883
    const-string/jumbo v0, "multitap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1885
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setAttribute(IZ)V

    .line 1891
    :cond_15
    :goto_15
    return-void

    .line 1887
    :cond_16
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/16 v1, 0x65

    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordCompletionPoint:I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setAttribute(II)V

    .line 1888
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->autoCorrectionEnabled:Z

    invoke-virtual {v0, v3, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setAttribute(IZ)V

    goto :goto_15
.end method

.method private setKeyboarLayoutDatabase()V
    .registers 3

    .prologue
    .line 1253
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    .line 1255
    if-eqz v0, :cond_12

    .line 1257
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x600

    if-ne v0, v1, :cond_13

    .line 1259
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setKeyboardType(I)V

    .line 1268
    :cond_12
    :goto_12
    return-void

    .line 1260
    :cond_13
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-ne v0, v1, :cond_20

    .line 1262
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setKeyboardType(I)V

    goto :goto_12

    .line 1265
    :cond_20
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setKeyboardType(I)V

    goto :goto_12
.end method

.method private setMultitapOrAmbigMode()V
    .registers 3

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadMultitapInputSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setMultiTapInputMode(Z)V

    .line 1877
    return-void
.end method

.method private showGridCandidatesView(Ljava/util/List;)V
    .registers 16
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2658
    .local p1, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2780
    :cond_8
    :goto_8
    return-void

    .line 2660
    :cond_9
    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mContextWindowShowing:Z

    if-nez v1, :cond_8

    .line 2662
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->isSpeechViewShowing()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2667
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isSegmentationPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2668
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isSegmentationPopupNeeded:Z

    .line 2669
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissSegmentationPopup()V

    .line 2672
    :cond_1f
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->getHeight()I

    move-result v2

    add-int v5, v1, v2

    .line 2673
    .local v5, "height":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v12

    .line 2674
    .local v12, "width":I
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJpWordPageContainer:Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;

    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->setMinimumHeight(I)V

    .line 2675
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setCandidatesViewShown(Z)V

    .line 2676
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v1, v12, :cond_73

    .line 2677
    sget-object v1, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "recreate candidatesPopup....candidatesPopup.getMeasuredWidth(): "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    .line 2678
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "keyboard width: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2677
    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2679
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    .line 2681
    :cond_73
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    if-nez v1, :cond_f8

    .line 2683
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 2684
    .local v8, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 2685
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 2686
    sget v1, Lcom/nuance/swype/input/R$layout;->candidates_popup:I

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    .line 2687
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 2689
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v10, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2692
    .local v10, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2693
    const/high16 v1, -0x80000000

    invoke-static {v12, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 2694
    .local v13, "widthMeasureSpec":I
    const/high16 v1, -0x80000000

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 2695
    .local v7, "heightMeasureSpec":I
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v1, v13, v7}, Landroid/view/View;->measure(II)V

    .line 2697
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 2698
    .local v6, "closeButton":Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$drawable;->keyboard_popup_btn_close_cjk:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2699
    new-instance v1, Lcom/nuance/swype/input/japanese/JapaneseInputView$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView$2;-><init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V

    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2712
    new-instance v1, Lcom/nuance/swype/input/japanese/JapaneseInputView$3;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView$3;-><init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V

    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2733
    .end local v6    # "closeButton":Landroid/widget/ImageButton;
    .end local v7    # "heightMeasureSpec":I
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13    # "widthMeasureSpec":I
    :cond_f8
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->scroll_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ScrollView;

    .line 2734
    .local v11, "scrollView":Landroid/widget/ScrollView;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 2735
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    .line 2736
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/input/KeyboardViewEx;

    .line 2737
    .local v9, "keyboardViewEx":Lcom/nuance/swype/input/KeyboardViewEx;
    invoke-virtual {v11}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setGridCandidates(Ljava/util/List;I)V

    .line 2738
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$xml;->kbd_chinese_popup_template:I

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRows:Ljava/util/List;

    .line 2739
    invoke-virtual {v11}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/util/List;II)V

    .line 2740
    .local v0, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    invoke-virtual {v9, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 2741
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->setDoubleBuffered(Z)V

    .line 2742
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->setContextCandidatesView(Z)V

    .line 2743
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v9, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->setIme(Lcom/nuance/swype/input/IME;)V

    .line 2745
    new-instance v1, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;

    invoke-direct {v1, p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;-><init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;Lcom/nuance/swype/input/KeyboardEx;)V

    invoke-virtual {v9, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 2777
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2778
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v3

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2777
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2779
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJpWordPageContainer:Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->showContextWindow(Landroid/view/View;)V

    goto/16 :goto_8
.end method

.method private startInputSession()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 577
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v2, :cond_3e

    .line 579
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->startSession()V

    .line 580
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 581
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    .line 582
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v2, v1, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setExplicitLearning(ZZ)V

    .line 583
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadMultitapInputSupported()Z

    move-result v3

    if-nez v3, :cond_25

    const/4 v1, 0x1

    :cond_25
    invoke-virtual {v2, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setPunctuationBreaking(Z)V

    .line 584
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/16 v2, 0x65

    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordCompletionPoint:I

    invoke-virtual {v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setAttribute(II)V

    .line 585
    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastSelStart:I

    .line 586
    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastSelEnd:I

    .line 588
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 589
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_3e

    .line 590
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateContextBufferIfNecessary(Landroid/view/inputmethod/InputConnection;)V

    .line 593
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3e
    return-void
.end method

.method private timeoutWhenMultitappingCommaOrPeriod()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 2184
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMultitapping()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 2185
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-ne v1, v0, :cond_34

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isCommaOrPeriod(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2186
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->multiTapTimeOut()V

    .line 2187
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->onMultitapTimeout()V

    .line 2191
    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method private toggleKeyboardMode()V
    .registers 2

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->toggleSymbolKeyboard()V

    .line 1274
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->abortKey()V

    .line 1275
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setMultitapOrAmbigMode()V

    .line 1276
    return-void
.end method

.method private updateCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)I
    .registers 15
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    const/16 v12, 0x15

    const/4 v11, 0x1

    const/16 v10, 0x121

    const/4 v5, 0x0

    .line 2255
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v6, :cond_14

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isValidBuild()Z

    move-result v6

    if-nez v6, :cond_16

    :cond_14
    move v4, v5

    .line 2380
    :goto_15
    return v4

    .line 2259
    :cond_16
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2260
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2262
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2263
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2265
    sget-object v6, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p1, v6, :cond_88

    .line 2267
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getCandidates()Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 2269
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleGesture(Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 2270
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearAllKeys()Z

    .line 2271
    const/4 v4, -0x1

    goto :goto_15

    .line 2274
    :cond_41
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v6, :cond_5b

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v6

    if-eqz v6, :cond_5b

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v6, :cond_5b

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 2275
    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v6

    if-nez v6, :cond_5b

    move v4, v5

    .line 2276
    goto :goto_15

    .line 2278
    :cond_5b
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v6, v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    .line 2283
    .end local v0    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    :goto_65
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordListBak:Ljava/util/List;

    if-nez v6, :cond_93

    .line 2285
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordListBak:Ljava/util/List;

    .line 2291
    :goto_70
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_76
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_99

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 2293
    .local v3, "item":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordListBak:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_76

    .line 2280
    .end local v3    # "item":Ljava/lang/CharSequence;
    :cond_88
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v6, v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    goto :goto_65

    .line 2288
    :cond_93
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordListBak:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto :goto_70

    .line 2296
    :cond_99
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 2298
    .local v4, "wordCandidatesCount":I
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2300
    .local v2, "inlineText":Landroid/text/SpannableStringBuilder;
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v6, v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getInlineText(Landroid/text/SpannableStringBuilder;)V

    .line 2302
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2303
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2304
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateRomajiInlineDivisionInfo()V

    .line 2306
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v6}, Lcom/nuance/swype/input/EditState;->composeWordCandidate()V

    .line 2311
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_15b

    .line 2312
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v6

    if-eqz v6, :cond_d2

    .line 2313
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->addDigitsFromUILayer(Ljava/lang/String;)Z

    .line 2315
    :cond_d2
    if-lez v4, :cond_d7

    .line 2316
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->addExactEnWordsFromUILayer()I

    .line 2319
    :cond_d7
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 2321
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2325
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v6

    if-nez v6, :cond_16c

    .line 2327
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKNextWordPredictionSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2329
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGNextWordPredictionSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2343
    :cond_10c
    :goto_10c
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMultitapping()Z

    move-result v6

    if-eqz v6, :cond_13c

    .line 2345
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 2346
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 2345
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2348
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 2349
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 2348
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2353
    :cond_13c
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 2355
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const-wide/16 v8, 0xa

    invoke-virtual {v6, v12, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2357
    iput-boolean v11, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mUpdatingInline:Z

    .line 2359
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 2361
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_15b

    .line 2363
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2365
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-static {v1, v6}, Lcom/nuance/swype/util/InputConnectionUtils;->setComposingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2367
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2371
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_15b
    if-lez v4, :cond_19a

    .line 2373
    iput-boolean v11, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mUpdatingInline:Z

    .line 2375
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-direct {p0, v6, v7, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateWordListView(Ljava/util/List;IZ)V

    goto/16 :goto_15

    .line 2334
    :cond_16c
    if-lez v4, :cond_10c

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->isInlineKnown()Z

    move-result v6

    if-nez v6, :cond_10c

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2335
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-eqz v6, :cond_10c

    .line 2337
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKWordErrorSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2339
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGWordErrorSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_10c

    .line 2378
    :cond_19a
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->syncCandidateDisplayStyleToMode()V

    goto/16 :goto_15
.end method

.method private updateCandlistWhenRC(I)Z
    .registers 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 3107
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getRangeConvCandidateList(Landroid/text/SpannableStringBuilder;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    .line 3109
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 3111
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateWordListView(Ljava/util/List;IZ)V

    .line 3114
    :cond_18
    return v2
.end method

.method private updateContextBufferIfNecessary(Landroid/view/inputmethod/InputConnection;)V
    .registers 5
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 2005
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v1

    if-nez v1, :cond_33

    .line 2007
    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2009
    .local v0, "seqBeforeCursor":Ljava/lang/CharSequence;
    if-eqz v0, :cond_33

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_33

    .line 2011
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->extractWordBeforeCursor(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 2013
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_34

    .line 2015
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mContextBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setContext([C)V

    .line 2022
    .end local v0    # "seqBeforeCursor":Ljava/lang/CharSequence;
    :cond_33
    :goto_33
    return-void

    .line 2018
    .restart local v0    # "seqBeforeCursor":Ljava/lang/CharSequence;
    :cond_34
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->breakContext()V

    goto :goto_33
.end method

.method private updateInlineWhenRC(I)Z
    .registers 12
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v8, 0x121

    const/4 v3, 0x0

    .line 3119
    const/16 v5, 0x100

    new-array v2, v5, [C

    .line 3121
    .local v2, "phrasebuf":[C
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCReadingDivInfo:[I

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    invoke-virtual {v5, p1, v6, v2, v7}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getRangeConvertedPhrase(I[I[C[I)I

    move-result v1

    .line 3123
    .local v1, "phraseLen":I
    if-gtz v1, :cond_24

    .line 3125
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3127
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3129
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineTextBak:Ljava/lang/CharSequence;

    .line 3169
    :goto_23
    return v3

    .line 3134
    :cond_24
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3136
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3138
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-static {v2, v3, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3140
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3142
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineTextBak:Ljava/lang/CharSequence;

    .line 3144
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCReadingDivInfo:[I

    aget v5, v5, v3

    if-eqz v5, :cond_8b

    .line 3146
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    aget v5, v5, v3

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ge v5, v6, :cond_9e

    .line 3148
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKRangeConversionDefaultSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    aget v7, v7, v3

    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3150
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKRemainSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    aget v7, v7, v3

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3152
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRCOutPhraseDivInfo:[I

    aget v3, v6, v3

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineTextBak:Ljava/lang/CharSequence;

    .line 3160
    :cond_8b
    :goto_8b
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3162
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_9c

    .line 3164
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3165
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3166
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_9c
    move v3, v4

    .line 3169
    goto :goto_23

    .line 3156
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_9e
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKRangeConversionDefaultSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8b
.end method

.method private updateRomajiInlineDivisionInfo()V
    .registers 5

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/16 v1, 0x100

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRomajiDivInfoOfInline:[I

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKanaDivInfoOfInline:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getInlineDivInfo(I[I[I)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCursorPosCount:I

    .line 1280
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCursorPosCount:I

    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    .line 1282
    return-void
.end method

.method private updateWordListView(Ljava/util/List;IZ)V
    .registers 5
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
    .line 305
    .local p1, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p3, :cond_14

    .line 306
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->enableHighlight()V

    .line 311
    :goto_7
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 312
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->syncCandidateDisplayStyleToMode()V

    .line 313
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setCandidatesViewShown(Z)V

    .line 314
    return-void

    .line 308
    :cond_14
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->disableHighlight()V

    goto :goto_7
.end method


# virtual methods
.method public addDigitsFromUILayer(Ljava/lang/String;)Z
    .registers 10
    .param p1, "inlineWord"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/16 v7, 0x40

    const/4 v4, 0x0

    .line 270
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_b

    .line 299
    :goto_a
    return v4

    .line 275
    :cond_b
    new-array v0, v7, [C

    .line 279
    .local v0, "charsin":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_1f

    if-ge v3, v7, :cond_1f

    .line 281
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v0, v3

    .line 279
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 284
    :cond_1f
    aget-char v6, v0, v4

    invoke-static {v6}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->isHiraIndex(C)I

    move-result v6

    if-lez v6, :cond_47

    .line 286
    new-array v1, v7, [C

    .line 287
    .local v1, "charsout":[C
    new-array v2, v5, [I

    .line 288
    .local v2, "dlen":[I
    invoke-static {v0, v3, v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->convertHira2DigitalFull([CI[C[I)Z

    .line 289
    aget v6, v2, v4

    invoke-static {v1, v4, v6}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->addWordtoList(Ljava/lang/String;)V

    .line 292
    new-array v1, v7, [C

    .line 293
    new-array v2, v5, [I

    .line 294
    invoke-static {v0, v3, v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->convertHira2Digital([CI[C[I)Z

    .line 295
    aget v6, v2, v4

    invoke-static {v1, v4, v6}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->addWordtoList(Ljava/lang/String;)V

    .end local v1    # "charsout":[C
    .end local v2    # "dlen":[I
    :cond_47
    move v4, v5

    .line 299
    goto :goto_a
.end method

.method protected addWordtoList(Ljava/lang/String;)V
    .registers 12
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 234
    .local v1, "found":Z
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 235
    .local v4, "nListSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 237
    .local v5, "nWordLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v4, :cond_37

    .line 239
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 241
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v7, v5, :cond_54

    .line 243
    const/4 v3, 0x0

    .line 245
    .local v3, "l":I
    :goto_1d
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_30

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_30

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 250
    :cond_30
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v3, v7, :cond_54

    .line 252
    const/4 v1, 0x1

    .line 258
    .end local v0    # "cs":Ljava/lang/CharSequence;
    .end local v3    # "l":I
    :cond_37
    if-nez v1, :cond_53

    .line 260
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 262
    .local v6, "newSpanBuffer":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v7, v8, v9}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 264
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 266
    .end local v6    # "newSpanBuffer":Landroid/text/SpannableStringBuilder;
    :cond_53
    return-void

    .line 237
    .restart local v0    # "cs":Ljava/lang/CharSequence;
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method

.method protected bufferDrawTrace(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1213
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1217
    :goto_6
    return-void

    .line 1216
    :cond_7
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->bufferDrawTrace(Landroid/graphics/Canvas;)V

    goto :goto_6
.end method

.method protected calculateDirectionFlickerPopup(II)I
    .registers 13
    .param p1, "verLen"    # I
    .param p2, "horLen"    # I

    .prologue
    .line 3835
    const/4 v2, 0x0

    .line 3836
    .local v2, "dir":I
    mul-int v3, p2, p2

    mul-int v6, p1, p1

    add-int/2addr v3, v6

    int-to-double v0, v3

    .line 3837
    .local v0, "dimenSquare":D
    iget-wide v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerMiddleKeyRadius:D

    iget-wide v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerMiddleKeyRadius:D

    mul-double v4, v6, v8

    .line 3838
    .local v4, "radiusSquare":D
    cmpg-double v3, v0, v4

    if-gtz v3, :cond_28

    .line 3839
    const/4 v2, 0x0

    .line 3854
    :cond_12
    :goto_12
    sget-object v3, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "calculateDirectionFlickerPopup()... dir: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v3, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3855
    return v2

    .line 3840
    :cond_28
    const-wide v6, 0x3ffccccccccccccdL    # 1.8

    mul-double/2addr v6, v4

    cmpg-double v3, v0, v6

    if-gtz v3, :cond_3a

    .line 3841
    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_12

    .line 3842
    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    goto :goto_12

    .line 3844
    :cond_3a
    if-gez p2, :cond_48

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-lt v3, v6, :cond_48

    .line 3845
    const/4 v2, 0x1

    goto :goto_12

    .line 3846
    :cond_48
    if-gez p1, :cond_56

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v3, v6, :cond_56

    .line 3847
    const/4 v2, 0x2

    goto :goto_12

    .line 3848
    :cond_56
    if-lez p2, :cond_60

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lt p2, v3, :cond_60

    .line 3849
    const/4 v2, 0x3

    goto :goto_12

    .line 3851
    :cond_60
    const/4 v2, 0x4

    goto :goto_12
.end method

.method protected changeKeyboardMode()V
    .registers 6

    .prologue
    .line 1706
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrWordAndClearWCL()V

    .line 1707
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 1708
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 1710
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1713
    :cond_19
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v1, :cond_37

    .line 1715
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 1716
    .local v0, "inputMode":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 1717
    invoke-virtual {v4, v0}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    .line 1716
    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 1718
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 1726
    .end local v0    # "inputMode":Ljava/lang/String;
    :cond_37
    :goto_37
    return-void

    .line 1722
    :cond_38
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->toggleSymbolKeyboard()V

    .line 1723
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setMultitapOrAmbigMode()V

    .line 1724
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_37
.end method

.method protected clearAllKeys()V
    .registers 3

    .prologue
    .line 2385
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_e

    .line 2386
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2387
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2389
    :cond_e
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_22

    .line 2390
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2391
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2392
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2394
    :cond_22
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v0, :cond_2b

    .line 2395
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearAllKeys()Z

    .line 2397
    :cond_2b
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 2398
    return-void
.end method

.method public clearCurrentActiveWord()V
    .registers 2

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 476
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 477
    return-void
.end method

.method protected clearKeyboardState()V
    .registers 1

    .prologue
    .line 3508
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->clearKeyboardState()V

    .line 3509
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissJapanesePopup()V

    .line 3510
    return-void
.end method

.method public clearSuggestions()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 319
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isValidBuild()Z

    move-result v0

    if-nez v0, :cond_8

    .line 329
    :cond_7
    :goto_7
    return-void

    .line 323
    :cond_8
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_7

    .line 328
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateWordListView(Ljava/util/List;IZ)V

    goto :goto_7
.end method

.method public confirmSelectedWordWhenConverting(I)Z
    .registers 11
    .param p1, "index"    # I

    .prologue
    const/4 v8, 0x0

    .line 3078
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->confirmRangeConvWord(I)Z

    move-result v0

    if-nez v0, :cond_45

    const/4 v6, 0x1

    .line 3080
    .local v6, "bFinish":Z
    :goto_a
    if-nez v6, :cond_5e

    .line 3082
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3084
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineTextBak:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_20

    .line 3086
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineTextBak:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3089
    :cond_20
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearAllKeys()Z

    .line 3091
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_26
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-ge v7, v0, :cond_47

    .line 3093
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    .line 3091
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    .end local v6    # "bFinish":Z
    .end local v7    # "i":I
    :cond_45
    move v6, v8

    .line 3078
    goto :goto_a

    .line 3096
    .restart local v6    # "bFinish":Z
    .restart local v7    # "i":I
    :cond_47
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3098
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateInlineWhenRC(I)Z

    .line 3100
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandlistWhenRC(I)Z

    .line 3102
    .end local v7    # "i":I
    :cond_5e
    return v6
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/SpeechWrapper;)V
    .registers 8
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 408
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 409
    check-cast p2, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    .end local p2    # "xt9coreinput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    iput-object p2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    .line 410
    new-instance v1, Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-direct {v1, v2, v3}, Lcom/nuance/swype/input/KeyboardSwitcher;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 411
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 414
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 416
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 418
    .local v0, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    .line 420
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->readStyles(Landroid/content/Context;)V

    .line 422
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/BuildInfo;->getCoreLibName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createOpenWnnEngineJAJP(Ljava/lang/String;)Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOpenwnnEngine:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    .line 423
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOpenwnnEngine:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    invoke-virtual {v1}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->init()V

    .line 424
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
    const/4 v2, 0x0

    .line 439
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-nez v3, :cond_6

    .line 462
    :goto_5
    return-object v2

    .line 443
    :cond_6
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-nez v3, :cond_4a

    .line 444
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 445
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 446
    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 445
    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 447
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 448
    sget v3, Lcom/nuance/swype/input/R$layout;->japanese_candidates:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    .line 450
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 451
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->initViews()V

    .line 452
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->requestLayout()V

    .line 453
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    sget v3, Lcom/nuance/swype/input/R$id;->cjk_candidates:I

    .line 454
    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 458
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_4a
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V

    .line 460
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->disableHighlight()V

    .line 461
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    .line 462
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    goto :goto_5
.end method

.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 428
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->destroy()V

    .line 430
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 431
    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 432
    return-void
.end method

.method public dismissJapanesePopup()V
    .registers 2

    .prologue
    .line 3821
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3822
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3824
    :cond_11
    return-void
.end method

.method public dismissSegmentationPopup()V
    .registers 2

    .prologue
    .line 3815
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3816
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3818
    :cond_11
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 5
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 778
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletionOn:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    if-nez v0, :cond_1c

    .line 779
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/Completions;->update([Landroid/view/inputmethod/CompletionInfo;)V

    .line 780
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Completions;->getDisplayItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 781
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->syncCandidateDisplayStyleToMode()V

    .line 783
    :cond_1c
    return-void
.end method

.method public finishInput()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 607
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->removeAllMessages()V

    .line 609
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-nez v0, :cond_9

    .line 625
    :goto_8
    return-void

    .line 614
    :cond_9
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->endSession()V

    .line 616
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 618
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->endInputSession()V

    .line 619
    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 620
    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 622
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissSegmentationPopup()V

    .line 623
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->unwrapTouchEvent(Landroid/view/View;)V

    .line 624
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    goto :goto_8
.end method

.method public flushCurrentActiveWord()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 630
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 632
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_22

    .line 634
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 635
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 636
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 638
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 639
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 641
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hideGridCandidatesView()V

    .line 643
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConfirmedInlineRomaji:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 644
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConfirmedKanji:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 646
    :cond_22
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissSegmentationPopup()V

    .line 647
    return-void
.end method

.method public getWordCandidateListContainer()Landroid/view/View;
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    return-object v0
.end method

.method public getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .registers 2

    .prologue
    .line 3361
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    return-object v0
.end method

.method public handleBackspace(I)Z
    .registers 8
    .param p1, "repeatedCount"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 1292
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1294
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_15

    .line 1296
    const/4 p1, 0x1

    .line 1300
    :cond_15
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->timeoutWhenMultitappingCommaOrPeriod()Z

    .line 1302
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1304
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v3, :cond_22

    if-nez v0, :cond_2d

    .line 1306
    :cond_22
    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 1308
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendBackspace(I)V

    .line 1310
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 1410
    :cond_2c
    :goto_2c
    return v1

    .line 1314
    :cond_2d
    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    if-eq v3, v1, :cond_35

    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    if-ne v3, v5, :cond_3d

    .line 1316
    :cond_35
    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 1318
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    goto :goto_2c

    .line 1322
    :cond_3d
    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    if-eq v3, v5, :cond_49

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->hasTraceInput()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 1324
    :cond_49
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 1326
    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 1328
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1329
    const-string/jumbo v2, ""

    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1330
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1332
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 1334
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 1336
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 1338
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v2

    if-ne v2, v1, :cond_2c

    .line 1340
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->start()V

    goto :goto_2c

    .line 1346
    :cond_72
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMultitapping()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMultitapHandledInCore()Z

    move-result v3

    if-nez v3, :cond_86

    .line 1347
    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    if-lez v2, :cond_2c

    .line 1348
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearOneSymbol()V

    goto :goto_2c

    .line 1354
    :cond_86
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v3

    if-lez v3, :cond_f4

    .line 1355
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearOneSymbol()V

    .line 1356
    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentCursorPosInline:I

    if-nez v2, :cond_bd

    .line 1358
    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 1360
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1361
    const-string/jumbo v2, ""

    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1362
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1364
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 1366
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 1368
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 1370
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v2

    if-ne v2, v1, :cond_2c

    .line 1372
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->start()V

    goto/16 :goto_2c

    .line 1376
    :cond_bd
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v2

    if-lez v2, :cond_cc

    .line 1378
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_2c

    .line 1382
    :cond_cc
    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 1384
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1385
    const-string/jumbo v2, ""

    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1386
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1388
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 1390
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 1392
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 1394
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v2

    if-ne v2, v1, :cond_2c

    .line 1396
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->start()V

    goto/16 :goto_2c

    .line 1402
    :cond_f4
    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 1404
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendBackspace(I)V

    .line 1405
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 1407
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 1409
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 1410
    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    move v1, v2

    goto/16 :goto_2c
.end method

.method public handleCallbackMessage(Landroid/os/Message;)Z
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v13, 0x3ea

    const/16 v12, 0x3ed

    const/16 v11, 0x68

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 3519
    iget v3, p1, Landroid/os/Message;->what:I

    .line 3520
    .local v3, "message":I
    if-ne v3, v11, :cond_ea

    .line 3521
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 3522
    .local v2, "keyIndex":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 3524
    .local v4, "pointerId":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_6a

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v6, v6

    if-ge v2, v6, :cond_6a

    .line 3525
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v0, v6, v2

    .line 3526
    .local v0, "currentKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_6a

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v6, :cond_6a

    .line 3527
    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v6, v8

    const/16 v7, 0xfed

    if-eq v6, v7, :cond_67

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v6, v8

    const/16 v7, 0xfea

    if-eq v6, v7, :cond_67

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v6, v8

    const v7, 0xaa3d

    if-eq v6, v7, :cond_67

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v6, :cond_47

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 3530
    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v6

    if-eqz v6, :cond_67

    :cond_47
    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v6, v8

    const/16 v7, 0x193e

    if-eq v6, v7, :cond_67

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v6, v8

    const/16 v7, 0xb7b

    if-eq v6, v7, :cond_67

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v6, v8

    const/16 v7, 0x7a

    if-eq v6, v7, :cond_67

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v6, v6, v8

    const/16 v7, 0xa

    if-ne v6, v7, :cond_6b

    .line 3535
    :cond_67
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleCallbackMessage(Landroid/os/Message;)Z

    .line 3590
    .end local v0    # "currentKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v2    # "keyIndex":I
    .end local v4    # "pointerId":I
    :cond_6a
    :goto_6a
    return v10

    .line 3540
    .restart local v0    # "currentKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .restart local v2    # "keyIndex":I
    .restart local v4    # "pointerId":I
    :cond_6b
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleMessageJP(Landroid/os/Message;)Z

    move-result v6

    if-nez v6, :cond_6a

    .line 3542
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 3543
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetMultiTap()V

    .line 3544
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x6a

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 3546
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hasAltSymbolOrCode(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 3547
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hasAltSymbol(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v6

    if-eqz v6, :cond_90

    iget-boolean v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->showPopup:Z

    if-nez v6, :cond_d7

    .line 3548
    :cond_90
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->onLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 3549
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isLongPressableBackspaceKey(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 3550
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3c

    invoke-virtual {v6, v13, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3552
    invoke-virtual {p0, v0, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showAltSymbolPopup(Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    .line 3555
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_6a

    .line 3556
    iput-boolean v10, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyRepeated:Z

    .line 3557
    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->repeatCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->repeatCount:I

    .line 3558
    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->repeatCount:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 3559
    .local v1, "expValue":I
    const/16 v5, 0x64

    .line 3560
    .local v5, "timeOut":I
    if-ltz v1, :cond_ca

    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mShortLongPressTimeout:I

    if-ge v1, v6, :cond_ca

    .line 3561
    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mShortLongPressTimeout:I

    sub-int v5, v6, v1

    .line 3564
    :cond_ca
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    .line 3565
    invoke-virtual {v7, v11, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    int-to-long v8, v5

    .line 3564
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6a

    .line 3570
    .end local v1    # "expValue":I
    .end local v5    # "timeOut":I
    :cond_d7
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    iget v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLongPressTimeout:I

    int-to-long v8, v7

    invoke-virtual {v6, v12, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3572
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3c

    invoke-virtual {v6, v13, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3574
    invoke-virtual {p0, v0, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showAltSymbolPopup(Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    goto :goto_6a

    .line 3580
    .end local v0    # "currentKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v2    # "keyIndex":I
    .end local v4    # "pointerId":I
    :cond_ea
    const/16 v6, 0x3ef

    if-ne v3, v6, :cond_f3

    .line 3582
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleMessageJP(Landroid/os/Message;)Z

    goto/16 :goto_6a

    .line 3584
    :cond_f3
    if-ne v3, v12, :cond_fa

    .line 3585
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleMessageJP(Landroid/os/Message;)Z

    goto/16 :goto_6a

    .line 3588
    :cond_fa
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleCallbackMessage(Landroid/os/Message;)Z

    goto/16 :goto_6a
.end method

.method public handleCharKey(Landroid/graphics/Point;I[IJ)V
    .registers 14
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "eventTime"    # J

    .prologue
    const/16 v3, 0x600

    const/16 v6, 0x121

    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 989
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/input/InputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    .line 991
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->removeToastMsg(I)V

    .line 993
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    if-nez v1, :cond_84

    .line 995
    :cond_16
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->end()V

    .line 996
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    .line 998
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMultitapping()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 1000
    int-to-char v1, p2

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendKeyChar(C)V

    .line 1096
    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->recordUsedTimeTapDisplaySelectionList()V

    .line 1098
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    int-to-char v2, p2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isWordCompounder(I)Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->composingState()Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1099
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->supportsAlphaMode()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1100
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->toggleKeyboardMode()V

    .line 1102
    :cond_4d
    return-void

    .line 1003
    :cond_4e
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1004
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1005
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    int-to-char v2, p2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1007
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1009
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1012
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1014
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_28

    .line 1016
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_28

    .line 1021
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_84
    int-to-char v1, p2

    invoke-static {v1}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 1023
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 1025
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_28

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ltz v1, :cond_28

    .line 1027
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1028
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    .line 1027
    invoke-virtual {p0, v2, v1, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto/16 :goto_28

    .line 1033
    :cond_bb
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleWhiteSpaces(I)V

    .line 1035
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearAllKeys()Z

    .line 1037
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1038
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    goto/16 :goto_28

    .line 1040
    :cond_cf
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMultitapping()Z

    move-result v1

    if-eqz v1, :cond_113

    .line 1043
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-ne v1, v5, :cond_e9

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isCommaOrPeriod(I)Z

    move-result v1

    if-nez v1, :cond_f2

    .line 1044
    :cond_e9
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    const/16 v2, 0x900

    if-ne v1, v2, :cond_f7

    .line 1045
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrWordAndClearWCL()V

    .line 1052
    :cond_f2
    :goto_f2
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleExplicitInput(I)V

    goto/16 :goto_28

    .line 1046
    :cond_f7
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    if-ne v1, v3, :cond_f2

    .line 1047
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isCommaOrPeriod(I)Z

    move-result v1

    if-eqz v1, :cond_f2

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_f2

    .line 1048
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-direct {p0, v4, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrWordByIndexAndClearWCL(II)V

    goto :goto_f2

    .line 1053
    :cond_113
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    if-ne v1, v3, :cond_15d

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1054
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_15d

    invoke-direct {p0, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isCommaOrPeriod(I)Z

    move-result v1

    if-nez v1, :cond_15d

    .line 1056
    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadFlickrInputSupported:Z

    if-eqz v1, :cond_158

    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadMultitapInputSupported:Z

    if-nez v1, :cond_158

    if-eqz p3, :cond_158

    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    if-eqz v1, :cond_158

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 1058
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_158

    .line 1061
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 1062
    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 1063
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isValidFlickerIndex()Z

    move-result v1

    if-eqz v1, :cond_158

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_158

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    .line 1064
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_158

    .line 1065
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    .line 1066
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetFlickerIndex()V

    .line 1070
    :cond_158
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleExplicitInput(I)V

    goto/16 :goto_28

    .line 1071
    :cond_15d
    int-to-char v1, p2

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isWordAcceptingSymbol(C)Z

    move-result v1

    if-nez v1, :cond_173

    int-to-char v1, p2

    .line 1072
    invoke-static {v1}, Lcom/nuance/swype/util/CharacterUtilities;->isDigit(I)Z

    move-result v1

    if-nez v1, :cond_173

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1073
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-nez v1, :cond_178

    .line 1082
    :cond_173
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handlePunctOrSymbol(I)V

    goto/16 :goto_28

    .line 1083
    :cond_178
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isRomajiAlphaCharacterConverting(I)Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 1085
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_187

    .line 1086
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->cleanInlineWordSpanAndFlush()V

    .line 1088
    :cond_187
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 1092
    :cond_18a
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleExplicitInput(I)V

    goto/16 :goto_28
.end method

.method public handleClose()V
    .registers 1

    .prologue
    .line 1499
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 1501
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->removeAllMessages()V

    .line 1503
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 1504
    return-void
.end method

.method public handleEmotionKey()V
    .registers 1

    .prologue
    .line 1106
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleEmotionKey()V

    .line 1107
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 1108
    return-void
.end method

.method public handleHardKeyCapsLock(Z)Z
    .registers 3
    .param p1, "iscapslockon"    # Z

    .prologue
    .line 4238
    const/4 v0, 0x1

    return v0
.end method

.method public handleHardKeyDirectionKey(I)Z
    .registers 5
    .param p1, "keycode"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 4258
    packed-switch p1, :pswitch_data_7c

    .line 4290
    :cond_5
    :goto_5
    return v0

    .line 4261
    :pswitch_6
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_36

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_36

    .line 4262
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v1, v2, :cond_2f

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2f

    .line 4263
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->moveHightlightToCenterOrLeftRight(I)Z

    move-result v0

    goto :goto_5

    .line 4265
    :cond_2f
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 4266
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentActiveWord()V

    goto :goto_5

    .line 4270
    :cond_36
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->moveHighlightToNearCandidate(I)Z

    move-result v0

    goto :goto_5

    .line 4273
    :pswitch_3b
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hasInputQueue()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 4274
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 4275
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 4276
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentActiveWord()V

    goto :goto_5

    .line 4279
    :cond_4b
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 4281
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v2, :cond_74

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_74

    .line 4282
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->moveHightlightToCenterOrLeftRight(I)Z

    move-result v0

    goto :goto_5

    .line 4284
    :cond_74
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 4285
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentActiveWord()V

    goto :goto_5

    .line 4258
    nop

    :pswitch_data_7c
    .packed-switch 0x13
        :pswitch_3b
        :pswitch_3b
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public handleHardKeyEscapeKey()Z
    .registers 2

    .prologue
    .line 4248
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hasInputQueue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4249
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentActiveWord()V

    .line 4252
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardkeyBackspace(I)Z
    .registers 8
    .param p1, "repeatedCount"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 4026
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4028
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_15

    .line 4030
    const/4 p1, 0x1

    .line 4035
    :cond_15
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4037
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v1, :cond_1f

    if-nez v0, :cond_2a

    .line 4039
    :cond_1f
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 4041
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendBackspace(I)V

    .line 4043
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 4152
    :cond_29
    :goto_29
    return v2

    .line 4047
    :cond_2a
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    if-eq v1, v2, :cond_32

    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    if-ne v1, v5, :cond_3a

    .line 4049
    :cond_32
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 4051
    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    goto :goto_29

    .line 4055
    :cond_3a
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    if-ne v1, v5, :cond_67

    .line 4057
    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 4059
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 4061
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4062
    const-string/jumbo v1, ""

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4063
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4065
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 4067
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 4069
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 4071
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v1

    if-ne v1, v2, :cond_29

    .line 4073
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->start()V

    goto :goto_29

    .line 4079
    :cond_67
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMultitapping()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 4080
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_29

    .line 4081
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearKey()Z

    goto :goto_29

    .line 4088
    :cond_7b
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_ef

    .line 4090
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearKey()Z

    .line 4092
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v1

    if-nez v1, :cond_b8

    .line 4094
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 4096
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4097
    const-string/jumbo v1, ""

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4098
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4100
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 4102
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 4104
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 4106
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v1

    if-ne v1, v2, :cond_29

    .line 4108
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->start()V

    goto/16 :goto_29

    .line 4112
    :cond_b8
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_c7

    .line 4114
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_29

    .line 4118
    :cond_c7
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 4120
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4121
    const-string/jumbo v1, ""

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4122
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4124
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 4126
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 4128
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 4130
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v1

    if-ne v1, v2, :cond_29

    .line 4132
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->start()V

    goto/16 :goto_29

    .line 4138
    :cond_ef
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 4140
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v1

    if-nez v1, :cond_11a

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_11a

    .line 4141
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4142
    const-string/jumbo v1, ""

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4143
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4147
    :goto_10d
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 4149
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 4151
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->backSpace()V

    goto/16 :goto_29

    .line 4145
    :cond_11a
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendBackspace(I)V

    goto :goto_10d
.end method

.method public handleHardkeyCharKey(ILandroid/view/KeyEvent;Z)V
    .registers 10
    .param p1, "primaryCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "shiftable"    # Z

    .prologue
    .line 4016
    if-nez p1, :cond_3

    .line 4022
    :goto_2
    return-void

    .line 4020
    :cond_3
    const/4 v0, 0x1

    new-array v3, v0, [I

    const/4 v0, 0x0

    aput p1, v3, v0

    .line 4021
    .local v3, "keyCodes":[I
    const/4 v1, 0x0

    if-eqz p2, :cond_16

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    :goto_10
    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    goto :goto_2

    :cond_16
    const-wide/16 v4, 0x0

    goto :goto_10
.end method

.method public handleHardkeyDelete(I)Z
    .registers 8
    .param p1, "repeatedCount"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4170
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 4172
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v2, :cond_c

    if-nez v1, :cond_10

    .line 4173
    :cond_c
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendBackspace(I)V

    .line 4214
    :cond_f
    :goto_f
    return v4

    .line 4181
    :cond_10
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v2

    if-lez v2, :cond_36

    .line 4182
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isComposingText()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hasInputQueue()Z

    move-result v2

    if-nez v2, :cond_36

    .line 4183
    :cond_28
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_33

    .line 4184
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 4186
    :cond_33
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 4189
    :cond_36
    const-string/jumbo v2, "multitap"

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-nez v2, :cond_65

    iget-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    if-eqz v2, :cond_65

    iget-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRecaptureOn:Z

    if-eqz v2, :cond_65

    .line 4192
    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4193
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 4194
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4195
    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 4196
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_f

    .line 4201
    :cond_65
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 4202
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 4204
    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4205
    .local v0, "cSeqAfter":Ljava/lang/CharSequence;
    if-eqz v0, :cond_80

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_80

    .line 4206
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4207
    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 4208
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4210
    :cond_80
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 4211
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setContext([C)V

    .line 4212
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->backSpace()V

    goto :goto_f
.end method

.method public handleHardkeyEnter()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 4219
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v1

    if-lez v1, :cond_50

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4220
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ltz v1, :cond_50

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4221
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 4222
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4223
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 4224
    .local v0, "word":Ljava/lang/CharSequence;
    if-eqz v0, :cond_4f

    .line 4225
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4226
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 4227
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->selectActiveWord()V

    .line 4233
    .end local v0    # "word":Ljava/lang/CharSequence;
    :cond_4f
    :goto_4f
    return v4

    .line 4231
    :cond_50
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendKeyToApplication(I)V

    goto :goto_4f
.end method

.method public handleHardkeyShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .registers 3
    .param p1, "state"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 4243
    const/4 v0, 0x1

    return v0
.end method

.method public handleHardkeySpace(ZI)Z
    .registers 5
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    .line 4157
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2a

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_2a

    .line 4158
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2a

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 4160
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleHardkeyEnter()Z

    move-result v0

    .line 4164
    :goto_29
    return v0

    .line 4163
    :cond_2a
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissSegmentationPopup()V

    .line 4164
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleSpace(ZI)Z

    move-result v0

    goto :goto_29
.end method

.method public handleKey(IZI)Z
    .registers 8
    .param p1, "primaryCode"    # I
    .param p2, "quickPressed"    # Z
    .param p3, "repeatedCount"    # I

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 2861
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->removeToastMsg(I)V

    .line 2863
    sparse-switch p1, :sswitch_data_fa

    .line 2969
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    :cond_d
    :goto_d
    return v0

    .line 2867
    :sswitch_e
    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v1, :cond_d

    .line 2869
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->postToastMsg(I)V

    goto :goto_d

    .line 2875
    :sswitch_16
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 2876
    if-nez p2, :cond_d

    .line 2877
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 2878
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->startSpeech()V

    goto :goto_d

    .line 2885
    :sswitch_22
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2890
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2892
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 2893
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->convertHira(C)C

    move-result v1

    if-eqz v1, :cond_51

    .line 2894
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearKey()Z

    .line 2896
    :cond_51
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->convertHira(C)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleExplicitInput(I)V

    goto :goto_d

    .line 2903
    :sswitch_67
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2908
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2910
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->timeoutWhenMultitappingCommaOrPeriod()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 2911
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearKey()Z

    .line 2912
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->hiraCycle(C)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleExplicitInput(I)V

    goto/16 :goto_d

    .line 2918
    :sswitch_9f
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showSegmentationPopup()V

    goto/16 :goto_d

    .line 2923
    :sswitch_a4
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->timeoutWhenMultitappingCommaOrPeriod()Z

    move-result v1

    if-nez v1, :cond_c2

    .line 2925
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_c2

    .line 2927
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 2929
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->reduceRangeConversion()Z

    goto/16 :goto_d

    .line 2932
    :cond_bd
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->doConversionEx()Z

    goto/16 :goto_d

    .line 2936
    :cond_c2
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/16 v2, 0xfdd

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/IME;->sendLeftRightKey(II)V

    goto/16 :goto_d

    .line 2943
    :sswitch_cb
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_e4

    .line 2945
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->timeoutWhenMultitappingCommaOrPeriod()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2947
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->expandRangeConversion()Z

    goto/16 :goto_d

    .line 2951
    :cond_e4
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/16 v2, 0xfde

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/IME;->sendLeftRightKey(II)V

    goto/16 :goto_d

    .line 2958
    :sswitch_ed
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->toggleLastKeyboard()V

    goto/16 :goto_d

    .line 2964
    :sswitch_f4
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    goto/16 :goto_d

    .line 2863
    :sswitch_data_fa
    .sparse-switch
        0xb7c -> :sswitch_e
        0xfdd -> :sswitch_a4
        0xfde -> :sswitch_cb
        0x193e -> :sswitch_f4
        0x193f -> :sswitch_16
        0xaa38 -> :sswitch_ed
        0xaa39 -> :sswitch_22
        0xaa3a -> :sswitch_67
        0xaa3c -> :sswitch_9f
    .end sparse-switch
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 788
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 796
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_52

    const/16 v1, 0x15

    if-eq p1, v1, :cond_1a

    const/16 v1, 0x16

    if-eq p1, v1, :cond_1a

    const/16 v1, 0x17

    if-ne p1, v1, :cond_52

    .line 802
    :cond_1a
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_40

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    .line 803
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_40

    .line 805
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, "selectedWord":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 808
    const/4 v1, 0x1

    .line 819
    .end local v0    # "selectedWord":Ljava/lang/String;
    :goto_3f
    return v1

    .line 809
    :cond_40
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v1

    if-lez v1, :cond_52

    .line 811
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 813
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 819
    :cond_52
    const/4 v1, 0x0

    goto :goto_3f
.end method

.method public handleKeyboardResize()V
    .registers 1

    .prologue
    .line 1926
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->timeoutWhenMultitappingCommaOrPeriod()Z

    .line 1928
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleKeyboardResize()V

    .line 1929
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissJapanesePopup()V

    .line 1930
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearKeyOffsets()V

    .line 1931
    return-void
.end method

.method public handleMessageJP(Landroid/os/Message;)Z
    .registers 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v10, 0x3ed

    const/16 v9, 0x68

    const/16 v8, 0xb79

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 3594
    const/4 v1, 0x0

    .line 3596
    .local v1, "breakable":Z
    iget v3, p1, Landroid/os/Message;->what:I

    .line 3599
    .local v3, "msg":I
    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    if-eq v5, v7, :cond_1f

    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v6, v6

    if-ge v5, v6, :cond_1f

    .line 3600
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    aget-object v2, v5, v6

    .line 3601
    .local v2, "currentKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    sparse-switch v3, :sswitch_data_134

    .line 3689
    .end local v2    # "currentKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1f
    :goto_1f
    return v1

    .line 3609
    .restart local v2    # "currentKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :sswitch_20
    if-eqz v2, :cond_1f

    .line 3610
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 3611
    iget-object v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    if-eqz v5, :cond_42

    iget-object v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v5, v5

    if-lez v5, :cond_42

    iget-object v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v5, v5, v4

    const/16 v6, 0x20

    if-eq v5, v6, :cond_1f

    iget-object v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v4, v5, v4

    const v5, 0xaa37

    if-eq v4, v5, :cond_1f

    .line 3616
    :cond_42
    iget v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    if-eq v4, v8, :cond_1f

    .line 3617
    const/4 v1, 0x1

    goto :goto_1f

    .line 3623
    :sswitch_48
    if-eqz v2, :cond_1f

    .line 3624
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadFlickrInputSupported:Z

    if-eqz v5, :cond_1f

    iget v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    if-eq v5, v8, :cond_1f

    .line 3627
    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    if-ltz v5, :cond_80

    .line 3628
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    aget-object v0, v5, v6

    .line 3635
    .local v0, "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_62
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_90

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_90

    .line 3636
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 3637
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 3638
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3ef

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1f

    .line 3629
    .end local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_80
    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKeyNav:I

    if-ltz v5, :cond_8b

    .line 3630
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKeyNav:I

    aget-object v0, v5, v6

    .restart local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    goto :goto_62

    .line 3632
    .end local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_8b
    const/4 v0, 0x0

    .line 3633
    .restart local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    goto :goto_62

    .line 3641
    :cond_90
    if-eqz v0, :cond_1f

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v5, v5

    if-lez v5, :cond_1f

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v5, v5, v4

    const/16 v6, 0x3040

    if-le v5, v6, :cond_1f

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v5, v5, v4

    const/16 v6, 0x30fc

    if-gt v5, v6, :cond_1f

    .line 3643
    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    .line 3644
    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    iput v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    .line 3645
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    .line 3646
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 3647
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 3648
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3ef

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_1f

    .line 3654
    .end local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :sswitch_c3
    if-eqz v2, :cond_1f

    .line 3655
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v5

    if-eqz v5, :cond_11a

    iget-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadFlickrInputSupported:Z

    if-eqz v5, :cond_11a

    iget v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    if-eq v5, v8, :cond_11a

    .line 3658
    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    if-ltz v5, :cond_107

    .line 3659
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    aget-object v0, v5, v6

    .line 3667
    .restart local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_dd
    if-eqz v0, :cond_f5

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v5, v5

    if-lez v5, :cond_f5

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v5, v5, v4

    const/16 v6, 0x3040

    if-le v5, v6, :cond_f5

    iget-object v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v5, v5, v4

    const/16 v6, 0x30fc

    if-gt v5, v6, :cond_f5

    const/4 v4, 0x1

    .line 3669
    :cond_f5
    if-nez v4, :cond_fd

    .line 3670
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    .line 3671
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->popupMiniKeyboardOrLongPress()Z

    .line 3673
    :cond_fd
    iget-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInMultiTap:Z

    if-eqz v4, :cond_104

    .line 3674
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetMultiTap()V

    .line 3676
    :cond_104
    const/4 v1, 0x1

    .line 3677
    goto/16 :goto_1f

    .line 3660
    .end local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_107
    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKeyNav:I

    if-ltz v5, :cond_112

    .line 3661
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKeyNav:I

    aget-object v0, v5, v6

    .restart local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    goto :goto_dd

    .line 3663
    .end local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_112
    const/4 v0, 0x0

    .line 3664
    .restart local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    .line 3665
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->popupMiniKeyboardOrLongPress()Z

    goto :goto_dd

    .line 3678
    .end local v0    # "akey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_11a
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v5

    if-eqz v5, :cond_12f

    iget-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadMultitapInputSupported:Z

    if-eqz v5, :cond_12f

    iget-object v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v4, v5, v4

    int-to-char v4, v4

    .line 3679
    invoke-static {v4}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->isHiragana(C)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 3680
    :cond_12f
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->popupMiniKeyboardOrLongPress()Z

    goto/16 :goto_1f

    .line 3601
    :sswitch_data_134
    .sparse-switch
        0x68 -> :sswitch_20
        0x3ed -> :sswitch_c3
        0x3ef -> :sswitch_48
    .end sparse-switch
.end method

.method public handleMultitapToggle()V
    .registers 5

    .prologue
    .line 1755
    iget-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v2, :cond_43

    .line 1757
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->toggleAmbigMode()V

    .line 1759
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 1761
    .local v0, "inputMode":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setCorrectionLevel(Ljava/lang/String;)V

    .line 1762
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    const-string/jumbo v3, "multitap"

    .line 1763
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1762
    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/AppPreferences;->setMultitapMode(Z)V

    .line 1767
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3a

    .line 1769
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1771
    .local v1, "selectedWord":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1774
    .end local v1    # "selectedWord":Ljava/lang/String;
    :cond_3a
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/nuance/swype/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 1776
    .end local v0    # "inputMode":Ljava/lang/String;
    :cond_43
    return-void
.end method

.method public handlePossibleActionAfterResize()V
    .registers 1

    .prologue
    .line 3973
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearKeyOffsets()V

    .line 3974
    return-void
.end method

.method public handlePossibleActionAfterUniversalKeyboardResize(Z)V
    .registers 2
    .param p1, "hideSymbolView"    # Z

    .prologue
    .line 3978
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handlePossibleActionAfterResize()V

    .line 3979
    return-void
.end method

.method protected handleScrollLeft()Z
    .registers 2

    .prologue
    .line 2551
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->cycleKeyboard()Z

    move-result v0

    return v0
.end method

.method protected handleScrollRight()Z
    .registers 2

    .prologue
    .line 2556
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->cycleKeyboard()Z

    move-result v0

    return v0
.end method

.method public handleShiftKey()V
    .registers 2

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->cycleShiftState()V

    .line 2403
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->invalidateKeyboardImage()V

    .line 2404
    return-void
.end method

.method public handleSpace(ZI)Z
    .registers 14
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1416
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 1418
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v5, :cond_e

    if-nez v3, :cond_12

    .line 1420
    :cond_e
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendSpace()V

    .line 1493
    :cond_11
    :goto_11
    return v7

    .line 1424
    :cond_12
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1426
    const/16 v5, 0x16

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->moveHighlightToNearCandidateSoftKeyboard(I)Z

    goto :goto_11

    .line 1429
    :cond_1e
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->timeoutWhenMultitappingCommaOrPeriod()Z

    move-result v5

    if-nez v5, :cond_38

    .line 1431
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_38

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v5

    if-nez v5, :cond_38

    .line 1433
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->doConversion()Z

    goto :goto_11

    .line 1439
    :cond_38
    const/4 v5, 0x3

    iput v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 1441
    const/4 v0, 0x1

    .line 1442
    .local v0, "addSpace":Z
    const/4 v2, 0x0

    .line 1444
    .local v2, "displayNWP":Z
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-eq v5, v10, :cond_60

    .line 1446
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_60

    .line 1448
    iget-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mNextWordPredictionOn:Z

    .line 1449
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1450
    .local v4, "selectedWord":Ljava/lang/String;
    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v4, v6}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1451
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1452
    const/4 v0, 0x0

    .line 1459
    .end local v4    # "selectedWord":Ljava/lang/String;
    :cond_60
    if-eqz p1, :cond_a2

    if-ge p2, v9, :cond_a2

    iget-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mAutoPunctuationOn:Z

    if-eqz v5, :cond_a2

    iget-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    if-eqz v5, :cond_a2

    .line 1461
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1462
    invoke-interface {v3, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1463
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1470
    if-eqz v1, :cond_a2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v9, :cond_a2

    .line 1471
    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 1472
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v5

    if-nez v5, :cond_a2

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    .line 1473
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v5

    if-nez v5, :cond_a2

    .line 1475
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleAutoPunct()V

    .line 1476
    const/4 v0, 0x0

    .line 1480
    .end local v1    # "cSeqBefore":Ljava/lang/CharSequence;
    :cond_a2
    if-eqz v0, :cond_b5

    .line 1482
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->processSpaceKeyState(Landroid/view/inputmethod/InputConnection;)V

    .line 1484
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->sendKeyChar(C)V

    .line 1489
    :goto_ac
    if-eqz v2, :cond_11

    .line 1490
    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_11

    .line 1487
    :cond_b5
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v5}, Lcom/nuance/swype/input/EditState;->start()V

    goto :goto_ac
.end method

.method public handleTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
    .registers 7
    .param p1, "trace"    # Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1171
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1174
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isValidFlickerIndex()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1175
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleFlickerPopup()V

    .line 1176
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    .line 1177
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetFlickerIndex()V

    .line 1204
    :cond_19
    :goto_19
    return-void

    .line 1183
    :cond_1a
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v1

    if-nez v1, :cond_25

    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    .line 1185
    :cond_25
    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 1188
    :cond_27
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->processStoredTouch()Z
    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->access$800(Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1189
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    move-result v0

    .line 1190
    .local v0, "status":I
    if-gtz v0, :cond_4d

    .line 1191
    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 1192
    if-eq v0, v3, :cond_47

    .line 1193
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v1, :cond_44

    .line 1194
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->clearPhraseListView()V

    .line 1196
    :cond_44
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setNotMatchToolTipSuggestion()V

    .line 1199
    :cond_47
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->clearAllKeys()Z

    goto :goto_19

    .line 1201
    :cond_4d
    const/4 v1, 0x2

    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    goto :goto_19
.end method

.method public isConverting()Z
    .registers 2

    .prologue
    .line 2975
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isInputSessionStarted()Z
    .registers 3

    .prologue
    .line 4448
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

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

.method public isKeyboardInput()Z
    .registers 3

    .prologue
    .line 1220
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1221
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isKeypadInput()Z
    .registers 2

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected isMultitapHandledInCore()Z
    .registers 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 224
    const/4 v0, 0x1

    .line 226
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected isPressHoldFlickrMessage()Z
    .registers 2

    .prologue
    .line 3514
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadFlickrInputSupported:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z
    .registers 3
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 2592
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mScrollable:Z

    return v0
.end method

.method protected isSupportMultitouchGesture()Z
    .registers 2

    .prologue
    .line 2546
    const/4 v0, 0x1

    return v0
.end method

.method protected isTraceInputEnabled()Z
    .registers 2

    .prologue
    .line 2466
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTraceEnabledOnKeyboard:Z

    return v0
.end method

.method protected isValidFlickerIndex()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 3860
    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "isValidFlickerIndex()...japaneseFlickerKeyIndex: "

    aput-object v4, v3, v1

    const/4 v4, 0x1

    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3863
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3865
    .local v0, "visibleKeys":[Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    if-ltz v2, :cond_22

    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    array-length v3, v0

    if-lt v2, v3, :cond_23

    .line 3869
    :cond_22
    :goto_22
    return v1

    :cond_23
    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    aget-object v2, v0, v2

    iget-object v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v2, v1

    int-to-char v1, v1

    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->isHiragana(C)Z

    move-result v1

    goto :goto_22
.end method

.method protected isValidFlickerRelativeIndex()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3873
    sget-object v3, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "isValidFlickerRelativeIndex()...japaneseFlickerKeyRelativeIndex: "

    aput-object v5, v4, v2

    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3875
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isValidFlickerIndex()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 3876
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3877
    .local v0, "visibleKeys":[Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    iget v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    aget-object v4, v0, v4

    iget-object v4, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2f

    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    if-ltz v3, :cond_2f

    .line 3882
    .end local v0    # "visibleKeys":[Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_2e
    return v1

    :cond_2f
    move v1, v2

    goto :goto_2e
.end method

.method public nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .registers 4
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 2603
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissPopupKeyboard()V

    .line 2605
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-ne p1, v1, :cond_28

    .line 2606
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v1

    if-lez v1, :cond_33

    .line 2607
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2608
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 2609
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollNext()V

    .line 2610
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 2624
    :cond_28
    :goto_28
    return-void

    .line 2613
    :cond_29
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->suggestions()Ljava/util/List;

    move-result-object v0

    .line 2614
    .local v0, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showGridCandidatesView(Ljava/util/List;)V

    goto :goto_28

    .line 2616
    .end local v0    # "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_33
    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletionOn:Z

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Completions;->size()I

    move-result v1

    if-lez v1, :cond_28

    .line 2617
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->suggestions()Ljava/util/List;

    move-result-object v0

    .line 2618
    .restart local v0    # "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    .line 2619
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showGridCandidatesView(Ljava/util/List;)V

    goto :goto_28
.end method

.method public onApplicationUnbind()V
    .registers 1

    .prologue
    .line 2472
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onApplicationUnbind()V

    .line 2477
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 2479
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 2480
    return-void
.end method

.method public onBeginDrag()V
    .registers 1

    .prologue
    .line 4416
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onBeginDrag()V

    .line 4417
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearKeyOffsets()V

    .line 4418
    return-void
.end method

.method public onCandidateLongPressed(ILjava/lang/String;ILcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "wdSource"    # I
    .param p4, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 3355
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 3780
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->leftArrowButton:Landroid/view/View;

    if-ne p1, v0, :cond_2b

    .line 3781
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1f

    .line 3783
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3785
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->reduceRangeConversion()Z

    .line 3812
    :cond_1a
    :goto_1a
    return-void

    .line 3788
    :cond_1b
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->doConversionEx()Z

    goto :goto_1a

    .line 3791
    :cond_1f
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_1a

    .line 3792
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/16 v1, 0xfdd

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/IME;->sendLeftRightKey(II)V

    goto :goto_1a

    .line 3795
    :cond_2b
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->rightArrowButton:Landroid/view/View;

    if-ne p1, v0, :cond_51

    .line 3796
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_45

    .line 3798
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3800
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->expandRangeConversion()Z

    goto :goto_1a

    .line 3803
    :cond_45
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_1a

    .line 3804
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/16 v1, 0xfde

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/IME;->sendLeftRightKey(II)V

    goto :goto_1a

    .line 3807
    :cond_51
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->closeSegmentationButton:Landroid/view/View;

    if-ne p1, v0, :cond_59

    .line 3808
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissSegmentationPopup()V

    goto :goto_1a

    .line 3810
    :cond_59
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->onClick(Landroid/view/View;)V

    goto :goto_1a
.end method

.method public onDrag(II)V
    .registers 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 4422
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->onDrag(II)V

    .line 4423
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateSegemetationPopup(II)V

    .line 4424
    return-void
.end method

.method public onEndDrag()V
    .registers 5

    .prologue
    const/16 v1, 0x16

    .line 4428
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onEndDrag()V

    .line 4430
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4431
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4433
    :cond_12
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4434
    return-void
.end method

.method public onMultitapTimeout()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 1781
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v3

    if-eqz v3, :cond_31

    iget-boolean v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInMultiTap:Z

    if-nez v3, :cond_31

    .line 1783
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_30

    .line 1784
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1785
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1786
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1788
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_30

    .line 1789
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1854
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_30
    :goto_30
    return-void

    .line 1795
    :cond_31
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v3, :cond_39

    iget-boolean v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    if-nez v3, :cond_60

    .line 1797
    :cond_39
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1799
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_30

    .line 1803
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5c

    .line 1804
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1806
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1807
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1808
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1810
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1853
    :cond_5c
    :goto_5c
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->invalidateKeyboardImage()V

    goto :goto_30

    .line 1814
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_60
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1815
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1817
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1819
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_30

    .line 1823
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_81

    .line 1824
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1827
    :cond_81
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5c

    .line 1829
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    .line 1831
    .local v1, "lastSymbol":C
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isWordAcceptingSymbol(C)Z

    move-result v3

    if-nez v3, :cond_ad

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    .line 1832
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-ne v3, v4, :cond_e1

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    .line 1833
    invoke-virtual {v3, v1}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v3

    if-eqz v3, :cond_e1

    :cond_ad
    move v3, v4

    .line 1835
    :goto_ae
    if-eqz v3, :cond_5c

    .line 1837
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5c

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 1838
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_5c

    .line 1840
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1842
    .local v2, "selectedWord":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 1844
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1845
    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1846
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1848
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    goto/16 :goto_5c

    .line 1833
    .end local v2    # "selectedWord":Ljava/lang/String;
    :cond_e1
    const/4 v3, 0x0

    goto :goto_ae
.end method

.method public onPressReleaseCandidate(ILjava/lang/String;I)Z
    .registers 5
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "wdSource"    # I

    .prologue
    .line 3357
    const/4 v0, 0x0

    return v0
.end method

.method public onScrollContentChanged()V
    .registers 2

    .prologue
    .line 4410
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v0, :cond_9

    .line 4411
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->updateScrollArrowVisibility()V

    .line 4413
    :cond_9
    return-void
.end method

.method public onSnapToEdge(II)V
    .registers 7
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/16 v1, 0x16

    .line 4438
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->onSnapToEdge(II)V

    .line 4440
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4441
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4443
    :cond_12
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4444
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .registers 12
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 831
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 921
    :cond_b
    :goto_b
    return-void

    .line 835
    :cond_c
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    if-nez v0, :cond_26

    .line 837
    :cond_14
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v6

    .line 839
    .local v6, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_b

    .line 841
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 843
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 844
    invoke-interface {v6, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 845
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_b

    .line 849
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_26
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_68

    .line 851
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->composingState()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 852
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 853
    .local v7, "selectedWord":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 854
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrWordAndClearWCL()V

    .line 863
    .end local v7    # "selectedWord":Ljava/lang/String;
    :goto_41
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v6

    .line 865
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_52

    .line 867
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 869
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 870
    invoke-interface {v6, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 871
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 874
    :cond_52
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    goto :goto_b

    .line 856
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v7    # "selectedWord":Ljava/lang/String;
    :cond_58
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v7, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_41

    .line 859
    .end local v7    # "selectedWord":Ljava/lang/String;
    :cond_5d
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 860
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    goto :goto_41

    .line 875
    :cond_68
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->composingState()Z

    move-result v0

    if-nez v0, :cond_a0

    .line 878
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 880
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 882
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v6

    .line 884
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_99

    .line 886
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 888
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 889
    invoke-interface {v6, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 890
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 893
    :cond_99
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    goto/16 :goto_b

    .line 894
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_a0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, v4, :cond_c1

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 896
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v6

    .line 898
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_b

    .line 900
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 902
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 903
    invoke-interface {v6, p1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 904
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_b

    .line 908
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_c1
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 910
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 912
    .local v2, "textcode":I
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 914
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    int-to-char v1, v2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/EditState;->characterTyped(C)V

    .line 917
    :cond_de
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_b
.end method

.method protected onTouchHeldEnded(ILcom/nuance/swype/input/KeyboardEx$Key;)V
    .registers 11
    .param p1, "pointerId"    # I
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 4792
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isValidFlickerIndex()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4793
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleFlickerPopup()V

    .line 4794
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    .line 4795
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetFlickerIndex()V

    .line 4818
    .end local p0    # "this":Lcom/nuance/swype/input/japanese/JapaneseInputView;
    :goto_1c
    return-void

    .line 4797
    .restart local p0    # "this":Lcom/nuance/swype/input/japanese/JapaneseInputView;
    :cond_1d
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHshPointers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->touchUpHandleBySlideSelectPopup(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/stats/UsageManager;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 4798
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 4799
    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadFlickrInputSupported:Z

    if-nez v1, :cond_60

    if-eqz p2, :cond_60

    iget-object v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v1, v1

    if-lez v1, :cond_60

    iget-object v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v4

    const/16 v3, 0x3040

    if-le v1, v3, :cond_60

    iget-object v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v4

    const/16 v3, 0x30fc

    if-gt v1, v3, :cond_60

    .line 4801
    iget-object v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v1, v4

    move-object v1, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->notifyKeyboardListenerOnKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    .line 4814
    .end local p0    # "this":Lcom/nuance/swype/input/japanese/JapaneseInputView;
    :cond_60
    :goto_60
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissPopupKeyboard()V

    .line 4815
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissSingleAltCharPopup()V

    .line 4816
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissPreviewPopup()V

    goto :goto_1c

    .line 4804
    .restart local p0    # "this":Lcom/nuance/swype/input/japanese/JapaneseInputView;
    :cond_6a
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 4806
    iget-object v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftedLabel:Ljava/lang/CharSequence;

    move-object v0, p0

    .line 4809
    .end local p0    # "this":Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .local v0, "this":Lcom/nuance/swype/input/japanese/JapaneseInputView;
    :goto_73
    invoke-virtual {v0, v1, v6, v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->notifyKeyboardListenerOnText(Ljava/lang/CharSequence;J)V

    goto :goto_60

    .end local v0    # "this":Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .restart local p0    # "this":Lcom/nuance/swype/input/japanese/JapaneseInputView;
    :cond_77
    iget-object v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7f

    iget-object v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->altLabel:Ljava/lang/CharSequence;

    move-object v0, p0

    .end local p0    # "this":Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .restart local v0    # "this":Lcom/nuance/swype/input/japanese/JapaneseInputView;
    goto :goto_73

    .end local v0    # "this":Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .restart local p0    # "this":Lcom/nuance/swype/input/japanese/JapaneseInputView;
    :cond_7f
    iget-object v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    move-object v0, p0

    .end local p0    # "this":Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .restart local v0    # "this":Lcom/nuance/swype/input/japanese/JapaneseInputView;
    goto :goto_73
.end method

.method protected popupMiniKeyboardOrLongPress()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 3366
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMultitapping()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3367
    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTapCount:I

    if-ltz v2, :cond_13

    .line 3368
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->multitapTimeOut()V

    .line 3376
    :cond_e
    :goto_e
    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mPopupLayout:I

    if-nez v2, :cond_1e

    .line 3393
    :cond_12
    :goto_12
    return v1

    .line 3370
    :cond_13
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3371
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetMultiTap()V

    goto :goto_e

    .line 3380
    :cond_1e
    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    if-ltz v2, :cond_12

    iget v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v3, v3

    if-ge v2, v3, :cond_12

    .line 3384
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    aget-object v0, v2, v3

    .line 3386
    .local v0, "popupKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_41

    .line 3387
    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v3, 0xb79

    if-eq v2, v3, :cond_3d

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v2

    if-nez v2, :cond_41

    .line 3388
    :cond_3d
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v2, :cond_12

    .line 3393
    :cond_41
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->onLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    goto :goto_12
.end method

.method public final prepareFlickerPopup()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3694
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3695
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3697
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    .line 3698
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFlickerPopup:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFlickerView:Landroid/view/View;

    .line 3699
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mFlickerView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3700
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3701
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3702
    return-void
.end method

.method public prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .registers 4
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 2628
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-ne p1, v1, :cond_25

    .line 2629
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v1

    if-lez v1, :cond_30

    .line 2630
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2631
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 2632
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollPrev()V

    .line 2633
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setScrollable(Z)V

    .line 2647
    :cond_25
    :goto_25
    return-void

    .line 2636
    :cond_26
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->suggestions()Ljava/util/List;

    move-result-object v0

    .line 2637
    .local v0, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showGridCandidatesView(Ljava/util/List;)V

    goto :goto_25

    .line 2639
    .end local v0    # "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_30
    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletionOn:Z

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Completions;->size()I

    move-result v1

    if-lez v1, :cond_25

    .line 2640
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->suggestions()Ljava/util/List;

    move-result-object v0

    .line 2641
    .restart local v0    # "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 2642
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showGridCandidatesView(Ljava/util/List;)V

    goto :goto_25
.end method

.method public refreshBTAutoCorrection()V
    .registers 4

    .prologue
    .line 1895
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->refreshBTAutoCorrection()V

    .line 1896
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/16 v1, 0x63

    iget-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->autoCorrectionEnabled:Z

    invoke-virtual {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setAttribute(IZ)V

    .line 1897
    return-void
.end method

.method protected removeAllMessages()V
    .registers 4

    .prologue
    .line 382
    const/4 v0, 0x1

    .local v0, "msg":I
    :goto_1
    const/16 v1, 0x13

    if-gt v0, v1, :cond_d

    .line 383
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 385
    :cond_d
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 387
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 388
    return-void
.end method

.method protected resetFlickerIndex()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 3886
    sget-object v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "resetFlickerIndex"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3887
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    .line 3888
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    .line 3889
    iput-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTopKeyFlicerUp:Z

    .line 3890
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    .line 3891
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3892
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3894
    :cond_26
    return-void
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .registers 15
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/CharSequence;
    .param p3, "source"    # Landroid/view/View;

    .prologue
    const/16 v10, 0xff

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1536
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 1537
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v4

    if-eqz v4, :cond_90

    .line 1538
    if-eqz v2, :cond_1f

    .line 1540
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1541
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1542
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1545
    :cond_1f
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->covertingMidashigo:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1548
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->confirmSelectedWordWhenConverting(I)Z

    move-result v0

    .line 1549
    .local v0, "allConfirmed":Z
    if-eq p1, v7, :cond_2c

    if-eqz v0, :cond_8a

    .line 1551
    :cond_2c
    iput v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 1553
    iput v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 1555
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isUDBSubstitutionField()Z

    move-result v4

    if-nez v4, :cond_51

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v4

    if-nez v4, :cond_51

    .line 1557
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->covertingYomi:Ljava/lang/StringBuilder;

    .line 1558
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->covertingMidashigo:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->noteWordDone(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1560
    :cond_51
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetConversionStrings()V

    .line 1562
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1563
    .local v3, "kana":Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v4, v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getInlineText(Landroid/text/SpannableStringBuilder;)V

    .line 1565
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_7e

    .line 1566
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->ShowNextWordPrediction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1570
    :goto_6f
    if-eqz v0, :cond_74

    .line 1571
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 1574
    :cond_74
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeyboardInput()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 1575
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissSegmentationPopup()V

    .line 1701
    .end local v0    # "allConfirmed":Z
    .end local v3    # "kana":Landroid/text/SpannableStringBuilder;
    :cond_7d
    :goto_7d
    return-void

    .line 1568
    .restart local v0    # "allConfirmed":Z
    .restart local v3    # "kana":Landroid/text/SpannableStringBuilder;
    :cond_7e
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->ShowNextWordPrediction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_6f

    .line 1581
    .end local v3    # "kana":Landroid/text/SpannableStringBuilder;
    :cond_8a
    const/4 v4, 0x2

    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mConvert:I

    .line 1583
    iput v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    goto :goto_7d

    .line 1589
    .end local v0    # "allConfirmed":Z
    :cond_90
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeyboardInput()Z

    move-result v4

    if-eqz v4, :cond_99

    .line 1590
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissSegmentationPopup()V

    .line 1593
    :cond_99
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-nez v4, :cond_b5

    .line 1595
    iget-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletionOn:Z

    if-eqz v4, :cond_7d

    if-ltz p1, :cond_7d

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v4}, Lcom/nuance/swype/input/Completions;->size()I

    move-result v4

    if-ge p1, v4, :cond_7d

    .line 1596
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v4, p1}, Lcom/nuance/swype/input/Completions;->get(I)Landroid/view/inputmethod/CompletionInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    goto :goto_7d

    .line 1601
    :cond_b5
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lcom/nuance/swype/input/EditState;->selectWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1604
    if-eqz v2, :cond_cf

    .line 1605
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1606
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1607
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1610
    :cond_cf
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mSuggestedWordIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1612
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getSpeechAlternateCandidates()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f2

    .line 1614
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->speechChooseCandidate(I)V

    .line 1697
    :cond_e1
    :goto_e1
    iput v9, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 1699
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->ShowNextWordPrediction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1700
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    goto :goto_7d

    .line 1617
    :cond_f2
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v4

    if-eqz v4, :cond_14d

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_14d

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 1618
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->isHiraIndex(C)I

    move-result v4

    if-nez v4, :cond_14d

    .line 1620
    const/16 p1, 0xff

    .line 1622
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordListBak:Ljava/util/List;

    if-eqz v4, :cond_134

    .line 1624
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_115
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordListBak:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_134

    .line 1626
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordListBak:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1628
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14a

    .line 1630
    move p1, v1

    .line 1636
    .end local v1    # "i":I
    :cond_134
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isUDBSubstitutionField()Z

    move-result v4

    if-nez v4, :cond_e1

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v4

    if-nez v4, :cond_e1

    .line 1638
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v4, p1, v6}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->wordSelected(IZ)V

    goto :goto_e1

    .line 1624
    .restart local v1    # "i":I
    :cond_14a
    add-int/lit8 v1, v1, 0x1

    goto :goto_115

    .line 1641
    .end local v1    # "i":I
    :cond_14d
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v4

    if-nez v4, :cond_18e

    if-ltz p1, :cond_18e

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 1642
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_18e

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-static {v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isLetterAndDigit(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18e

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 1643
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18e

    .line 1645
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isUDBSubstitutionField()Z

    move-result v4

    if-nez v4, :cond_e1

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v4

    if-nez v4, :cond_e1

    .line 1647
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v4, p1, v6}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->wordSelected(IZ)V

    goto/16 :goto_e1

    .line 1649
    :cond_18e
    if-ltz p1, :cond_1c2

    .line 1651
    const/16 p1, 0xff

    .line 1653
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordListBak:Ljava/util/List;

    if-eqz v4, :cond_1b6

    .line 1655
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_197
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordListBak:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1b6

    .line 1657
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordListBak:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1659
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1bf

    .line 1661
    move p1, v1

    .line 1667
    .end local v1    # "i":I
    :cond_1b6
    if-eq p1, v10, :cond_e1

    .line 1669
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v4, p1, v6}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->wordSelected(IZ)V

    goto/16 :goto_e1

    .line 1655
    .restart local v1    # "i":I
    :cond_1bf
    add-int/lit8 v1, v1, 0x1

    goto :goto_197

    .line 1673
    .end local v1    # "i":I
    :cond_1c2
    const/16 p1, 0xff

    .line 1675
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1c5
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1e4

    .line 1677
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1679
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1fd

    .line 1681
    move p1, v1

    .line 1686
    :cond_1e4
    if-eq p1, v10, :cond_e1

    .line 1688
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isUDBSubstitutionField()Z

    move-result v4

    if-nez v4, :cond_e1

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 1689
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v4

    if-nez v4, :cond_e1

    .line 1691
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v4, p1, v6}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->wordSelected(IZ)V

    goto/16 :goto_e1

    .line 1675
    :cond_1fd
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c5
.end method

.method protected sendHardKeyChar(C)V
    .registers 6
    .param p1, "character"    # C

    .prologue
    const/4 v3, 0x1

    .line 4390
    packed-switch p1, :pswitch_data_2c

    .line 4397
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4398
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_11

    .line 4399
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4404
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_11
    :goto_11
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I

    .line 4405
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateShiftKeyState()V

    .line 4406
    return-void

    .line 4392
    :pswitch_17
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/IME;->sendDefaultEditorAction(Z)Z

    move-result v1

    if-nez v1, :cond_11

    .line 4393
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IME;->sendDownUpKeyEvents(I)V

    goto :goto_11

    .line 4390
    nop

    :pswitch_data_2c
    .packed-switch 0xa
        :pswitch_17
    .end packed-switch
.end method

.method public setContainerView(Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;)V
    .registers 2
    .param p1, "container"    # Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJpWordPageContainer:Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;

    .line 393
    return-void
.end method

.method public setGridCandidates(Ljava/util/List;I)V
    .registers 22
    .param p2, "keyboardWidth"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

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
    .line 2785
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

    .line 2787
    .local v16, "textSize":I
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 2788
    .local v12, "paint":Landroid/graphics/Paint;
    sget-object v17, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2789
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2790
    sget-object v17, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2791
    div-int/lit8 v17, v16, 0x3

    add-int/lit8 v11, v17, 0x1

    .line 2793
    .local v11, "paddingWidth":I
    const/4 v6, 0x0

    .line 2794
    .local v6, "curRowWidth":I
    const/4 v5, 0x0

    .line 2795
    .local v5, "curRowNumber":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2796
    .local v14, "rowKeyWidth":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRows:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 2797
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_46
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_147

    .line 2800
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v5, :cond_64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRows:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-gt v0, v5, :cond_d5

    .line 2801
    :cond_64
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2802
    .local v4, "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRows:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2803
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2804
    .local v3, "curRowKeyWidth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2811
    :goto_7c
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2812
    .local v15, "str":Ljava/lang/String;
    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x2

    mul-int/lit8 v18, v11, 0x2

    add-int v9, v17, v18

    .line 2813
    .local v9, "keyWidth":I
    mul-int/lit8 v17, v11, 0x2

    add-int v17, v17, v16

    move/from16 v0, v17

    if-ge v9, v0, :cond_a3

    .line 2814
    mul-int/lit8 v17, v11, 0x2

    add-int v9, v16, v17

    .line 2818
    :cond_a3
    add-int v17, v6, v9

    move/from16 v0, v17

    move/from16 v1, p2

    if-le v0, v1, :cond_130

    .line 2820
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_b7

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_ea

    .line 2821
    :cond_b7
    new-instance v17, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2822
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2840
    :goto_ce
    const/4 v6, 0x0

    .line 2841
    add-int/lit8 v5, v5, 0x1

    .line 2797
    :goto_d1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_46

    .line 2806
    .end local v3    # "curRowKeyWidth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    .end local v9    # "keyWidth":I
    .end local v15    # "str":Ljava/lang/String;
    :cond_d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRows:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2807
    .restart local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .restart local v3    # "curRowKeyWidth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_7c

    .line 2824
    .restart local v9    # "keyWidth":I
    .restart local v15    # "str":Ljava/lang/String;
    :cond_ea
    sub-int v17, p2, v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    div-int v2, v17, v18

    .line 2825
    .local v2, "addingWidth":I
    const/4 v13, 0x0

    .line 2826
    .local v13, "refreshedRowWidth":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_f4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_12d

    .line 2827
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int v10, v17, v2

    .line 2828
    .local v10, "newKeyWidth":I
    add-int/2addr v13, v10

    .line 2830
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v0, v8, :cond_117

    .line 2831
    sub-int v17, p2, v13

    add-int v10, v10, v17

    .line 2833
    :cond_117
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v8, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2834
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move-object/from16 v0, v17

    iput v10, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 2826
    add-int/lit8 v8, v8, 0x1

    goto :goto_f4

    .line 2837
    .end local v10    # "newKeyWidth":I
    :cond_12d
    add-int/lit8 v7, v7, -0x1

    goto :goto_ce

    .line 2843
    .end local v2    # "addingWidth":I
    .end local v8    # "j":I
    .end local v13    # "refreshedRowWidth":I
    :cond_130
    add-int/2addr v6, v9

    .line 2844
    new-instance v17, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move-object/from16 v0, v17

    invoke-direct {v0, v9, v15}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2845
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d1

    .line 2849
    .end local v3    # "curRowKeyWidth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    .end local v9    # "keyWidth":I
    .end local v15    # "str":Ljava/lang/String;
    :cond_147
    return-void
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .registers 7
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1227
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1229
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1230
    iput-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTraceEnabledOnKeyboard:Z

    .line 1249
    :goto_d
    return-void

    .line 1234
    :cond_e
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setKeyboarLayoutDatabase()V

    .line 1235
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setMultitapOrAmbigMode()V

    .line 1237
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardLayoutId:I

    const/16 v3, 0x600

    if-ne v0, v3, :cond_6b

    .line 1238
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setPressDownPreviewEnabled(Z)V

    .line 1243
    :goto_1d
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isValidBuild()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mNavOn:Z

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadFlickrInputSupported:Z

    if-nez v0, :cond_3b

    :cond_31
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeyboardInput()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTraceInputSuggestionOn:Z

    if-eqz v0, :cond_6f

    :cond_3b
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1244
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1245
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v0, v3, :cond_6f

    move v0, v1

    :goto_50
    iput-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTraceEnabledOnKeyboard:Z

    .line 1247
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    iget-boolean v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTraceEnabledOnKeyboard:Z

    invoke-virtual {v0, v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->enableTrace(Z)V

    .line 1248
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    const/16 v3, 0x63

    iget-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->autoCorrectionEnabled:Z

    if-eqz v4, :cond_71

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeyboardInput()Z

    move-result v4

    if-eqz v4, :cond_71

    :goto_67
    invoke-virtual {v0, v3, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setAttribute(IZ)V

    goto :goto_d

    .line 1240
    :cond_6b
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setPressDownPreviewEnabled(Z)V

    goto :goto_1d

    :cond_6f
    move v0, v2

    .line 1245
    goto :goto_50

    :cond_71
    move v1, v2

    .line 1248
    goto :goto_67
.end method

.method public setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .registers 5
    .param p1, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 1733
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    if-ne v0, p1, :cond_7

    .line 1749
    :goto_6
    return-void

    .line 1738
    :cond_7
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 1739
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->startSession()V

    .line 1740
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissPopupKeyboard()V

    .line 1742
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 1743
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 1745
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 1747
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_6
.end method

.method protected setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)V
    .registers 4
    .param p1, "coreInput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .prologue
    .line 4462
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4464
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/lit16 v0, v1, 0x500

    .line 4470
    .local v0, "newLanguageId":I
    :goto_12
    invoke-virtual {p1, v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setLanguage(I)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 4471
    return-void

    .line 4467
    .end local v0    # "newLanguageId":I
    :cond_16
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/lit16 v0, v1, 0x100

    .restart local v0    # "newLanguageId":I
    goto :goto_12
.end method

.method public setNotMatchToolTipSuggestion()V
    .registers 2

    .prologue
    .line 4010
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->syncCandidateDisplayStyleToMode()V

    .line 4011
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showNotMatchTootip()V

    .line 4012
    return-void
.end method

.method public setScrollable(Z)V
    .registers 2
    .param p1, "val"    # Z

    .prologue
    .line 2597
    iput-boolean p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mScrollable:Z

    .line 2598
    return-void
.end method

.method protected setSwypeKeytoolTipSuggestion()V
    .registers 2

    .prologue
    .line 4000
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->timeoutWhenMultitappingCommaOrPeriod()Z

    .line 4002
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_f

    .line 4003
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showSwypeTooltip()V

    .line 4004
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->syncCandidateDisplayStyleToMode()V

    .line 4006
    :cond_f
    return-void
.end method

.method protected shouldShowTips()Z
    .registers 2

    .prologue
    .line 3348
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTraceInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public showNav(I)V
    .registers 18
    .param p1, "keyindex"    # I

    .prologue
    .line 3398
    sget-object v11, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "showNav()...keyindex: "

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-interface {v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3399
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v11

    if-nez v11, :cond_1c

    .line 3504
    :cond_1b
    :goto_1b
    return-void

    .line 3402
    :cond_1c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;

    .line 3403
    .local v10, "previewPopup":Landroid/widget/PopupWindow;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 3406
    .local v8, "keys":[Lcom/nuance/swype/input/KeyboardEx$Key;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    if-ltz v11, :cond_3d

    move-object/from16 v0, p0

    iget v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v12, v12

    if-ge v11, v12, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_43

    .line 3407
    :cond_3d
    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 3413
    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v11

    if-eqz v11, :cond_1b

    .line 3417
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    if-ltz v11, :cond_57

    .line 3418
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKeyNav:I

    .line 3420
    :cond_57
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKeyNav:I

    aget-object v7, v8, v11

    .line 3422
    .local v7, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    if-nez v11, :cond_c9

    .line 3423
    const/4 v11, 0x5

    new-array v11, v11, [Lcom/nuance/swype/widget/PreviewView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    .line 3424
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

    .line 3425
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

    .line 3426
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

    .line 3427
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

    .line 3428
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

    .line 3431
    :cond_c9
    move/from16 v4, p1

    .line 3432
    .local v4, "index":I
    if-ltz p1, :cond_d6

    iget-object v11, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    const/16 v12, 0x3040

    if-le v11, v12, :cond_e0

    :cond_d6
    iget-object v11, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    const v12, 0xaa37

    if-ne v11, v12, :cond_e1

    .line 3433
    :cond_e0
    const/4 v4, -0x1

    .line 3436
    :cond_e1
    const/4 v11, -0x1

    if-ne v4, v11, :cond_e9

    .line 3437
    invoke-virtual {v10}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_1b

    .line 3440
    :cond_e9
    if-ltz p1, :cond_165

    const/4 v11, 0x5

    move/from16 v0, p1

    if-ge v0, v11, :cond_165

    .line 3441
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f1
    const/4 v11, 0x5

    if-ge v2, v11, :cond_11d

    .line 3442
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    aget-object v11, v11, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mPopupTextColor:I

    invoke-virtual {v11, v12}, Lcom/nuance/swype/widget/PreviewView;->setTextColor(I)V

    .line 3443
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    aget-object v11, v11, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerKeyPopupBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v12}, Lcom/nuance/swype/widget/PreviewView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3444
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    aget-object v11, v11, v2

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Lcom/nuance/swype/widget/PreviewView;->setText(Ljava/lang/CharSequence;)V

    .line 3441
    add-int/lit8 v2, v2, 0x1

    goto :goto_f1

    .line 3447
    :cond_11d
    const/4 v2, 0x0

    :goto_11e
    const/4 v11, 0x5

    if-ge v2, v11, :cond_165

    .line 3448
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    aget-object v11, v11, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerKeyTextSize:I

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Lcom/nuance/swype/widget/PreviewView;->setTextSizePixels(F)V

    .line 3449
    move/from16 v0, p1

    if-ne v2, v0, :cond_162

    .line 3451
    sget-object v11, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "showNav()...show default keyindex: "

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-interface {v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3453
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    aget-object v11, v11, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->miTraceColor:I

    invoke-virtual {v11, v12}, Lcom/nuance/swype/widget/PreviewView;->setTextColor(I)V

    .line 3454
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    aget-object v11, v11, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerKeyPopupSelectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v12}, Lcom/nuance/swype/widget/PreviewView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3447
    :cond_162
    add-int/lit8 v2, v2, 0x1

    goto :goto_11e

    .line 3461
    .end local v2    # "i":I
    :cond_165
    const/4 v11, 0x2

    new-array v1, v11, [C

    .line 3462
    .local v1, "c":[C
    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-char v12, v1, v11

    .line 3463
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerKeyHeight:I

    mul-int/lit8 v11, v11, 0x3

    add-int/lit8 v9, v11, 0x4

    .line 3465
    .local v9, "popupWidth":I
    const/4 v3, 0x0

    .local v3, "icodes":I
    :goto_175
    iget-object v11, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v11, v11

    if-ge v3, v11, :cond_1cc

    .line 3467
    const/4 v11, 0x0

    iget-object v12, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v12, v12, v3

    int-to-char v12, v12

    aput-char v12, v1, v11

    .line 3469
    const/4 v11, 0x0

    aget-char v11, v1, v11

    invoke-static {v11}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->isBigHiragana(C)Z

    move-result v6

    .line 3471
    .local v6, "isHiraBig":Z
    if-ltz v3, :cond_190

    const/4 v11, 0x5

    if-ge v3, v11, :cond_190

    if-nez v6, :cond_197

    :cond_190
    const/4 v11, 0x0

    aget-char v11, v1, v11

    const/16 v12, 0x30fc

    if-ne v11, v12, :cond_1b9

    .line 3473
    :cond_197
    iget-object v11, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    const/16 v12, 0x3084

    if-ne v11, v12, :cond_1bc

    .line 3474
    if-eqz v3, :cond_1a8

    const/4 v11, 0x1

    if-eq v3, v11, :cond_1a8

    const/4 v11, 0x2

    if-ne v3, v11, :cond_1b9

    .line 3475
    :cond_1a8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    mul-int/lit8 v12, v3, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v1, v12, v13}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/nuance/swype/widget/PreviewView;->setText(Ljava/lang/CharSequence;)V

    .line 3465
    :cond_1b9
    :goto_1b9
    add-int/lit8 v3, v3, 0x1

    goto :goto_175

    .line 3478
    :cond_1bc
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->arrayFlickerPreview:[Lcom/nuance/swype/widget/PreviewView;

    aget-object v11, v11, v3

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v1, v12, v13}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/nuance/swype/widget/PreviewView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b9

    .line 3484
    .end local v6    # "isHiraBig":Z
    :cond_1cc
    iget v11, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v12, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    div-int/lit8 v12, v9, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mPopupPreviewX:I

    .line 3485
    iget v11, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v12, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    div-int/lit8 v12, v9, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mPopupPreviewY:I

    .line 3487
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOffsetInWindow:[I

    if-nez v11, :cond_1f1

    .line 3488
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->recalculateOffsets()V

    .line 3491
    :cond_1f1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerKeyHeight:I

    mul-int/lit8 v5, v11, 0x2

    .line 3493
    .local v5, "interval":I
    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_21b

    .line 3495
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

    goto/16 :goto_1b

    .line 3497
    :cond_21b
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v11

    if-nez v11, :cond_1b

    .line 3498
    invoke-virtual {v10, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3499
    invoke-virtual {v10, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3501
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mPopupPreviewX:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOffsetInWindow:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mPopupPreviewY:I

    sub-int/2addr v13, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOffsetInWindow:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v11, v12, v13}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1b
.end method

.method public showSegmentationPopup()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3739
    iput-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isSegmentationPopupNeeded:Z

    .line 3740
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_9

    .line 3765
    :cond_8
    :goto_8
    return-void

    .line 3744
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->recalculateOffsets()V

    .line 3746
    const/4 v0, 0x0

    .line 3748
    .local v0, "y":I
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3749
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->getHeight()I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 3753
    :cond_1d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_41

    .line 3754
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->leftArrowButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$drawable;->btn_keyboard_action_key_jp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3755
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->rightArrowButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$drawable;->btn_keyboard_action_key_jp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3758
    :cond_41
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 3759
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOffsetInWindow:[I

    aget v2, v2, v4

    add-int/lit8 v2, v2, 0x0

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOffsetInWindow:[I

    aget v3, v3, v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getWidth()I

    move-result v4

    .line 3760
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getHeight()I

    move-result v5

    .line 3759
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_8

    .line 3761
    :cond_61
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_8

    .line 3762
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 3763
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOffsetInWindow:[I

    aget v2, v2, v4

    add-int/lit8 v2, v2, 0x0

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mOffsetInWindow:[I

    aget v3, v3, v5

    invoke-virtual {v1, p0, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_8
.end method

.method public startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V
    .registers 12
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/16 v8, 0xf

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 482
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 484
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v5, :cond_e

    if-nez v1, :cond_f

    .line 560
    :cond_e
    :goto_e
    return-void

    .line 488
    :cond_f
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v5, :cond_18

    .line 489
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateCandidatesSize()V

    .line 492
    :cond_18
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->resisterTouchKeyHandler(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;)V

    .line 493
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flingGestureListener:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->registerFlingGestureHandler(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;)V

    .line 494
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v5, p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->wrapTouchEvent(Landroid/view/View;)V

    .line 495
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-static {}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->getDispatcherInstance()Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->setHandler(Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;)Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V

    .line 499
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->getEditState()Lcom/nuance/swype/input/EditState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/EditState;->startSession()V

    .line 503
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->dismissPopupKeyboard()V

    .line 505
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    .line 508
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 510
    iput-boolean v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletionOn:Z

    .line 513
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->loadSettings()V

    .line 515
    iput-boolean v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRecaptureOn:Z

    .line 517
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    .line 519
    .local v2, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x5

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 522
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    .line 523
    .local v0, "currentLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    if-eqz p2, :cond_72

    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v5, :cond_72

    move v3, v4

    :cond_72
    iput-boolean v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeepingKeyboard:Z

    .line 524
    iget-boolean v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeepingKeyboard:Z

    if-eqz v3, :cond_c5

    .line 527
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3, v0, p1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 532
    :goto_7d
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v3}, Lcom/nuance/swype/input/Completions;->clear()V

    .line 534
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 536
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isValidBuild()Z

    move-result v3

    if-eqz v3, :cond_af

    .line 537
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v3

    if-eqz v3, :cond_95

    .line 542
    iput-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    .line 545
    :cond_95
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_af

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputFieldInfo;->isCompletionField()Z

    move-result v3

    if-nez v3, :cond_ad

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 546
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v3

    if-eqz v3, :cond_af

    .line 551
    :cond_ad
    iput-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mTextInputPredictionOn:Z

    .line 555
    :cond_af
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearKeyOffsets()V

    .line 556
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->initSegmentationPopup()V

    .line 557
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->postDelayResumeSpeech()V

    .line 558
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showUserThemeWclMessage(Landroid/os/Handler;)V

    .line 559
    const-string/jumbo v3, "CJK"

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showTrialExpireWclMessage(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 529
    :cond_c5
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3, p1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    goto :goto_7d
.end method

.method public toggleAmbigMode()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1904
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1906
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 1907
    .local v0, "currentInputMode":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v4

    if-nez v4, :cond_3d

    move v1, v2

    .line 1909
    .local v1, "notHandwriting":Z
    :goto_1d
    const-string/jumbo v4, "multitap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1911
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v6, v6, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    .line 1912
    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    .line 1911
    invoke-virtual {v2, v4, v5, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;Z)Lcom/nuance/swype/input/XT9Keyboard;

    .line 1913
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setMultiTapInputMode(Z)V

    .line 1922
    .end local v0    # "currentInputMode":Ljava/lang/String;
    .end local v1    # "notHandwriting":Z
    :cond_3c
    :goto_3c
    return-void

    .restart local v0    # "currentInputMode":Ljava/lang/String;
    :cond_3d
    move v1, v3

    .line 1907
    goto :goto_1d

    .line 1917
    .restart local v1    # "notHandwriting":Z
    :cond_3f
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    const-string/jumbo v6, "multitap"

    .line 1918
    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    .line 1917
    invoke-virtual {v3, v4, v5, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;Z)Lcom/nuance/swype/input/XT9Keyboard;

    .line 1919
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v3, v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->setMultiTapInputMode(Z)V

    goto :goto_3c
.end method

.method public updateSegemetationPopup(II)V
    .registers 8
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 3767
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_5

    .line 3777
    :cond_4
    :goto_4
    return-void

    .line 3770
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->recalculateOffsets()V

    .line 3773
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->segmentationPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3774
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

    .line 3775
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getHeight()I

    move-result v4

    .line 3774
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_4
.end method

.method public updateSelection(IIII[I)V
    .registers 14
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesIndices"    # [I

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 653
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/input/InputView;->updateSelection(IIII[I)V

    .line 655
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 657
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_d

    .line 773
    :cond_c
    :goto_c
    return-void

    .line 662
    :cond_d
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v5

    if-eqz v5, :cond_89

    .line 663
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v5, :cond_c

    .line 666
    if-ne p3, p1, :cond_1b

    if-eq p4, p2, :cond_2a

    :cond_1b
    if-eq p1, p2, :cond_2a

    .line 671
    aget v5, p5, v4

    aget v6, p5, v1

    if-ne v5, v6, :cond_42

    aget v5, p5, v4

    if-ne v5, v7, :cond_42

    .line 673
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrWordAndClearWCL()V

    .line 700
    :cond_2a
    :goto_2a
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v2, v5, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeEditorText:Landroid/view/inputmethod/ExtractedText;

    .line 701
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v4, :cond_83

    .line 702
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeInlineText:Ljava/lang/CharSequence;

    goto :goto_c

    .line 675
    :cond_42
    if-ne p3, p4, :cond_2a

    .line 676
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v2, v5, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v3

    .line 685
    .local v3, "text":Landroid/view/inputmethod/ExtractedText;
    if-eqz v3, :cond_2a

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeEditorText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v5, :cond_2a

    iget-object v5, v3, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_2a

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeEditorText:Landroid/view/inputmethod/ExtractedText;

    iget-object v5, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_2a

    iget-object v5, v3, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeEditorText:Landroid/view/inputmethod/ExtractedText;

    iget-object v6, v6, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 687
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeInlineText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_2a

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_2a

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeInlineText:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 689
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 691
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrWordAndClearWCL()V

    goto :goto_2a

    .line 704
    .end local v3    # "text":Landroid/view/inputmethod/ExtractedText;
    :cond_83
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeInlineText:Ljava/lang/CharSequence;

    goto :goto_c

    .line 709
    :cond_89
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v2, v5, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeEditorText:Landroid/view/inputmethod/ExtractedText;

    .line 710
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_106

    .line 711
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeInlineText:Ljava/lang/CharSequence;

    .line 715
    :goto_a0
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v5, :cond_f7

    .line 717
    invoke-interface {v2, v1, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 719
    .local v0, "charBeforeCusor":Ljava/lang/CharSequence;
    if-eqz v0, :cond_b0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_10c

    .line 720
    :cond_b0
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->breakContext()V

    .line 725
    :cond_b5
    :goto_b5
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v5, v0}, Lcom/nuance/swype/input/EditState;->cursorChanged(Ljava/lang/CharSequence;)V

    .line 728
    aget v5, p5, v1

    if-ne p3, v5, :cond_c6

    aget v5, p5, v1

    if-ne p4, v5, :cond_c6

    aget v5, p5, v1

    if-ne v5, v7, :cond_11a

    .line 733
    .local v1, "cursorChanged":Z
    :cond_c6
    :goto_c6
    iget-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mUpdatingInline:Z

    if-nez v5, :cond_11c

    if-eqz v1, :cond_11c

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v5

    if-lez v5, :cond_11c

    .line 735
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v5

    if-nez v5, :cond_e3

    .line 736
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 738
    :cond_e3
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_f2

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_f2

    .line 739
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrWordAndClearWCL()V

    .line 741
    :cond_f2
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v5}, Lcom/nuance/swype/input/EditState;->start()V

    .line 764
    .end local v0    # "charBeforeCusor":Ljava/lang/CharSequence;
    .end local v1    # "cursorChanged":Z
    :cond_f7
    :goto_f7
    iput p3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastSelStart:I

    .line 765
    iput p4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastSelEnd:I

    .line 770
    iput-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mUpdatingInline:Z

    .line 772
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->JpInputViewHandler:Landroid/os/Handler;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_c

    .line 713
    :cond_106
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->lastTimeInlineText:Ljava/lang/CharSequence;

    goto :goto_a0

    .line 721
    .restart local v0    # "charBeforeCusor":Ljava/lang/CharSequence;
    :cond_10c
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v5

    if-nez v5, :cond_b5

    .line 722
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->breakContext()V

    goto :goto_b5

    :cond_11a
    move v1, v4

    .line 728
    goto :goto_c6

    .line 742
    .restart local v1    # "cursorChanged":Z
    :cond_11c
    iget-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mRecaptureOn:Z

    if-eqz v5, :cond_f7

    if-le p4, p3, :cond_f7

    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastSelStart:I

    if-eq v5, p3, :cond_f7

    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastSelEnd:I

    if-eq v5, p4, :cond_f7

    .line 745
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 747
    invoke-interface {v2, p4, p4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 749
    invoke-interface {v2, p3, p4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 751
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 757
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v5

    if-lez v5, :cond_f7

    .line 759
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrentActiveWord()V

    goto :goto_f7
.end method
