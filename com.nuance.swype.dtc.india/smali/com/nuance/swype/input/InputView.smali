.class public abstract Lcom/nuance/swype/input/InputView;
.super Lcom/nuance/swype/input/KeyboardViewEx;
.source "InputView.java"

# interfaces
.implements Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;
.implements Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
.implements Lcom/nuance/swype/input/RemoveUdbWordDialog$RemoveUdbWordListener;
.implements Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/InputView$WclPrompt;
    }
.end annotation


# static fields
.field protected static final CYCLINGKEYBOARD:Ljava/lang/String; = "cyclingkeyboard"

.field protected static final EDITKEYBOARD:Ljava/lang/String; = "editkeyboard"

.field protected static final HANDWRITINGMODE:Ljava/lang/String; = "handwritingmode"

.field protected static final INPUTMODE:Ljava/lang/String; = "inputmode"

.field protected static final LANGUAGE_OPTION:Ljava/lang/String; = "language_option"

.field public static final LAST_INPUT_CANDIDATE_SELECTION:I = 0x4

.field public static final LAST_INPUT_NWP_CANDIDATE_SELECTION:I = 0x6

.field public static final LAST_INPUT_TAP:I = 0x1

.field public static final LAST_INPUT_TOUCH:I = 0x3

.field public static final LAST_INPUT_TRACE:I = 0x2

.field public static final LAST_INPUT_UNDEFINED:I = 0x0

.field public static final LAST_INPUT_WORD:I = 0x5

.field protected static final MAX_FUNCTION_ITEM:I = 0x4

.field protected static final MAX_SIZE_SELECTION_LIST:I = 0x3e8

.field protected static final MSG_DELAY_POPULATING_WCL_FOR_TRACE:I = 0xc

.field protected static final MSG_DELAY_RECAPTURE:I = 0x10

.field protected static final MSG_DELAY_RESUME_SPEECH:I = 0xb

.field protected static final MSG_DELAY_SHOW_ABC_XT9_KEY_TOAST:I = 0x5

.field protected static final MSG_DELAY_SHOW_AUTO_SPACE_TIP:I = 0xa

.field protected static final MSG_DELAY_SHOW_TRACE_AUTO_ACCEPT_TIP:I = 0x6

.field protected static final MSG_DELAY_SHOW_TRACE_INPUT_TIP:I = 0x7

.field protected static final MSG_DELAY_START_INPUT_SESSION:I = 0xf

.field protected static final MSG_DELAY_UPDATE_CAPS_EDIT:I = 0xd

.field protected static final MSG_DELAY_UPDATE_DISPLAY:I = 0x4

.field protected static final MSG_DELAY_UPDATE_INLINE_STRING:I = 0x11

.field protected static final MSG_FIRST:I = 0x1

.field protected static final MSG_GET_MORE_SUGGESTIONS:I = 0x1

.field protected static final MSG_LAST:I = 0x13

.field public static final MSG_PROMPT_THEME_STORE:I = 0x7d

.field public static final MSG_PROMPT_TRIAL_EXPIRE:I = 0x7f

.field protected static final MSG_REQUEST_CHINESE_PREDICTION:I = 0x12

.field protected static final MSG_SHOW_START_OF_WORD_CANDIDATE:I = 0x8

.field protected static final MSG_UPDATE_SUGGESTIONS:I = 0x9

.field private static final NOT_A_CURSOR_POSITION:I = -0x1

.field protected static final NUMBERKEYBOARD:Ljava/lang/String; = "numberkeyboard"

.field protected static final ONKEYBOARD:Ljava/lang/String; = "onkeyboard"

.field protected static final SETTINGS:Ljava/lang/String; = "settings"

.field protected static final STROKE_RECOGNITION_TIME_OUT:I = 0x64

.field protected static final WORD_DELETE:I = 0x0

.field public static final selectKeyLevel:I = 0x0

.field public static final selectKeyMiniLevel:I = 0x2

.field protected static final wclAlphaReqMessage:Ljava/lang/String; = "alphaInput"

.field protected static final wclReqMessage:Ljava/lang/String; = "CJK"


# instance fields
.field protected final MSG_UPDATE_CHINESE_PREDICTION_RESULT:I

.field public autoCorrectionEnabled:Z

.field private billboardHolder:Landroid/view/View;

.field protected candidatesEndCache:I

.field public candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

.field public candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

.field protected candidatesStartCache:I

.field private cnNwDlgListener:Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;

.field private composingSpeechText:Landroid/text/SpannableStringBuilder;

.field private emojiCacheManager:Lcom/nuance/swype/input/emoji/EmojiCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/swype/input/emoji/EmojiCacheManager",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public emojiCandidatesHolder:Landroid/view/View;

.field public emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

.field private enableSymbolSelectPopupAllLayers:Z

.field private endSelection:I

.field public final flingGestureListener:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;

.field protected gestureHandler:Lcom/nuance/swype/input/keyboard/GestureHandler;

.field public gridCandidateTableVisible:Z

.field private imeApp:Lcom/nuance/swype/input/IMEApplication;

.field private isAutoReturnToEditorDefaultLayerEnabled:Z

.field private isExploredByTouch:Z

.field public isKeepingKeyboard:Z

.field public isLDBCompatible:Z

.field public isOnceAction:Z

.field public isTraceEnabledOnKeyboard:Z

.field private italicSpan:Landroid/text/style/StyleSpan;

.field public keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

.field public mAddOnDictionariesOn:Z

.field public mAutoCap:Z

.field public mAutoPunctuationOn:Z

.field public mAutoSpace:Z

.field public mBuildInfo:Lcom/nuance/swype/input/BuildInfo;

.field protected mCapsLock:Z

.field public mChineseSettingsOn:Z

.field protected mCommittedLength:I

.field public mCompletionOn:Z

.field public mCompletions:Lcom/nuance/swype/input/Completions;

.field public mContextWindowShowing:Z

.field public mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

.field protected mDismissKeyboardOn:Z

.field public mEditKeyboardOn:Z

.field public mEditState:Lcom/nuance/swype/input/EditState;

.field public mEmojiFunctionBarOn:Z

.field protected mEnableEmojiChoiceList:Z

.field protected mEnableHandwriting:Z

.field public mFuzzyPinyin:I

.field protected mHardkeyKeyboardLayoutId:I

.field public mInURLEmail:Z

.field public mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

.field public mInputModeOn:Z

.field public mIsUseHardkey:Z

.field public mKeyboardInputSuggestionOn:Z

.field public mKeyboardLayoutId:I

.field public mLanguageOptionOn:Z

.field public mLastInput:I

.field private mNetworkPromptMessage:Landroid/app/AlertDialog;

.field public mNextWordPredictionOn:Z

.field public mNumberKeyboardOn:Z

.field public mPreferExplicit:Z

.field public mQuickToggleOn:Z

.field public mRecaptureOn:Z

.field protected mReconstructWord:Ljava/lang/String;

.field public mSettingsOn:Z

.field public mShowFunctionBar:Z

.field protected mShowInternalCandidates:Z

.field public mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

.field public mStarted:Z

.field protected mSwitchIMEOn:Z

.field public mTextInputPredictionOn:Z

.field public mThemesOn:Z

.field public mTraceInputSuggestionOn:Z

.field public mWordCompletionPoint:I

.field public mWordSource:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mWordSourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field protected newSelEndCache:I

.field protected newSelStartCache:I

.field protected oldSelEndCache:I

.field protected oldSelStartCache:I

.field public pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

.field private popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

.field private preProcessOnSpeechDictation:Z

.field protected promptToAddWords:Z

.field protected removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

.field private selectKey:Lcom/nuance/swype/input/KeyboardEx$Key;

.field private skinToneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;"
        }
    .end annotation
.end field

.field private startSelection:I

.field private startTimeDisplaySelectionList:J

.field public suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

.field public themeStoreWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;

.field protected traceAutoAcceptOn:Z

.field protected trialWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;

.field protected undoAcceptHandler:Lcom/nuance/swype/input/UndoAcceptHandler;

.field protected usedTimeListReselectDisplaySelection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected usedTimeListTapDisplaySelection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private wordDecorator:Lcom/nuance/swype/util/WordDecorator;

.field private wordDeletedString:Ljava/lang/String;

.field private wordListHolder:Landroid/view/View;

.field public wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

.field public wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

.field public xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 288
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 291
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    const/16 v1, 0x13

    iput v1, p0, Lcom/nuance/swype/input/InputView;->MSG_UPDATE_CHINESE_PREDICTION_RESULT:I

    .line 141
    iput v3, p0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    .line 143
    iput v3, p0, Lcom/nuance/swype/input/InputView;->mKeyboardLayoutId:I

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->usedTimeListReselectDisplaySelection:Ljava/util/List;

    .line 163
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputView;->isTraceEnabledOnKeyboard:Z

    .line 174
    iput-boolean v2, p0, Lcom/nuance/swype/input/InputView;->enableSymbolSelectPopupAllLayers:Z

    .line 185
    new-instance v1, Lcom/nuance/swype/input/Completions;

    invoke-direct {v1}, Lcom/nuance/swype/input/Completions;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    .line 201
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->mWordSource:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->mWordSourceList:Ljava/util/List;

    .line 212
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 216
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    .line 233
    iput-boolean v2, p0, Lcom/nuance/swype/input/InputView;->isLDBCompatible:Z

    .line 258
    iput v4, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    .line 259
    iput v4, p0, Lcom/nuance/swype/input/InputView;->endSelection:I

    .line 260
    iput-boolean v2, p0, Lcom/nuance/swype/input/InputView;->preProcessOnSpeechDictation:Z

    .line 263
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputView;->mContextWindowShowing:Z

    .line 1824
    new-instance v1, Lcom/nuance/swype/input/InputView$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/InputView$1;-><init>(Lcom/nuance/swype/input/InputView;)V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->cnNwDlgListener:Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;

    .line 2653
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->italicSpan:Landroid/text/style/StyleSpan;

    .line 2654
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    .line 2915
    iput v3, p0, Lcom/nuance/swype/input/InputView;->mHardkeyKeyboardLayoutId:I

    .line 3323
    new-instance v1, Lcom/nuance/swype/input/InputView$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/InputView$2;-><init>(Lcom/nuance/swype/input/InputView;)V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->flingGestureListener:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;

    .line 292
    invoke-static {p1}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->mBuildInfo:Lcom/nuance/swype/input/BuildInfo;

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 294
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/nuance/swype/input/R$bool;->enable_symbol_select_popup_all_layers:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputView;->enableSymbolSelectPopupAllLayers:Z

    .line 295
    sget v1, Lcom/nuance/swype/input/R$string;->accessibility_note_WordDelete:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->wordDeletedString:Ljava/lang/String;

    .line 296
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 297
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/InputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/nuance/swype/input/InputView;->actualStartSpeech()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/InputView;)Lcom/nuance/swype/input/IMEApplication;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/InputView;Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/InputView;
    .param p1, "x1"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    .param p2, "x2"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p3, "x3"    # Lcom/nuance/swype/input/CandidatesListView$Format;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->setCommonSuggestion(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    return-void
.end method

.method private actualStartSpeech()V
    .locals 2

    .prologue
    .line 1869
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isValidBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1870
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechProvider()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1872
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getIETFLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->startVoiceRecognition(Ljava/lang/String;)V

    .line 1879
    :cond_0
    :goto_0
    return-void

    .line 1874
    :cond_1
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/nuance/swype/input/SpeechWrapper;->startSpeech(Lcom/nuance/swype/input/InputView;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private addSelectedEmoji(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "original"    # Ljava/lang/String;
    .param p2, "selected"    # Ljava/lang/String;

    .prologue
    .line 3437
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 3438
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getEmojiInputViewController()Lcom/nuance/swype/input/emoji/EmojiInputController;

    move-result-object v1

    .line 3439
    .local v1, "ic":Lcom/nuance/swype/input/emoji/EmojiInputController;
    invoke-static {p1}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getEmoji(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v0

    .line 3441
    .local v0, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3443
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinToneList()Ljava/util/List;

    move-result-object v4

    .line 3445
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/emoji/Emoji;

    .line 3447
    .local v3, "skinTone":Lcom/nuance/swype/input/emoji/Emoji;
    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiDisplayCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3448
    move-object v0, v3

    .line 3454
    .end local v3    # "skinTone":Lcom/nuance/swype/input/emoji/Emoji;
    :cond_1
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->addEmojiInRecentCat(Lcom/nuance/swype/input/emoji/Emoji;)Z

    move-result v2

    .line 3455
    .local v2, "isAdded":Z
    sget-object v4, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "addSelectedEmoji()"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, " called ::  emoji added :: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3456
    return v2
.end method

.method private getDefaultSkinTone(Ljava/lang/String;)I
    .locals 4
    .param p1, "selectedEmoji"    # Ljava/lang/String;

    .prologue
    .line 3559
    const/4 v0, -0x1

    .line 3560
    .local v0, "defaultSkinTone":I
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->skinToneList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/emoji/Emoji;

    .line 3561
    .local v1, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiDisplayCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3562
    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinType()Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3563
    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinType()Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->getSkinValue()I

    move-result v0

    .line 3570
    .end local v1    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    :cond_1
    return v0
.end method

.method private getEmoji(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/Emoji;
    .locals 1
    .param p1, "emoji_unicode"    # Ljava/lang/String;

    .prologue
    .line 3573
    invoke-static {p1}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getEmoji(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v0

    return-object v0
.end method

.method private initSkinPopupView(Landroid/view/View;)V
    .locals 7
    .param p1, "mContainerView"    # Landroid/view/View;

    .prologue
    .line 3488
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    .line 3489
    .local v6, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 3490
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 3492
    const/4 v5, 0x0

    .line 3493
    .local v5, "billboardHeight":I
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->billboardHolder:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->billboardHolder:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3494
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->billboardHolder:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 3496
    :cond_0
    new-instance v0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v4, p0, Lcom/nuance/swype/input/InputView;->mEnableEmojiChoiceList:Z

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/View;ZI)V

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    .line 3497
    return-void
.end method

.method private isEditModeSelectKeyOn()Z
    .locals 1

    .prologue
    .line 2259
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->hasEditModeSelectKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->selectKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notATextInputField(Lcom/nuance/swype/input/InputFieldInfo;)Z
    .locals 1
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    .line 1411
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1412
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

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

.method private playEndOfListSound()V
    .locals 2

    .prologue
    .line 3008
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SoundResources;->getInstance()Lcom/nuance/swype/input/accessibility/SoundResources;

    move-result-object v0

    .line 3009
    .local v0, "instance":Lcom/nuance/swype/input/accessibility/SoundResources;
    if-eqz v0, :cond_0

    .line 3010
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/accessibility/SoundResources;->play(I)V

    .line 3012
    :cond_0
    return-void
.end method

.method private readLongPressDuration()V
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getLongPressDelay()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/InputView;->mLongPressTimeout:I

    .line 1527
    iget v0, p0, Lcom/nuance/swype/input/InputView;->mLongPressTimeout:I

    iput v0, p0, Lcom/nuance/swype/input/InputView;->mShortLongPressTimeout:I

    .line 1528
    return-void
.end method

.method private readSettings(Lcom/nuance/swype/input/InputFieldInfo;)V
    .locals 8
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1416
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    .line 1417
    .local v3, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/InputView;->notATextInputField(Lcom/nuance/swype/input/InputFieldInfo;)Z

    move-result v1

    .line 1420
    .local v1, "nonTextInputField":Z
    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isCapitalizationSupported()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getAutoCap()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v1, :cond_5

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/nuance/swype/input/InputView;->mAutoCap:Z

    .line 1423
    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isAutoSpaceSupported()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getAutoSpace()Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v1, :cond_6

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/nuance/swype/input/InputView;->mAutoSpace:Z

    .line 1425
    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v4

    iget v4, v4, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    iput v4, p0, Lcom/nuance/swype/input/InputView;->mKeyboardLayoutId:I

    .line 1426
    invoke-virtual {v3, v6}, Lcom/nuance/swype/input/UserPreferences;->getFuzzyPairs(I)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/InputView;->mFuzzyPinyin:I

    .line 1430
    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1432
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getAskBeforeAdd()Z

    move-result v4

    move-object v2, p0

    .line 1434
    .end local p0    # "this":Lcom/nuance/swype/input/InputView;
    .local v2, "this":Lcom/nuance/swype/input/InputView;
    :goto_2
    iput-boolean v4, v2, Lcom/nuance/swype/input/InputView;->promptToAddWords:Z

    .line 1437
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getAutoCorrection()Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez v1, :cond_a

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/nuance/swype/input/InputView;->autoCorrectionEnabled:Z

    .line 1438
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getWordCompletionPoint()I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/InputView;->mWordCompletionPoint:I

    .line 1441
    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->isUsingSpellCheckerService()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->isUnrecognizedWordDecorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 4085
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->textInputFieldWithSuggestionDisabled()Z

    move-result v7

    if-nez v7, :cond_b

    .line 4086
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isCompletionField()Z

    move-result v7

    if-nez v7, :cond_b

    .line 4087
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isWebSearchField()Z

    move-result v4

    if-nez v4, :cond_b

    move v4, v5

    .line 1441
    :goto_4
    if-eqz v4, :cond_c

    .line 1442
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/nuance/swype/input/IMEApplication;->createUnrecognizedWordDecorator(Lcom/nuance/swype/input/InputView;)Lcom/nuance/swype/util/WordDecorator;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/InputView;->wordDecorator:Lcom/nuance/swype/util/WordDecorator;

    .line 1448
    :goto_5
    iget-boolean v4, p0, Lcom/nuance/swype/input/InputView;->autoCorrectionEnabled:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/nuance/swype/input/InputView;->mWordCompletionPoint:I

    if-eqz v4, :cond_d

    :cond_0
    move v4, v5

    :goto_6
    iput-boolean v4, p0, Lcom/nuance/swype/input/InputView;->mKeyboardInputSuggestionOn:Z

    .line 1451
    iput-boolean v5, p0, Lcom/nuance/swype/input/InputView;->mTraceInputSuggestionOn:Z

    .line 1452
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->isTraceAutoAcceptEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/input/InputView;->traceAutoAcceptOn:Z

    .line 1454
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getAutoPunctuation()Z

    move-result v4

    if-eqz v4, :cond_e

    if-nez v1, :cond_e

    move v4, v5

    :goto_7
    iput-boolean v4, p0, Lcom/nuance/swype/input/InputView;->mAutoPunctuationOn:Z

    .line 1455
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isValidBuild()Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/input/InputView;->mShowInternalCandidates:Z

    .line 1456
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    .line 1457
    .local v0, "appSpecificBehavior":Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;
    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->textInputFieldWithSuggestionDisabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1458
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldDisableCandidatesList()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1460
    :cond_1
    iput-boolean v6, p0, Lcom/nuance/swype/input/InputView;->mShowInternalCandidates:Z

    .line 1468
    :cond_2
    :goto_8
    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1469
    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->textInputFieldWithSuggestionDisabled()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1470
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldDisableCandidatesList()Z

    move-result v4

    if-nez v4, :cond_10

    move v4, v5

    .line 1469
    :goto_9
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/InputView;->setCandidatesViewShown(Z)V

    .line 1472
    :cond_3
    iget-boolean v4, p0, Lcom/nuance/swype/input/InputView;->mTraceInputSuggestionOn:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/nuance/swype/input/InputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v4, :cond_11

    :cond_4
    iget-boolean v4, p0, Lcom/nuance/swype/input/InputView;->mShowInternalCandidates:Z

    if-eqz v4, :cond_11

    .line 1473
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shoudDisablePredictionForEmailAddress()Z

    move-result v4

    if-nez v4, :cond_11

    :goto_a
    iput-boolean v5, p0, Lcom/nuance/swype/input/InputView;->mTextInputPredictionOn:Z

    .line 1475
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/input/InputView;->mEnableHandwriting:Z

    .line 1477
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getShowPressDownPreview()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/InputView;->setPressDownPreviewEnabled(Z)V

    .line 1478
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getShowCompleteTrace()Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/input/InputView;->showCompleteTrace:Z

    .line 1480
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getEnableSimplifiedMode()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/InputView;->enableSimplifiedMode(Z)V

    .line 1481
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->isAutoReturnToEditorDefaultLayerEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/input/InputView;->isAutoReturnToEditorDefaultLayerEnabled:Z

    .line 1483
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getShowCompleteTrace()Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/input/InputView;->showCompleteTrace:Z

    .line 1484
    invoke-direct {p0}, Lcom/nuance/swype/input/InputView;->readLongPressDuration()V

    .line 1486
    invoke-direct {p0}, Lcom/nuance/swype/input/InputView;->refreshEmojiChoiceListEnable()V

    .line 1487
    return-void

    .end local v0    # "appSpecificBehavior":Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;
    .end local v2    # "this":Lcom/nuance/swype/input/InputView;
    .restart local p0    # "this":Lcom/nuance/swype/input/InputView;
    :cond_5
    move v4, v6

    .line 1420
    goto/16 :goto_0

    :cond_6
    move v4, v6

    .line 1423
    goto/16 :goto_1

    .line 1434
    :cond_7
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getAskBeforeAdd()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getAutoCorrection()Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    move v4, v5

    move-object v2, p0

    .end local p0    # "this":Lcom/nuance/swype/input/InputView;
    .restart local v2    # "this":Lcom/nuance/swype/input/InputView;
    goto/16 :goto_2

    .end local v2    # "this":Lcom/nuance/swype/input/InputView;
    .restart local p0    # "this":Lcom/nuance/swype/input/InputView;
    :cond_9
    move v4, v6

    move-object v2, p0

    .end local p0    # "this":Lcom/nuance/swype/input/InputView;
    .restart local v2    # "this":Lcom/nuance/swype/input/InputView;
    goto/16 :goto_2

    :cond_a
    move v4, v6

    .line 1437
    goto/16 :goto_3

    :cond_b
    move v4, v6

    .line 4087
    goto/16 :goto_4

    .line 1444
    :cond_c
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nuance/swype/input/InputView;->wordDecorator:Lcom/nuance/swype/util/WordDecorator;

    goto/16 :goto_5

    :cond_d
    move v4, v6

    .line 1448
    goto/16 :goto_6

    :cond_e
    move v4, v6

    .line 1454
    goto/16 :goto_7

    .line 1461
    .restart local v0    # "appSpecificBehavior":Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;
    :cond_f
    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1463
    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isCompletionField()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1464
    iput-boolean v6, p0, Lcom/nuance/swype/input/InputView;->mShowInternalCandidates:Z

    goto/16 :goto_8

    :cond_10
    move v4, v6

    .line 1470
    goto/16 :goto_9

    :cond_11
    move v5, v6

    .line 1473
    goto :goto_a
.end method

.method private refreshEmojiChoiceListEnable()V
    .locals 3

    .prologue
    .line 1490
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    .line 1491
    .local v0, "appSpecificBehavior":Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 1493
    .local v1, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->isEmojiChoiceListEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 1494
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isBilingualLanguage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1495
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isOrientationLandscape()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1496
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isValidBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1497
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldDisableEmojiCandidatesList()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputFieldInfo;->isNumberField()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 1498
    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 1499
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/nuance/swype/input/InputView;->mEnableEmojiChoiceList:Z

    .line 1500
    return-void

    .line 1499
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private selectingCompostingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "defaultCandidate"    # Ljava/lang/CharSequence;
    .param p3, "composingText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 2463
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2464
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateIndex()I

    move-result v1

    .line 2469
    .local v1, "wordSelected":I
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v2, v1, v5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->wordSelected(IZ)V

    .line 2470
    sget-object v2, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "cursor selectingCompostingText"

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2471
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    move-result v0

    .line 2472
    .local v0, "bRslt":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 2473
    return v0

    .line 2466
    .end local v0    # "bRslt":Z
    .end local v1    # "wordSelected":I
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateIndex()I

    move-result v1

    .restart local v1    # "wordSelected":I
    goto :goto_0
.end method

.method private setCommonSuggestion(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V
    .locals 1
    .param p1, "listener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p3, "format"    # Lcom/nuance/swype/input/CandidatesListView$Format;

    .prologue
    .line 2061
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 2062
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 2063
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v0, :cond_0

    .line 2064
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/CandidatesListView;->setCandidateListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V

    .line 2065
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0, p2, p3}, Lcom/nuance/swype/input/CandidatesListView;->setSuggestions(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 2066
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->setCandidatesViewShown(Z)V

    .line 2067
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->syncCandidateDisplayStyleToMode()V

    .line 2070
    :cond_0
    invoke-virtual {p0, p3}, Lcom/nuance/swype/input/InputView;->updateSuggestionsEmoji(Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 2071
    return-void
.end method

.method private setContextBuffer(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "textBufferBeforeCursor"    # Ljava/lang/CharSequence;

    .prologue
    .line 1801
    if-eqz p1, :cond_0

    .line 1802
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setContext([C)V

    .line 1804
    :cond_0
    return-void
.end method

.method private setNewDockModePref(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V
    .locals 6
    .param p1, "mode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 411
    .line 412
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    .line 413
    .local v1, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 414
    .local v2, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    if-eqz v1, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    .line 416
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    .line 417
    .local v0, "previousMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/UserPreferences;->setKeyboardDockingMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 418
    const-string/jumbo v3, "KeyboardDockMode"

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    .line 419
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    .line 418
    invoke-interface {v1, v3, v4, v5}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 423
    .end local v0    # "previousMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :goto_0
    return-void

    .line 421
    :cond_0
    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/UserPreferences;->setKeyboardDockingMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    goto :goto_0
.end method

.method private setSkinToneAdapter(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;Landroid/view/View;)V
    .locals 8
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 3520
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3556
    :cond_0
    :goto_0
    return-void

    .line 3524
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->getEmojiUnicode()Ljava/lang/String;

    move-result-object v1

    .line 3526
    .local v1, "emojiCode":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3529
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/InputView;->getEmoji(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v0

    .line 3531
    .local v0, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    if-eqz v0, :cond_0

    .line 3535
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinToneList()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/InputView;->skinToneList:Ljava/util/List;

    .line 3537
    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->skinToneList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->skinToneList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 3539
    const/4 v3, 0x0

    .line 3540
    .local v3, "mTargetScroll":I
    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v5, :cond_3

    .line 3541
    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v5, v7}, Lcom/nuance/swype/input/CandidatesListView;->setHorizontalScroll(Z)V

    .line 3542
    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/CandidatesListView;->getTargetScrollX()I

    move-result v3

    .line 3548
    :cond_2
    :goto_1
    new-instance v2, Lcom/nuance/swype/input/emoji/EmojiInfo;

    invoke-direct {v2}, Lcom/nuance/swype/input/emoji/EmojiInfo;-><init>()V

    .line 3549
    .local v2, "emojiInfo":Lcom/nuance/swype/input/emoji/EmojiInfo;
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->getLeft()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v2, Lcom/nuance/swype/input/emoji/EmojiInfo;->xPos:I

    .line 3550
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->getTop()I

    move-result v5

    iput v5, v2, Lcom/nuance/swype/input/emoji/EmojiInfo;->yPos:I

    .line 3551
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->getWidth()I

    move-result v5

    iput v5, v2, Lcom/nuance/swype/input/emoji/EmojiInfo;->width:I

    .line 3552
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->getHeight()I

    move-result v5

    iput v5, v2, Lcom/nuance/swype/input/emoji/EmojiInfo;->height:I

    .line 3553
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/InputView;->getDefaultSkinTone(Ljava/lang/String;)I

    move-result v4

    .line 3554
    .local v4, "selectedSkinTone":I
    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->skinToneList:Ljava/util/List;

    invoke-virtual {v5, v6, p3, v2, v4}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->setSkinToneAdapter(Ljava/util/List;Landroid/view/View;Lcom/nuance/swype/input/emoji/EmojiInfo;I)V

    goto :goto_0

    .line 3543
    .end local v2    # "emojiInfo":Lcom/nuance/swype/input/emoji/EmojiInfo;
    .end local v4    # "selectedSkinTone":I
    :cond_3
    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v5, :cond_2

    .line 3544
    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v5, v7}, Lcom/nuance/swype/input/CandidatesListView;->setHorizontalScroll(Z)V

    .line 3545
    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/CandidatesListView;->getTargetScrollX()I

    move-result v3

    goto :goto_1
.end method

.method private setSkinToneAdapter(Lcom/nuance/swype/input/emoji/EmojiInfo;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 5
    .param p1, "emojiInfo"    # Lcom/nuance/swype/input/emoji/EmojiInfo;
    .param p2, "selectedEmoji"    # Ljava/lang/String;
    .param p3, "original_emoji"    # Ljava/lang/String;
    .param p4, "parent"    # Landroid/view/View;

    .prologue
    .line 3501
    invoke-direct {p0, p3}, Lcom/nuance/swype/input/InputView;->getEmoji(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v0

    .line 3502
    .local v0, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    if-eqz v0, :cond_0

    .line 3503
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinToneList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/InputView;->skinToneList:Ljava/util/List;

    .line 3506
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->skinToneList:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->skinToneList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 3507
    const/4 v1, 0x0

    .line 3508
    .local v1, "mTargetScroll":I
    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v3, :cond_1

    .line 3509
    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setHorizontalScroll(Z)V

    .line 3510
    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getTargetScrollX()I

    move-result v1

    .line 3512
    :cond_1
    iget v3, p1, Lcom/nuance/swype/input/emoji/EmojiInfo;->xPos:I

    sub-int/2addr v3, v1

    iput v3, p1, Lcom/nuance/swype/input/emoji/EmojiInfo;->xPos:I

    .line 3513
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/InputView;->getDefaultSkinTone(Ljava/lang/String;)I

    move-result v2

    .line 3514
    .local v2, "selectedSkinTone":I
    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->skinToneList:Ljava/util/List;

    invoke-virtual {v3, v4, p4, p1, v2}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->setSkinToneAdapter(Ljava/util/List;Landroid/view/View;Lcom/nuance/swype/input/emoji/EmojiInfo;I)V

    .line 3516
    .end local v1    # "mTargetScroll":I
    .end local v2    # "selectedSkinTone":I
    :cond_2
    return-void
.end method


# virtual methods
.method public IsTextFieldEmpty()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3028
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 3029
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-nez v1, :cond_1

    .line 3035
    :cond_0
    :goto_0
    return v2

    .line 3033
    :cond_1
    invoke-virtual {v1, v3, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3035
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public addCandidateListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .prologue
    .line 2621
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v0, :cond_0

    .line 2622
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/CandidatesListView;->addOnWordSelectActionListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V

    .line 2624
    :cond_0
    return-void
.end method

.method public addEmojiInRecentCat(Lcom/nuance/input/swypecorelib/WordCandidate;)V
    .locals 2
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    .line 3419
    if-nez p1, :cond_1

    .line 3427
    :cond_0
    :goto_0
    return-void

    .line 3422
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->EMOJEENIE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_2

    .line 3423
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/InputView;->addSelectedEmoji(Lcom/nuance/input/swypecorelib/WordCandidate;)V

    goto :goto_0

    .line 3424
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/EmojiLoader;->isEmoji(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3425
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/InputView;->addSelectedEmoji(Lcom/nuance/input/swypecorelib/WordCandidate;)V

    goto :goto_0
.end method

.method public addEmojiInRecentCat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "selectedEmoji"    # Ljava/lang/String;
    .param p2, "original_emoji"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3407
    sget-object v1, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "addEmojiInRecentCat()"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " called ::  selectedEmoji  :: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , original_emoji :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3409
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3416
    :cond_0
    :goto_0
    return-void

    .line 3412
    :cond_1
    invoke-static {p2}, Lcom/nuance/swype/input/emoji/EmojiLoader;->isEmoji(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3413
    invoke-direct {p0, p2, p1}, Lcom/nuance/swype/input/InputView;->addSelectedEmoji(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3414
    .local v0, "isAdded":Z
    sget-object v1, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "addEmojiInRecentCat()"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " called ::  isAdded  :: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addHardKeyOOVToDictionary()Z
    .locals 1

    .prologue
    .line 2955
    const/4 v0, 0x0

    return v0
.end method

.method public addSelectedEmoji(Lcom/nuance/input/swypecorelib/WordCandidate;)V
    .locals 6
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    .line 3431
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->getEmojiUnicode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/input/InputView;->addSelectedEmoji(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3432
    .local v0, "isAdded":Z
    sget-object v1, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "onSelectCandidate()"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " called ::  emoji added :: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3433
    return-void
.end method

.method protected cancelSpeech()V
    .locals 1

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 1925
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->cancelSpeech()V

    .line 1927
    :cond_0
    return-void
.end method

.method public changeKeyboardMode()V
    .locals 0

    .prologue
    .line 1289
    return-void
.end method

.method public clearAllKeys()V
    .locals 0

    .prologue
    .line 2111
    return-void
.end method

.method public clearComposingTextAndSelection()V
    .locals 7

    .prologue
    .line 2548
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 2549
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 2550
    sget-object v3, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "cursor clearComposingTextAndSelection"

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2551
    iget v3, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    iget v4, p0, Lcom/nuance/swype/input/InputView;->endSelection:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2552
    .local v2, "start":I
    iget v3, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    iget v4, p0, Lcom/nuance/swype/input/InputView;->endSelection:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2553
    .local v0, "end":I
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2554
    if-le v0, v2, :cond_0

    .line 2555
    invoke-interface {v1, v0, v0}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 2556
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->clearSelection()V

    .line 2559
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_0
    return-void
.end method

.method public clearCurrentActiveWord()V
    .locals 0

    .prologue
    .line 721
    return-void
.end method

.method public clearHardText()V
    .locals 3

    .prologue
    .line 2946
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2947
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2948
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2949
    const-string/jumbo v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2950
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2952
    :cond_0
    return-void
.end method

.method public clearPendingSuggestionsUpdate()V
    .locals 0

    .prologue
    .line 2300
    return-void
.end method

.method protected clearSelection()V
    .locals 1

    .prologue
    .line 3061
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/InputView;->endSelection:I

    iput v0, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    .line 3062
    return-void
.end method

.method public clearSelectionKeys()Z
    .locals 6

    .prologue
    .line 2537
    iget v4, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    iget v5, p0, Lcom/nuance/swype/input/InputView;->endSelection:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2538
    .local v3, "start":I
    iget v4, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    iget v5, p0, Lcom/nuance/swype/input/InputView;->endSelection:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2539
    .local v0, "end":I
    move v1, v3

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2540
    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->clearCharacter()Z

    .line 2539
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2542
    :cond_0
    if-le v0, v3, :cond_1

    const/4 v2, 0x1

    .line 2543
    .local v2, "selected":Z
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->clearSelection()V

    .line 2544
    return v2

    .line 2542
    .end local v2    # "selected":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public clearSuggestions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2090
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-nez v0, :cond_1

    .line 2107
    :cond_0
    :goto_0
    return-void

    .line 2093
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isValidBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2096
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isActiveWCL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2100
    iput-object v2, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 2101
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 2102
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v0, :cond_2

    .line 2103
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    sget-object v1, Lcom/nuance/swype/input/CandidatesListView$Format;->NONE:Lcom/nuance/swype/input/CandidatesListView$Format;

    invoke-virtual {v0, v2, v1}, Lcom/nuance/swype/input/CandidatesListView;->setSuggestions(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)Lcom/nuance/input/swypecorelib/Candidates;

    .line 2104
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->syncCandidateDisplayStyleToMode()V

    .line 2106
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->clearAllKeys()V

    goto :goto_0
.end method

.method public closeDialogs()V
    .locals 0

    .prologue
    .line 2269
    return-void
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 2
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "t9write"    # Lcom/nuance/input/swypecorelib/T9Write;
    .param p4, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 322
    iput-object p4, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    .line 323
    iput-object p2, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .line 325
    invoke-virtual {p1}, Lcom/nuance/swype/input/IME;->getEditState()Lcom/nuance/swype/input/EditState;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->mEditState:Lcom/nuance/swype/input/EditState;

    .line 326
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputView;->isExploredByTouch:Z

    .line 328
    new-instance v0, Lcom/nuance/swype/input/UndoAcceptHandler;

    invoke-direct {v0, p2}, Lcom/nuance/swype/input/UndoAcceptHandler;-><init>(Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->undoAcceptHandler:Lcom/nuance/swype/input/UndoAcceptHandler;

    .line 330
    new-instance v0, Lcom/nuance/swype/input/keyboard/GestureHandler;

    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getGestureManager()Lcom/nuance/swype/input/GestureManager;

    move-result-object v1

    invoke-direct {v0, p1, p0, p2, v1}, Lcom/nuance/swype/input/keyboard/GestureHandler;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/GestureManager;)V

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->gestureHandler:Lcom/nuance/swype/input/keyboard/GestureHandler;

    .line 332
    new-instance v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;-><init>(Landroid/content/Context;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    .line 333
    return-void
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 1
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 318
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
    .line 559
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    if-nez v2, :cond_0

    .line 561
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 562
    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 561
    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 563
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 565
    sget v2, Lcom/nuance/swype/input/R$layout;->candidates:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/WordListViewContainer;

    iput-object v2, p0, Lcom/nuance/swype/input/InputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    .line 567
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    sget v3, Lcom/nuance/swype/input/R$id;->wordlist_holder:I

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/InputView;->wordListHolder:Landroid/view/View;

    .line 568
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    sget v3, Lcom/nuance/swype/input/R$id;->billboard:I

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/InputView;->billboardHolder:Landroid/view/View;

    .line 569
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->wordListHolder:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 571
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    sget v3, Lcom/nuance/swype/input/R$id;->candidates:I

    .line 572
    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/CandidatesListView;

    iput-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    .line 574
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    sget v3, Lcom/nuance/swype/input/R$id;->emojilist_holder:I

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/InputView;->emojiCandidatesHolder:Landroid/view/View;

    .line 575
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    sget v3, Lcom/nuance/swype/input/R$id;->emojiCandidates:I

    .line 576
    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/CandidatesListView;

    iput-object v2, p0, Lcom/nuance/swype/input/InputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    .line 578
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$attr;->emojeenieBackground:I

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 579
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-static {v2, v0}, Lcom/nuance/android/compat/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 581
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/WordListViewContainer;->updateView()V

    .line 585
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v2, :cond_1

    .line 587
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/CandidatesListView;->clearOnWordSelectActionListeners()V

    .line 588
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/CandidatesListView;->addOnWordSelectActionListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V

    .line 589
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/CandidatesListView;->addOnWordSelectActionListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V

    .line 592
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v2, :cond_2

    .line 594
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/CandidatesListView;->clearOnWordSelectActionListeners()V

    .line 595
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/CandidatesListView;->addOnWordSelectActionListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V

    .line 596
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/CandidatesListView;->addOnWordSelectActionListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V

    .line 599
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    return-object v2
.end method

.method protected currentLanguageSupportsCapitalization()Z
    .locals 1

    .prologue
    .line 2205
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v0, :cond_0

    .line 2206
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isCapitalizationSupported()Z

    move-result v0

    .line 2209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 357
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->closing()V

    .line 358
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->removeAllMessages()V

    .line 359
    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 360
    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 361
    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 362
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->unresisterTouchKeyHandler()V

    .line 364
    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    .line 366
    :cond_0
    invoke-static {}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->getDispatcherInstance()Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->setHandler(Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;)Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    .line 367
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;

    move-result-object v0

    .line 368
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->setCurrentView(Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 369
    return-void
.end method

.method protected destroySpeechWrapper()V
    .locals 1

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 1931
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->stopSpeech()V

    .line 1932
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->onDestroy()V

    .line 1934
    :cond_0
    return-void
.end method

.method public dimissRemoveUdbWordDialog()V
    .locals 1

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    if-eqz v0, :cond_0

    .line 2587
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    invoke-virtual {v0}, Lcom/nuance/swype/input/RemoveUdbWordDialog;->dismiss()V

    .line 2590
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    .line 2591
    return-void
.end method

.method public dismissEmojiPopup()V
    .locals 4

    .prologue
    .line 3585
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3586
    sget-object v0, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "dismissEmojiPopup()"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "called >>>>>: "

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3587
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->dismiss()V

    .line 3588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    .line 3590
    :cond_0
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 1121
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mCompletionOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mTextInputPredictionOn:Z

    if-nez v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/Completions;->update([Landroid/view/inputmethod/CompletionInfo;)V

    .line 1123
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Completions;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1124
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1128
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Completions;->getDisplayItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/nuance/swype/input/InputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Ljava/util/List;ILcom/nuance/input/swypecorelib/Candidates$Source;)V

    goto :goto_0
.end method

.method public finishInput()V
    .locals 2

    .prologue
    .line 674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mStarted:Z

    .line 675
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->dismissEmojiPopup()V

    .line 676
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/CandidatesListView;->setHorizontalScroll(Z)V

    .line 679
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 680
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->multitapClearInvalid()V

    .line 682
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->closing()V

    .line 683
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->removeAllMessages()V

    .line 684
    return-void
.end method

.method public flushCurrentActiveWord()V
    .locals 0

    .prologue
    .line 1115
    return-void
.end method

.method protected getBackspaceRevertHandler()Lcom/nuance/swype/input/BackspaceRevertHandler;
    .locals 1

    .prologue
    .line 2639
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCandidatesListView()Lcom/nuance/swype/input/CandidatesListView;
    .locals 1

    .prologue
    .line 2617
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    return-object v0
.end method

.method protected getContainerX()I
    .locals 2

    .prologue
    .line 1999
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2000
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 2001
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2004
    :goto_0
    return v1

    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContextBuffer()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1797
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->getTextBufferCursor(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDefaultWord()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 688
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 689
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 690
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    .line 691
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 694
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentExactWord()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 699
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 700
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 701
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    .line 702
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 705
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    return-object v0
.end method

.method public getCurrentWordCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    .line 710
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 716
    :goto_0
    return-object v0

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    goto :goto_0

    .line 716
    :cond_1
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    goto :goto_0
.end method

.method public getDefaultInputContextHandler()Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;
    .locals 1

    .prologue
    .line 3362
    new-instance v0, Lcom/nuance/swype/input/InputView$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/InputView$4;-><init>(Lcom/nuance/swype/input/InputView;)V

    return-object v0
.end method

.method public getDefaultKeyUIStateHandler()Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;
    .locals 1

    .prologue
    .line 3344
    new-instance v0, Lcom/nuance/swype/input/InputView$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/InputView$3;-><init>(Lcom/nuance/swype/input/InputView;)V

    return-object v0
.end method

.method public getEmojiInputViewController()Lcom/nuance/swype/input/emoji/EmojiInputController;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getEmojiInputViewController()Lcom/nuance/swype/input/emoji/EmojiInputController;

    move-result-object v0

    return-object v0
.end method

.method public getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;
    .locals 1

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    return-object v0
.end method

.method public getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .locals 1

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_0

    .line 1753
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    .line 1755
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    goto :goto_0
.end method

.method public getKeyboardSwitcher()Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method protected getLastInput()I
    .locals 1

    .prologue
    .line 2184
    iget v0, p0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    return v0
.end method

.method protected getLongPressKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .locals 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/16 v0, 0xfdf

    .line 1687
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isShifted()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    if-eq v1, v0, :cond_1

    .line 1688
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    .line 1694
    :cond_0
    :goto_0
    return v0

    .line 1689
    :cond_1
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftTransition:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->DROP_HIDE:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    if-eq v1, v2, :cond_0

    .line 1694
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    goto :goto_0
.end method

.method public getNextKeyboardDockMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .locals 7
    .param p1, "currentMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 373
    sget-object v4, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 374
    const/4 v1, 0x0

    .line 375
    .local v1, "i":I
    invoke-static {}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v4

    array-length v0, v4

    .line 376
    .local v0, "dockModeLength":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    iget-object v4, v4, Lcom/nuance/swype/input/KeyboardEx;->keyboardStyle:Lcom/nuance/swype/input/KeyboardStyle;

    sget v5, Lcom/nuance/swype/input/R$attr;->invalidDockModes:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/input/KeyboardStyle;->getInt(II)I

    move-result v4

    invoke-static {v4}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->from(I)Ljava/util/EnumSet;

    move-result-object v2

    .line 379
    .local v2, "invalidDockModes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;>;"
    :cond_0
    sget-object v4, Lcom/nuance/swype/input/InputView$5;->$SwitchMap$com$nuance$swype$input$KeyboardEx$KeyboardDockMode:[I

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 396
    move-object v3, p1

    .line 399
    .local v3, "newMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 400
    move-object p1, v3

    .line 401
    add-int/lit8 v1, v1, 0x1

    .line 405
    if-lt v1, v0, :cond_0

    .line 407
    :cond_1
    return-object v3

    .line 381
    .end local v3    # "newMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :pswitch_0
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 382
    .restart local v3    # "newMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    goto :goto_0

    .line 384
    .end local v3    # "newMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :pswitch_1
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 385
    .restart local v3    # "newMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    goto :goto_0

    .line 387
    .end local v3    # "newMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :pswitch_2
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 388
    .restart local v3    # "newMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    goto :goto_0

    .line 390
    .end local v3    # "newMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :pswitch_3
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 391
    .restart local v3    # "newMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    goto :goto_0

    .line 393
    .end local v3    # "newMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :pswitch_4
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 394
    .restart local v3    # "newMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    goto :goto_0

    .line 379
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSpeechAlternateCandidates()Ljava/util/List;
    .locals 2
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
    .line 1957
    const/4 v0, 0x0

    .line 1958
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v1, :cond_0

    .line 1959
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v1}, Lcom/nuance/swype/input/SpeechWrapper;->getAlternateCandidates()Ljava/util/ArrayList;

    move-result-object v0

    .line 1961
    :cond_0
    if-eqz v0, :cond_1

    .line 1964
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestionCandidates()Lcom/nuance/input/swypecorelib/Candidates;
    .locals 1

    .prologue
    .line 2627
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    return-object v0
.end method

.method public getTextBufferCursor(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 1789
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1790
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1791
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1793
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUndoAcceptHandler()Lcom/nuance/swype/input/UndoAcceptHandler;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->undoAcceptHandler:Lcom/nuance/swype/input/UndoAcceptHandler;

    return-object v0
.end method

.method public getWordCandidateListContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    return-object v0
.end method

.method protected getWordDecorator()Lcom/nuance/swype/util/WordDecorator;
    .locals 1

    .prologue
    .line 2643
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->wordDecorator:Lcom/nuance/swype/util/WordDecorator;

    return-object v0
.end method

.method public getWordListFormat(Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/swype/input/CandidatesListView$Format;
    .locals 1
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 2122
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v0

    .line 2123
    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/swype/input/CandidatesListView$Format;->FIT_AS_MUCH:Lcom/nuance/swype/input/CandidatesListView$Format;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/swype/input/CandidatesListView$Format;->DEFAULT:Lcom/nuance/swype/input/CandidatesListView$Format;

    goto :goto_0
.end method

.method public getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    return-object v0
.end method

.method public handleBackspace(I)Z
    .locals 1
    .param p1, "repeatedCount"    # I

    .prologue
    .line 1100
    const/4 v0, 0x0

    return v0
.end method

.method public handleCharKey(Landroid/graphics/Point;IJ)V
    .locals 0
    .param p1, "pointTapped"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->recordStartTimeDisplaySelection()V

    .line 842
    return-void
.end method

.method public handleCharKey(Landroid/graphics/Point;I[IJ)V
    .locals 0
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "eventTime"    # J

    .prologue
    .line 830
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/nuance/swype/input/InputView;->handleCharKey(Landroid/graphics/Point;IJ)V

    .line 831
    return-void
.end method

.method public handleClose()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1031
    sget-object v5, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "handleClose.."

    aput-object v7, v6, v10

    const-string/jumbo v7, "getLeft().."

    aput-object v7, v6, v12

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getLeft()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v13

    const-string/jumbo v7, "..getRight().."

    aput-object v7, v6, v14

    const/4 v7, 0x4

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getRight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1032
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->cancelSpeech()V

    .line 1033
    iput-boolean v10, p0, Lcom/nuance/swype/input/InputView;->mStarted:Z

    .line 1035
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/stats/StatisticsManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager;

    move-result-object v3

    .line 1036
    .local v3, "statsMgr":Lcom/nuance/swype/stats/StatisticsManager;
    if-eqz v3, :cond_1

    .line 1038
    iget v5, p0, Lcom/nuance/swype/input/InputView;->swypeDistanceSum:F

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_0

    .line 1039
    iget v5, p0, Lcom/nuance/swype/input/InputView;->swypeDistanceSum:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1042
    .local v2, "distanceRounded":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v5

    const-string/jumbo v6, "total_swype_distance"

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v8, v9}, Lcom/nuance/swype/input/AppPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1047
    .local v0, "distance":J
    :goto_0
    int-to-long v6, v2

    add-long/2addr v0, v6

    .line 1049
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v5

    const-string/jumbo v6, "total_swype_distance"

    invoke-virtual {v5, v6, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setLong(Ljava/lang/String;J)V

    .line 1052
    invoke-virtual {v3}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe()Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v5

    int-to-long v6, v2

    invoke-interface {v5, v6, v7}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->trackDistanceSwyped(J)V

    .line 1054
    .end local v0    # "distance":J
    .end local v2    # "distanceRounded":I
    :cond_0
    iput v11, p0, Lcom/nuance/swype/input/InputView;->swypeDistanceSum:F

    .line 1057
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v4

    .line 1058
    .local v4, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v4, :cond_3

    .line 1059
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/nuance/swype/input/InputView;->startTimeDisplaySelectionList:J

    .line 1060
    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1061
    invoke-virtual {v4}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Tap "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v7, v7, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Total:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    .line 1063
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Average:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    .line 1065
    invoke-static {v8}, Lcom/nuance/swype/util/LogManager;->calculateAverage(Ljava/util/List;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1061
    invoke-interface {v5, v6, v7}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordUsedTimeSelectionListDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    sget-object v5, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "Tap "

    aput-object v7, v6, v10

    iget-object v7, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v7, v7, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    aput-object v7, v6, v12

    const-string/jumbo v7, " Total:"

    aput-object v7, v6, v13

    iget-object v7, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    .line 1069
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v14

    const/4 v7, 0x4

    const-string/jumbo v8, " Average:"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    .line 1070
    invoke-static {v8}, Lcom/nuance/swype/util/LogManager;->calculateAverage(Ljava/util/List;)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, "ms"

    aput-object v8, v6, v7

    .line 1068
    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1073
    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1076
    :cond_2
    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->usedTimeListReselectDisplaySelection:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 1077
    invoke-virtual {v4}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Reselect "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v7, v7, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Total:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/swype/input/InputView;->usedTimeListReselectDisplaySelection:Ljava/util/List;

    .line 1079
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Average:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/nuance/swype/input/InputView;->usedTimeListReselectDisplaySelection:Ljava/util/List;

    .line 1081
    invoke-static {v8}, Lcom/nuance/swype/util/LogManager;->calculateAverage(Ljava/util/List;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1077
    invoke-interface {v5, v6, v7}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordUsedTimeSelectionListDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->usedTimeListReselectDisplaySelection:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1086
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    .line 1087
    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1088
    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 1089
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/nuance/swype/input/InputView;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    .line 1092
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->removeAllMessages()V

    .line 1093
    return-void

    .line 1045
    .end local v4    # "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    .restart local v2    # "distanceRounded":I
    :catch_0
    move-exception v5

    const-wide/16 v0, 0x0

    .restart local v0    # "distance":J
    goto/16 :goto_0
.end method

.method public handleDeleteWordBack(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 17
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 1606
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v6

    .line 1607
    .local v6, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v6, :cond_d

    .line 1608
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v13, 0x100

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1609
    .local v2, "cs":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectionRangeInEditor()[I

    move-result-object v10

    .line 1610
    .local v10, "selection":[I
    const/4 v5, 0x0

    .line 1612
    .local v5, "hasSelection":Z
    if-eqz v10, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1613
    const/4 v12, 0x0

    aget v12, v10, v12

    const/4 v13, 0x1

    aget v13, v10, v13

    if-eq v12, v13, :cond_3

    const/4 v5, 0x1

    .line 1616
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1618
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v12, :cond_2

    .line 1620
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 1622
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->updateShiftKeyState()V

    .line 1623
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v12}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1624
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->playEndOfListSound()V

    .line 1627
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->isEmptyCandidateList()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1628
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->showNextWordPrediction()V

    .line 1632
    :cond_2
    const/4 v12, 0x0

    .line 1682
    .end local v2    # "cs":Ljava/lang/String;
    .end local v5    # "hasSelection":Z
    .end local v10    # "selection":[I
    :goto_1
    return v12

    .line 1613
    .restart local v2    # "cs":Ljava/lang/String;
    .restart local v5    # "hasSelection":Z
    .restart local v10    # "selection":[I
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 1635
    :cond_4
    invoke-virtual {v6}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 1636
    invoke-virtual {v6}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->finishComposingText()Z

    .line 1638
    if-eqz v5, :cond_6

    .line 1639
    const-string/jumbo v12, ""

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1677
    :cond_5
    :goto_2
    invoke-virtual {v6}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 1678
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 1679
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->updateShiftKeyState()V

    .line 1680
    const/4 v12, 0x1

    goto :goto_1

    .line 1642
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v12}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v11

    .line 1643
    .local v11, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "\\s+"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1644
    .local v9, "parts":[Ljava/lang/String;
    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1645
    .local v7, "lastChar":Ljava/lang/CharSequence;
    array-length v12, v9

    const/4 v13, 0x1

    if-le v12, v13, :cond_a

    .line 1646
    array-length v12, v9

    add-int/lit8 v12, v12, -0x1

    aget-object v12, v9, v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 1647
    .local v8, "lastIndex":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 1648
    .local v4, "editablelength":I
    if-le v4, v8, :cond_8

    sub-int v1, v4, v8

    .line 1649
    .local v1, "beforeLen":I
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1650
    .local v3, "deletedStr":Ljava/lang/String;
    if-eqz v11, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-lt v12, v1, :cond_7

    .line 1651
    invoke-virtual {v11}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v12

    invoke-interface {v12, v3}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordDeletedWord(Ljava/lang/String;)V

    .line 1654
    :cond_7
    if-eqz v7, :cond_9

    const/4 v12, 0x0

    invoke-interface {v7, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1655
    const/4 v12, 0x0

    invoke-virtual {v6, v1, v12}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->deleteSurroundingText(II)Z

    .line 1671
    .end local v1    # "beforeLen":I
    .end local v4    # "editablelength":I
    .end local v8    # "lastIndex":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v12}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1672
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 1673
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->shouldSpeakForPassword()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1674
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/InputView;->wordDeletedString:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v3, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->announceNotification(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1648
    .end local v3    # "deletedStr":Ljava/lang/String;
    .restart local v4    # "editablelength":I
    .restart local v8    # "lastIndex":I
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 1657
    .restart local v1    # "beforeLen":I
    .restart local v3    # "deletedStr":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v12, v0, Lcom/nuance/swype/input/InputView;->repeatCount:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/nuance/swype/input/InputView;->sendBackspace(I)V

    goto :goto_4

    .line 1660
    .end local v1    # "beforeLen":I
    .end local v3    # "deletedStr":Ljava/lang/String;
    .end local v4    # "editablelength":I
    .end local v8    # "lastIndex":I
    :cond_a
    move-object v3, v2

    .line 1661
    .restart local v3    # "deletedStr":Ljava/lang/String;
    if-eqz v11, :cond_b

    .line 1662
    invoke-virtual {v11}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v12

    invoke-interface {v12, v2}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordDeletedWord(Ljava/lang/String;)V

    .line 1665
    :cond_b
    if-eqz v7, :cond_c

    const/4 v12, 0x0

    invoke-interface {v7, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v12

    if-nez v12, :cond_c

    .line 1666
    move-object/from16 v0, p0

    iget v12, v0, Lcom/nuance/swype/input/InputView;->repeatCount:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/nuance/swype/input/InputView;->sendBackspace(I)V

    goto :goto_4

    .line 1668
    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->deleteSurroundingText(II)Z

    goto :goto_4

    .line 1682
    .end local v2    # "cs":Ljava/lang/String;
    .end local v3    # "deletedStr":Ljava/lang/String;
    .end local v5    # "hasSelection":Z
    .end local v7    # "lastChar":Ljava/lang/CharSequence;
    .end local v9    # "parts":[Ljava/lang/String;
    .end local v10    # "selection":[I
    .end local v11    # "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method public handleEmotionKey()V
    .locals 1

    .prologue
    .line 1002
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1003
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->showEmojiInputView()V

    .line 1004
    return-void
.end method

.method public handleGesture(I)Z
    .locals 1
    .param p1, "gestureCode"    # I

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->gestureHandler:Lcom/nuance/swype/input/keyboard/GestureHandler;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/keyboard/GestureHandler;->handle(I)Z

    move-result v0

    return v0
.end method

.method public handleGesture(Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 2
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 2219
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->gestureHandler:Lcom/nuance/swype/input/keyboard/GestureHandler;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/keyboard/GestureHandler;->handle(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleHardKeyCapsLock(Z)Z
    .locals 1
    .param p1, "iscapslockon"    # Z

    .prologue
    .line 2855
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardKeyDirectionKey(I)Z
    .locals 1
    .param p1, "keycode"    # I

    .prologue
    .line 2866
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardKeyEndKey()Z
    .locals 1

    .prologue
    .line 2884
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardKeyEscapeKey()Z
    .locals 1

    .prologue
    .line 2893
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardKeyHomeKey()Z
    .locals 1

    .prologue
    .line 2875
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardKeyStringEvent(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "multistring"    # Ljava/lang/String;
    .param p2, "multitap"    # Z

    .prologue
    .line 2903
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardkeyBackspace(I)Z
    .locals 1
    .param p1, "repeatedCount"    # I

    .prologue
    .line 2817
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardkeyCharKey(ILandroid/view/KeyEvent;Z)V
    .locals 0
    .param p1, "primaryCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "shiftable"    # Z

    .prologue
    .line 2807
    return-void
.end method

.method public handleHardkeyCharKey(I[ILandroid/view/KeyEvent;Z)V
    .locals 0
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "shiftable"    # Z

    .prologue
    .line 2798
    return-void
.end method

.method public handleHardkeyDelete(I)Z
    .locals 1
    .param p1, "repeatedCount"    # I

    .prologue
    .line 2828
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardkeyEnter()Z
    .locals 1

    .prologue
    .line 2837
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardkeyShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 1
    .param p1, "state"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 2846
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardkeySpace(ZI)Z
    .locals 1
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    .line 2787
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->sendSpace()V

    .line 2788
    const/4 v0, 0x1

    return v0
.end method

.method public handleKey(IZI)Z
    .locals 3
    .param p1, "primaryCode"    # I
    .param p2, "quickPressed"    # Z
    .param p3, "repeatedCount"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 951
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 994
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 953
    :sswitch_1
    invoke-virtual {p0, p3}, Lcom/nuance/swype/input/InputView;->handleBackspace(I)Z

    move-result v0

    goto :goto_0

    .line 956
    :sswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/nuance/swype/input/InputView;->handleSpace(ZI)Z

    move-result v0

    goto :goto_0

    .line 960
    :sswitch_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->handleShiftKey()V

    goto :goto_0

    .line 966
    :sswitch_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->handleMultitapDeadkey()V

    goto :goto_0

    .line 970
    :sswitch_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->changeKeyboardMode()V

    goto :goto_0

    .line 975
    :sswitch_6
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 976
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/InputView;->toggleKeyboard(Z)V

    goto :goto_0

    .line 981
    :sswitch_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isValidBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->setSwypeKeytoolTipSuggestion()V

    goto :goto_0

    .line 987
    :sswitch_8
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->handleKeyboardResize()V

    goto :goto_0

    .line 990
    :sswitch_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->handleEmotionKey()V

    goto :goto_0

    .line 951
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x20 -> :sswitch_2
        0xb54 -> :sswitch_8
        0xb7b -> :sswitch_6
        0xb7e -> :sswitch_4
        0xfe4 -> :sswitch_3
        0xfea -> :sswitch_9
        0x192d -> :sswitch_3
        0x193e -> :sswitch_5
        0xaa37 -> :sswitch_7
        0xaa39 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 793
    packed-switch p1, :pswitch_data_0

    .line 807
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 795
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->handleBack()Z

    move-result v0

    goto :goto_0

    .line 793
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public handleKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 819
    const/4 v0, 0x0

    return v0
.end method

.method public handleKeyWithModifiers(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 1148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/InputView;->handleKeyWithModifiers(IZ)V

    .line 1149
    return-void
.end method

.method public handleKeyWithModifiers(IZ)V
    .locals 33
    .param p1, "keyCode"    # I
    .param p2, "forceAlt"    # Z

    .prologue
    .line 1152
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-nez v5, :cond_1

    .line 1286
    :cond_0
    :goto_0
    return-void

    .line 1155
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v27

    check-cast v27, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    .line 1157
    .local v27, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v27, :cond_0

    .line 1161
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1171
    :sswitch_0
    const/16 p1, 0x15

    .line 1172
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    .line 1173
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->isExploreByTouchOn()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1174
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->playSoundIfTextIsEmpty()V

    .line 1187
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->isComposingText()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1188
    sget-object v5, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "cursor handleKeyWithModifiers"

    aput-object v10, v8, v9

    invoke-interface {v5, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1189
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->flushCurrentActiveWord()V

    .line 1191
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->isEditModeSelectKeyOn()Z

    move-result v32

    .line 1192
    .local v32, "shifted":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1194
    .local v6, "eventTime":J
    packed-switch p1, :pswitch_data_0

    .line 1251
    :cond_4
    const/4 v13, 0x0

    .line 1252
    .local v13, "metaState":I
    if-eqz p2, :cond_f

    .line 1253
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x0

    const/16 v11, 0x39

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    move-wide v8, v6

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .end local v13    # "metaState":I
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1256
    const/16 v13, 0x32

    .restart local v13    # "metaState":I
    move/from16 v30, v13

    .line 1258
    .end local v13    # "metaState":I
    .local v30, "metaState":I
    :goto_2
    if-eqz v32, :cond_e

    .line 1259
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x0

    const/16 v11, 0x3b

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    move-wide v8, v6

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1262
    or-int/lit8 v5, v30, 0x40

    or-int/lit16 v5, v5, 0x80

    or-int/lit8 v13, v5, 0x1

    .line 1268
    .end local v30    # "metaState":I
    .restart local v13    # "metaState":I
    :goto_3
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    move-wide v8, v6

    move/from16 v11, p1

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1271
    new-instance v5, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    move/from16 v11, p1

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1276
    if-eqz p2, :cond_5

    .line 1277
    new-instance v15, Landroid/view/KeyEvent;

    const/16 v20, 0x1

    const/16 v21, 0x39

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x6

    move-wide/from16 v16, v6

    move-wide/from16 v18, v6

    invoke-direct/range {v15 .. v26}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1281
    :cond_5
    if-eqz v32, :cond_0

    .line 1282
    new-instance v15, Landroid/view/KeyEvent;

    const/16 v20, 0x1

    const/16 v21, 0x3b

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x6

    move-wide/from16 v16, v6

    move-wide/from16 v18, v6

    invoke-direct/range {v15 .. v26}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 1163
    .end local v6    # "eventTime":J
    .end local v13    # "metaState":I
    .end local v32    # "shifted":Z
    :sswitch_1
    const/16 p1, 0x13

    .line 1164
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    goto/16 :goto_1

    .line 1167
    :sswitch_2
    const/16 p1, 0x14

    .line 1168
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    goto/16 :goto_1

    .line 1178
    :sswitch_3
    const/16 p1, 0x16

    .line 1180
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    goto/16 :goto_1

    .line 1196
    .restart local v6    # "eventTime":J
    .restart local v32    # "shifted":Z
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldEditModeUseAlternativeSelectMethod()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1197
    invoke-virtual/range {v27 .. v27}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v28

    .line 1198
    .local v28, "inputConnection":Landroid/view/inputmethod/InputConnection;
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v5, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v4

    .line 1199
    .local v4, "et":Landroid/view/inputmethod/ExtractedText;
    if-eqz v32, :cond_7

    .line 1200
    iget v8, v4, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v5, v4, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_6

    iget v5, v4, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/lit8 v5, v5, -0x1

    :goto_4
    move-object/from16 v0, v28

    invoke-interface {v0, v8, v5}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 1202
    :cond_7
    iget v5, v4, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_8

    iget v5, v4, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/lit8 v31, v5, -0x1

    .line 1203
    .local v31, "pos":I
    :goto_5
    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto/16 :goto_0

    .line 1202
    .end local v31    # "pos":I
    :cond_8
    const/16 v31, 0x0

    goto :goto_5

    .line 1209
    .end local v4    # "et":Landroid/view/inputmethod/ExtractedText;
    .end local v28    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldEditModeUseAlternativeSelectMethod()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1210
    invoke-virtual/range {v27 .. v27}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v28

    .line 1211
    .restart local v28    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v5, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v4

    .line 1212
    .restart local v4    # "et":Landroid/view/inputmethod/ExtractedText;
    iget-object v5, v4, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v29

    .line 1213
    .local v29, "length":I
    if-eqz v32, :cond_a

    .line 1214
    iget v5, v4, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v8, v4, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v29

    if-gt v8, v0, :cond_9

    iget v8, v4, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/lit8 v29, v8, 0x1

    .end local v29    # "length":I
    :cond_9
    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v0, v5, v1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto/16 :goto_0

    .line 1216
    .restart local v29    # "length":I
    :cond_a
    iget v5, v4, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v29

    if-gt v5, v0, :cond_b

    iget v5, v4, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/lit8 v31, v5, 0x1

    .line 1217
    .restart local v31    # "pos":I
    :goto_6
    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto/16 :goto_0

    .end local v31    # "pos":I
    :cond_b
    move/from16 v31, v29

    .line 1216
    goto :goto_6

    .line 1223
    .end local v4    # "et":Landroid/view/inputmethod/ExtractedText;
    .end local v28    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    .end local v29    # "length":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldEditModeUseAlternativeSelectMethod()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1224
    invoke-virtual/range {v27 .. v27}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v28

    .line 1225
    .restart local v28    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v5, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v4

    .line 1226
    .restart local v4    # "et":Landroid/view/inputmethod/ExtractedText;
    if-eqz v32, :cond_c

    .line 1227
    iget v5, v4, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v5, v8}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto/16 :goto_0

    .line 1229
    :cond_c
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v5, v8}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto/16 :goto_0

    .line 1235
    .end local v4    # "et":Landroid/view/inputmethod/ExtractedText;
    .end local v28    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldEditModeUseAlternativeSelectMethod()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1236
    invoke-virtual/range {v27 .. v27}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v28

    .line 1237
    .restart local v28    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v5, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v4

    .line 1238
    .restart local v4    # "et":Landroid/view/inputmethod/ExtractedText;
    if-eqz v32, :cond_d

    .line 1239
    iget v5, v4, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget-object v8, v4, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object/from16 v0, v28

    invoke-interface {v0, v5, v8}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto/16 :goto_0

    .line 1241
    :cond_d
    iget-object v5, v4, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v31

    .line 1242
    .restart local v31    # "pos":I
    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto/16 :goto_0

    .end local v4    # "et":Landroid/view/inputmethod/ExtractedText;
    .end local v28    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    .end local v31    # "pos":I
    .restart local v30    # "metaState":I
    :cond_e
    move/from16 v13, v30

    .end local v30    # "metaState":I
    .restart local v13    # "metaState":I
    goto/16 :goto_3

    :cond_f
    move/from16 v30, v13

    .end local v13    # "metaState":I
    .restart local v30    # "metaState":I
    goto/16 :goto_2

    .line 1161
    nop

    :sswitch_data_0
    .sparse-switch
        0xfbd -> :sswitch_0
        0xfcd -> :sswitch_1
        0xfdb -> :sswitch_3
        0xfdc -> :sswitch_2
    .end sparse-switch

    .line 1194
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleKeyboardResize()V
    .locals 3

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    .line 504
    .local v0, "currentMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->getNextKeyboardDockMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    .line 505
    .local v1, "newMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/InputView;->switchKeyboardDockMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 506
    return-void
.end method

.method public handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 8
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/16 v3, 0xff7

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1538
    iget-boolean v4, p0, Lcom/nuance/swype/input/InputView;->mStarted:Z

    if-nez v4, :cond_1

    .line 1593
    :cond_0
    :goto_0
    return v0

    .line 1542
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v4, v4

    if-nez v4, :cond_3

    .line 1543
    :cond_2
    invoke-super {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_0

    .line 1546
    :cond_3
    iget-object v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v4, v4, v1

    packed-switch v4, :pswitch_data_0

    .line 1564
    iget-object v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v4, v4, v1

    const/16 v5, 0x27

    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Lcom/nuance/swype/input/InputView;->mIsDelimiterKeyLabelUpdated:Z

    if-eqz v4, :cond_4

    move v0, v1

    .line 1565
    goto :goto_0

    .line 1550
    :pswitch_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v1

    move-object v4, v2

    move-object v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto :goto_0

    .line 1555
    :pswitch_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v1

    move-object v4, v2

    move-object v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto :goto_0

    .line 1560
    :pswitch_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->handleMultitapToggle()V

    goto :goto_0

    .line 1568
    :cond_4
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/InputView;->getLongPressKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v3

    .line 1569
    .local v3, "keyCode":I
    sparse-switch v3, :sswitch_data_0

    .line 1582
    invoke-super {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 1584
    .local v0, "handled":Z
    if-nez v0, :cond_0

    const/16 v1, 0xfdf

    if-eq v3, v1, :cond_0

    iget v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    if-ne v3, v1, :cond_0

    .line 1589
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->clearKeyboardState()V

    .line 1590
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v1

    iget-object v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    .line 1591
    const/4 v0, 0x1

    goto :goto_0

    .line 1571
    .end local v0    # "handled":Z
    :sswitch_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v1

    const/16 v3, 0x192f

    move-object v4, v2

    move-object v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto :goto_0

    .line 1575
    :sswitch_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v1

    const/16 v3, 0x192e

    move-object v4, v2

    move-object v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto :goto_0

    .line 1579
    :sswitch_2
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleFullScreenHW()V

    goto/16 :goto_0

    .line 1546
    :pswitch_data_0
    .packed-switch 0xb7b
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1569
    :sswitch_data_0
    .sparse-switch
        0x192e -> :sswitch_1
        0x192f -> :sswitch_0
        0xaa3b -> :sswitch_2
    .end sparse-switch
.end method

.method protected handleMultitapDeadkey()V
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->multiTapTimeOut()V

    .line 1142
    return-void
.end method

.method public handleMultitapToggle()V
    .locals 0

    .prologue
    .line 1138
    return-void
.end method

.method public handlePossibleActionAfterResize()V
    .locals 0

    .prologue
    .line 513
    return-void
.end method

.method public handlePossibleActionAfterUniversalKeyboardResize(Z)V
    .locals 0
    .param p1, "hideSymbolView"    # Z

    .prologue
    .line 543
    return-void
.end method

.method public handlePostTap(Landroid/graphics/Point;I)V
    .locals 3
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I

    .prologue
    .line 1014
    const/16 v1, -0xc8

    if-eq p2, v1, :cond_0

    const/16 v1, -0x76

    if-ne p2, v1, :cond_1

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 1015
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1016
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1017
    .local v0, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-nez v0, :cond_2

    .line 1024
    .end local v0    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_1
    :goto_0
    return-void

    .line 1020
    .restart local v0    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_2
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 1021
    const-string/jumbo v1, ":-)"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1022
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    goto :goto_0
.end method

.method public handlePressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 2
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v0, 0x0

    .line 3664
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isShowingSkinTonePopup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3665
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->dismissEmojiPopup()V

    .line 3667
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->showSkinTonePopup(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 3668
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isShowingSkinTonePopup()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3669
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v1, :cond_1

    .line 3670
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/CandidatesListView;->setHorizontalScroll(Z)V

    .line 3672
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v1, :cond_2

    .line 3673
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/CandidatesListView;->setHorizontalScroll(Z)V

    .line 3675
    :cond_2
    const/4 v0, 0x1

    .line 3677
    :cond_3
    return v0
.end method

.method public handleScrollDown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3252
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_0

    .line 3253
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 3254
    const/4 v0, 0x1

    .line 3256
    :cond_0
    return v0
.end method

.method public handleShiftKey()V
    .locals 0

    .prologue
    .line 1145
    return-void
.end method

.method public handleSpace(ZI)Z
    .locals 1
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->sendSpace()V

    .line 1134
    const/4 v0, 0x1

    return v0
.end method

.method public handleTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
    .locals 0
    .param p1, "trace"    # Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .prologue
    .line 915
    return-void
.end method

.method public handleUniversalKeyboardResize(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 519
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 520
    .local v0, "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    packed-switch p1, :pswitch_data_0

    .line 539
    :goto_0
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->switchKeyboardDockMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 540
    return-void

    .line 522
    :pswitch_0
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 523
    goto :goto_0

    .line 525
    :pswitch_1
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 526
    goto :goto_0

    .line 528
    :pswitch_2
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 529
    goto :goto_0

    .line 531
    :pswitch_3
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 532
    goto :goto_0

    .line 534
    :pswitch_4
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    goto :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch -0x75
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleWrite(Ljava/util/List;)V
    .locals 0
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
    .line 924
    .local p1, "write":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    return-void
.end method

.method public hasEditModeSelectKey()Z
    .locals 1

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->selectKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->selectKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPendingSuggestionsUpdate()Z
    .locals 1

    .prologue
    .line 2295
    const/4 v0, 0x0

    return v0
.end method

.method public hasWidgetViews()Z
    .locals 1

    .prologue
    .line 3085
    const/4 v0, 0x0

    return v0
.end method

.method public hideFunctionBar()V
    .locals 0

    .prologue
    .line 2983
    return-void
.end method

.method public isActiveWCL()Z
    .locals 1

    .prologue
    .line 3307
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isUserTapKey()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->isNewThemeAvailableInStore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->themeStoreWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->themeStoreWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;

    iget-boolean v0, v0, Lcom/nuance/swype/input/InputView$WclPrompt;->hasVisitedStore:Z

    if-nez v0, :cond_0

    .line 3309
    const/4 v0, 0x1

    .line 3311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAddToDictionaryTipHighlighted()Z
    .locals 1

    .prologue
    .line 2963
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoReturnToEditorDefaultLayerEnabled()Z
    .locals 1

    .prologue
    .line 1513
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->isAutoReturnToEditorDefaultLayerEnabled:Z

    return v0
.end method

.method public isComposingText()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2518
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentWordCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    .line 2519
    .local v0, "currentSource":Lcom/nuance/input/swypecorelib/Candidates$Source;
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->hasActiveInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2520
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    .line 2524
    :cond_0
    return v1
.end method

.method public isDockMiniKeyboardMode()Z
    .locals 2

    .prologue
    .line 1946
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    .line 1947
    .local v0, "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v0, v1, :cond_1

    .line 1949
    :cond_0
    const/4 v1, 0x1

    .line 1951
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmptyCandidateList()Z
    .locals 1

    .prologue
    .line 2192
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isEmptyWCL()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isReadOnlyCandidateList()Z

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

.method protected isEmptyWCL()Z
    .locals 1

    .prologue
    .line 2200
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullScreenHandWritingView()Z
    .locals 1

    .prologue
    .line 2987
    const/4 v0, 0x0

    return v0
.end method

.method public isFullScreenMode()Z
    .locals 1

    .prologue
    .line 2562
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGesture(Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 2
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 2227
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    if-lez v0, :cond_0

    .line 2228
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    .line 2229
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_GESTURE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-ne v0, v1, :cond_0

    .line 2230
    const/4 v0, 0x1

    .line 2233
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandWritingInputView()Z
    .locals 1

    .prologue
    .line 2991
    const/4 v0, 0x0

    return v0
.end method

.method public isHardkeyKeypadInput()Z
    .locals 2

    .prologue
    .line 2922
    iget v0, p0, Lcom/nuance/swype/input/InputView;->mHardkeyKeyboardLayoutId:I

    const/16 v1, 0x600

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/InputView;->mHardkeyKeyboardLayoutId:I

    const/16 v1, 0x700

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/InputView;->mHardkeyKeyboardLayoutId:I

    const/16 v1, 0x710

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/InputView;->mHardkeyKeyboardLayoutId:I

    const/16 v1, 0x720

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isHighlightedTextSpeechDictated()Z
    .locals 1

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->isHighlightedTextSpeechDictated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputSessionStarted()Z
    .locals 1

    .prologue
    .line 3065
    const/4 v0, 0x1

    return v0
.end method

.method public isInsideWord()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2495
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isComposingText()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2496
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 2497
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_2

    .line 2499
    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2500
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2501
    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2502
    .local v0, "cSeqAfter":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2508
    .end local v0    # "cSeqAfter":Ljava/lang/CharSequence;
    .end local v1    # "cSeqBefore":Ljava/lang/CharSequence;
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return v3

    .restart local v0    # "cSeqAfter":Ljava/lang/CharSequence;
    .restart local v1    # "cSeqBefore":Ljava/lang/CharSequence;
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    move v3, v4

    .line 2502
    goto :goto_0

    .end local v0    # "cSeqAfter":Ljava/lang/CharSequence;
    :cond_1
    move v3, v4

    .line 2504
    goto :goto_0

    .end local v1    # "cSeqBefore":Ljava/lang/CharSequence;
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    move v3, v4

    .line 2508
    goto :goto_0
.end method

.method public isLanguageSwitchableOnSpace()Z
    .locals 1

    .prologue
    .line 1981
    const/4 v0, 0x0

    return v0
.end method

.method protected isLeftCursorWordWhiteSpace(Ljava/lang/CharSequence;)Z
    .locals 8
    .param p1, "wordJustSelected"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1310
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1311
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 1340
    :cond_0
    :goto_0
    return v4

    .line 1315
    :cond_1
    const/16 v6, 0x41

    invoke-interface {v1, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1316
    .local v3, "seqBeforeCursor":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 1318
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1319
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 1321
    .local v2, "index":I
    if-lez v2, :cond_0

    .line 1322
    :goto_1
    if-lez v2, :cond_2

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1323
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1326
    :cond_2
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1327
    add-int/lit8 v2, v2, 0x1

    .line 1330
    :cond_3
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1333
    .local v0, "compoundWord":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 1334
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x40

    if-gt v6, v7, :cond_0

    move v4, v5

    .line 1336
    goto :goto_0
.end method

.method public isLikelyDomain(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1345
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1347
    .local v0, "domain":Ljava/lang/String;
    const-string/jumbo v1, ".com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ".net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ".org"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ".gov"

    .line 1348
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ".edu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ".tv"

    .line 1349
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1350
    :cond_0
    const/4 v1, 0x1

    .line 1353
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMiniKeyboardMode()Z
    .locals 2

    .prologue
    .line 1941
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    .line 1942
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModeStroke()Z
    .locals 1

    .prologue
    .line 3123
    const/4 v0, 0x0

    return v0
.end method

.method public isNormalTextInputMode()Z
    .locals 1

    .prologue
    .line 2998
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

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

.method public isOrientationLandscape()Z
    .locals 2

    .prologue
    .line 2647
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2648
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2649
    :goto_0
    return v0

    .line 2648
    :cond_0
    const/4 v0, 0x0

    .line 2649
    goto :goto_0
.end method

.method public isPredictionOn()Z
    .locals 1

    .prologue
    .line 2360
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mTextInputPredictionOn:Z

    return v0
.end method

.method protected isReadOnlyCandidateList()Z
    .locals 1

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->isReadOnly()Z

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

.method public isShowingAddToDictionaryTip()Z
    .locals 1

    .prologue
    .line 2959
    const/4 v0, 0x0

    return v0
.end method

.method public isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z
    .locals 1
    .param p1, "type"    # Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs isShowingCandidatesForOneOf([Lcom/nuance/input/swypecorelib/Candidates$Source;)Z
    .locals 5
    .param p1, "types"    # [Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    const/4 v1, 0x0

    .line 2039
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v2, :cond_0

    .line 2040
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 2041
    .local v0, "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    if-ne v4, v0, :cond_1

    .line 2042
    const/4 v1, 0x1

    .line 2046
    .end local v0    # "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :cond_0
    return v1

    .line 2040
    .restart local v0    # "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isShowingSkinTonePopup()Z
    .locals 1

    .prologue
    .line 3657
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3658
    const/4 v0, 0x1

    .line 3660
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpeechViewShowing()Z
    .locals 1

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportRecapture()Z
    .locals 1

    .prologue
    .line 1937
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportSkinTone(Ljava/lang/String;)Z
    .locals 2
    .param p1, "emoji_unicode"    # Ljava/lang/String;

    .prologue
    .line 3577
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/InputView;->getEmoji(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v0

    .line 3579
    .local v0, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    if-eqz v0, :cond_0

    .line 3580
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->isSkinToneSupport()Z

    move-result v1

    .line 3582
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isSymbolSelectPopupEnabledForCurrentLayer()Z
    .locals 2

    .prologue
    .line 1745
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->enableSymbolSelectPopupAllLayers:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_0

    .line 1746
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1748
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTabletDevice()Z
    .locals 1

    .prologue
    .line 2605
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v0

    return v0
.end method

.method protected isTraceComposingText()Z
    .locals 2

    .prologue
    .line 2531
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentWordCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    .line 2532
    .local v0, "currentSource":Lcom/nuance/input/swypecorelib/Candidates$Source;
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->hasActiveInput()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsingVietnameseNationalInputMode()Z
    .locals 1

    .prologue
    .line 3119
    const/4 v0, 0x0

    return v0
.end method

.method public isUsingVietnameseTelexInputMode()Z
    .locals 1

    .prologue
    .line 3115
    const/4 v0, 0x0

    return v0
.end method

.method public isValidBuild()Z
    .locals 1

    .prologue
    .line 3320
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v0

    return v0
.end method

.method public isVerticalDragAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 427
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isFullScreenHandWritingView()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isNormalTextInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 428
    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 427
    goto :goto_0

    :cond_1
    move v0, v1

    .line 428
    goto :goto_1
.end method

.method protected learnNewWords()V
    .locals 6

    .prologue
    .line 1811
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1812
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-nez v1, :cond_1

    .line 1822
    :cond_0
    :goto_0
    return-void

    .line 1817
    :cond_1
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 1818
    .local v0, "extractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1819
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v5, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 1820
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1819
    invoke-virtual {v2, v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->noteWordDone(Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public loadKeyboardGesture()V
    .locals 3

    .prologue
    .line 3386
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    .line 3388
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->isGestureLoaded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3390
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getGestureManager()Lcom/nuance/swype/input/GestureManager;

    move-result-object v0

    .line 3391
    .local v0, "gestureManager":Lcom/nuance/swype/input/GestureManager;
    invoke-virtual {v0}, Lcom/nuance/swype/input/GestureManager;->loadGestures()Z

    .line 3392
    invoke-virtual {v0}, Lcom/nuance/swype/input/GestureManager;->getGestures()Ljava/util/List;

    move-result-object v1

    .line 3393
    .local v1, "gestures":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v2, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->loadGestures(Ljava/util/List;)Z

    .line 3395
    .end local v0    # "gestureManager":Lcom/nuance/swype/input/GestureManager;
    .end local v1    # "gestures":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/XT9CoreInput$Gesture;>;"
    :cond_0
    return-void
.end method

.method public markActiveWordUsedIfAny()V
    .locals 0

    .prologue
    .line 2632
    return-void
.end method

.method public moveCursorToMiddle(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 3127
    return-void
.end method

.method public onApplicationUnbind()V
    .locals 1

    .prologue
    .line 1720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mStarted:Z

    .line 1721
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->closing()V

    .line 1723
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->cancelSpeech()V

    .line 1726
    :cond_0
    return-void
.end method

.method public onBeginDrag()V
    .locals 4

    .prologue
    .line 3398
    sget-object v0, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onBeginDrag(): XXX"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3399
    invoke-super {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->onBeginDrag()V

    .line 3400
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->dismissEmojiPopup()V

    .line 3401
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 3402
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getEmojiInputViewController()Lcom/nuance/swype/input/emoji/EmojiInputController;

    move-result-object v0

    .line 3403
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->dismissSkinTonePopup()V

    .line 3404
    return-void
.end method

.method public onCancelNonEditStateRecaptureViaCharKey(C)V
    .locals 0
    .param p1, "ch"    # C

    .prologue
    .line 2775
    return-void
.end method

.method public onCancelSpeech()V
    .locals 2

    .prologue
    .line 2711
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2712
    .local v0, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v0, :cond_0

    .line 2713
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 2714
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->finishComposingText()Z

    .line 2715
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2716
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/InputView;->setLastInput(I)V

    .line 2717
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 2719
    :cond_0
    return-void
.end method

.method public onCandidatesUpdated(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 0
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 2156
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/inputmethod/InputConnection;)V
    .locals 10
    .param p1, "prev"    # Landroid/content/res/Configuration;
    .param p2, "current"    # Landroid/content/res/Configuration;
    .param p3, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2722
    const/4 v3, 0x0

    .line 2723
    .local v3, "orientationChanged":Z
    const/4 v0, 0x0

    .line 2724
    .local v0, "densityChanged":Z
    if-eqz p1, :cond_0

    .line 2725
    invoke-virtual {p2, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 2726
    .local v1, "diffMask":I
    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_4

    move v3, v4

    .line 2727
    :goto_0
    and-int/lit16 v6, v1, 0x1000

    if-eqz v6, :cond_5

    move v0, v4

    .line 2729
    .end local v1    # "diffMask":I
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 2730
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getKeyboardManager()Lcom/nuance/swype/input/KeyboardManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardManager;->evictAll()V

    .line 2732
    :cond_1
    iget v6, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v6, v9, :cond_6

    move v2, v4

    .line 2734
    .local v2, "hardKeyboardHidden":Z
    :goto_2
    sget-object v6, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v9, [Ljava/lang/Object;

    const-string/jumbo v8, "orientationChanged = "

    aput-object v8, v7, v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2735
    sget-object v6, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v9, [Ljava/lang/Object;

    const-string/jumbo v8, "hardKeyboardHidden = "

    aput-object v8, v7, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2736
    sget-object v6, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v9, [Ljava/lang/Object;

    const-string/jumbo v8, "composingSpeechText.length() = "

    aput-object v8, v7, v5

    iget-object v8, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2738
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v6, :cond_3

    .line 2739
    if-nez v2, :cond_7

    .line 2740
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v6}, Lcom/nuance/swype/input/SpeechWrapper;->stopSpeech()V

    .line 2745
    :cond_2
    :goto_3
    if-eqz p3, :cond_3

    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 2746
    if-eqz v2, :cond_8

    .line 2747
    sget-object v6, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "cursor onConfigurationChanged"

    aput-object v7, v4, v5

    invoke-interface {v6, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2748
    invoke-interface {p3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2754
    :cond_3
    :goto_4
    return-void

    .end local v2    # "hardKeyboardHidden":Z
    .restart local v1    # "diffMask":I
    :cond_4
    move v3, v5

    .line 2726
    goto :goto_0

    :cond_5
    move v0, v5

    .line 2727
    goto :goto_1

    .end local v1    # "diffMask":I
    :cond_6
    move v2, v5

    .line 2732
    goto :goto_2

    .line 2741
    .restart local v2    # "hardKeyboardHidden":Z
    :cond_7
    if-eqz v3, :cond_2

    .line 2742
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v6}, Lcom/nuance/swype/input/SpeechWrapper;->pauseSpeech()V

    goto :goto_3

    .line 2749
    :cond_8
    if-eqz v3, :cond_3

    .line 2750
    const-string/jumbo v5, ""

    invoke-interface {p3, v5, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_4
.end method

.method public onDoubleTap()Z
    .locals 1

    .prologue
    .line 2311
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    .line 2312
    const/4 v0, 0x0

    return v0
.end method

.method public onHandleUdbWordRemoval(Ljava/lang/String;)V
    .locals 0
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 2599
    return-void
.end method

.method public onHardKeyText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2970
    return-void
.end method

.method public onItemClick(Landroid/view/View;IZ)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "isLongClick"    # Z

    .prologue
    .line 3603
    sget-object v0, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onItemClick()"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "called >>>>>: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3604
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/InputView;->setSelectedSkinTone(I)V

    .line 3605
    return-void
.end method

.method public onMultitapTimeout()V
    .locals 0

    .prologue
    .line 1108
    return-void
.end method

.method public onPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 1
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 2143
    const/4 v0, 0x0

    return v0
.end method

.method public onPressMoveCandidate(FFF)V
    .locals 0
    .param p1, "xPos"    # F
    .param p2, "yPos"    # F
    .param p3, "xOffset"    # F

    .prologue
    .line 2152
    return-void
.end method

.method public onPressReleaseCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 1
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 2147
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 3
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 2128
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    .line 2129
    .local v0, "source":Lcom/nuance/input/swypecorelib/Candidates$Source;
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->EMOJEENIE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_1

    .line 2130
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->EMOJEENIE:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    .line 2134
    :goto_0
    invoke-static {v1}, Lcom/nuance/swype/usagedata/UsageData;->recordEmojiSelected(Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;)V

    .line 2138
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 2133
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->isLikelyEmoji(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2134
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->NWP:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->SHORTCUT:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    goto :goto_0
.end method

.method public onSingleTap(ZZ)Z
    .locals 1
    .param p1, "shouldResyncCache"    # Z
    .param p2, "orientationChanged"    # Z

    .prologue
    .line 2304
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    .line 2305
    const/4 v0, 0x0

    return v0
.end method

.method public onSpeechPaused()V
    .locals 0

    .prologue
    .line 2164
    return-void
.end method

.method public onSpeechResumed()V
    .locals 0

    .prologue
    .line 2172
    return-void
.end method

.method public onSpeechStarted()V
    .locals 0

    .prologue
    .line 2160
    return-void
.end method

.method public onSpeechStopped()V
    .locals 0

    .prologue
    .line 2168
    return-void
.end method

.method public onSpeechUpdate(Ljava/lang/CharSequence;ZZ)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isOnlyToCommitFinal"    # Z
    .param p3, "isFinal"    # Z

    .prologue
    .line 942
    return-void
.end method

.method public onSpeechViewDismissed()V
    .locals 1

    .prologue
    .line 2179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputView;->preProcessOnSpeechDictation:Z

    .line 2180
    return-void
.end method

.method public onSpeechViewShowedUp()V
    .locals 1

    .prologue
    .line 2175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputView;->preProcessOnSpeechDictation:Z

    .line 2176
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 933
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 1712
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mStarted:Z

    if-eqz v0, :cond_0

    .line 1713
    invoke-super {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1716
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onUpdateSpeechText(Ljava/lang/CharSequence;ZZ)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isStreaming"    # Z
    .param p3, "isFinal"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2661
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2662
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_3

    .line 2663
    iget-boolean v1, p0, Lcom/nuance/swype/input/InputView;->preProcessOnSpeechDictation:Z

    if-eqz v1, :cond_0

    .line 2664
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->preUpdateSpeechText()V

    .line 2665
    iput-boolean v6, p0, Lcom/nuance/swype/input/InputView;->preProcessOnSpeechDictation:Z

    .line 2667
    :cond_0
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2668
    invoke-static {v0, p1}, Lcom/nuance/speech/SpeechResultTextBuffer;->onResultCheckLeadingSpace(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2669
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2670
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2672
    sget-object v1, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "speech result: "

    aput-object v3, v2, v6

    aput-object p1, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2673
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v1, :cond_1

    .line 2674
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onUpdateSpeechText(Ljava/lang/CharSequence;ZZ)V

    .line 2676
    :cond_1
    if-eqz p2, :cond_5

    .line 2677
    if-eqz p3, :cond_4

    iget-boolean v1, p0, Lcom/nuance/swype/input/InputView;->isExploredByTouch:Z

    if-eqz v1, :cond_4

    .line 2679
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2680
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->italicSpan:Landroid/text/style/StyleSpan;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x121

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2682
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2691
    :goto_0
    if-eqz p3, :cond_2

    .line 2692
    sget-object v1, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "cursor onUpdateSpeechText"

    aput-object v3, v2, v6

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2693
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2694
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2705
    :cond_2
    :goto_1
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/InputView;->setLastInput(I)V

    .line 2706
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2708
    :cond_3
    return-void

    .line 2684
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2688
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 2697
    :cond_5
    if-eqz p3, :cond_6

    iget-boolean v1, p0, Lcom/nuance/swype/input/InputView;->isExploredByTouch:Z

    if-eqz v1, :cond_6

    .line 2699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_1

    .line 2701
    :cond_6
    invoke-interface {v0, p1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_1
.end method

.method protected pauseSpeech()V
    .locals 1

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->pauseSpeech()V

    .line 1918
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_1

    .line 1919
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->closeDictationLanguageMenu()V

    .line 1921
    :cond_1
    return-void
.end method

.method public playSoundIfTextIsEmpty()V
    .locals 1

    .prologue
    .line 3002
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->IsTextFieldEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3003
    invoke-direct {p0}, Lcom/nuance/swype/input/InputView;->playEndOfListSound()V

    .line 3005
    :cond_0
    return-void
.end method

.method public preUpdateSpeechText()V
    .locals 0

    .prologue
    .line 2658
    return-void
.end method

.method public promptUserToUpdateLanguage()V
    .locals 2

    .prologue
    .line 3052
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3053
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x76

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3054
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3055
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3056
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3058
    :cond_0
    return-void
.end method

.method protected readNextWordPredictionSettings()V
    .locals 1

    .prologue
    .line 1532
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mTextInputPredictionOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mInURLEmail:Z

    if-nez v0, :cond_0

    .line 1533
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isNextWordPredictionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mNextWordPredictionOn:Z

    .line 1534
    return-void

    .line 1533
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reconstructWord()V
    .locals 0

    .prologue
    .line 3044
    return-void
.end method

.method public recordStartTimeDisplaySelection()V
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/stats/StatisticsManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager;

    move-result-object v0

    .line 851
    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swype/input/InputView;->startTimeDisplaySelectionList:J

    .line 856
    :cond_0
    return-void
.end method

.method public recordUsedTimeReselectDisplaySelectionList()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 888
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v0

    .line 889
    .local v0, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v0, :cond_0

    .line 890
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/nuance/swype/input/InputView;->startTimeDisplaySelectionList:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 892
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->usedTimeListReselectDisplaySelection:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nuance/swype/input/InputView;->startTimeDisplaySelectionList:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    iput-wide v6, p0, Lcom/nuance/swype/input/InputView;->startTimeDisplaySelectionList:J

    .line 895
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->usedTimeListReselectDisplaySelection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    .line 896
    invoke-virtual {v0}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Reselect "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Total:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->usedTimeListReselectDisplaySelection:Ljava/util/List;

    .line 898
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Average:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->usedTimeListReselectDisplaySelection:Ljava/util/List;

    .line 900
    invoke-static {v4}, Lcom/nuance/swype/util/LogManager;->calculateAverage(Ljava/util/List;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 896
    invoke-interface {v1, v2, v3}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordUsedTimeSelectionListDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->usedTimeListReselectDisplaySelection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 906
    :cond_0
    return-void
.end method

.method public recordUsedTimeTapDisplaySelectionList()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 863
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v0

    .line 864
    .local v0, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v0, :cond_0

    .line 865
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/nuance/swype/input/InputView;->startTimeDisplaySelectionList:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 867
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nuance/swype/input/InputView;->startTimeDisplaySelectionList:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    iput-wide v6, p0, Lcom/nuance/swype/input/InputView;->startTimeDisplaySelectionList:J

    .line 870
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    .line 871
    invoke-virtual {v0}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Tap "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Total:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    .line 873
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Average:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    .line 875
    invoke-static {v4}, Lcom/nuance/swype/util/LogManager;->calculateAverage(Ljava/util/List;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 871
    invoke-interface {v1, v2, v3}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordUsedTimeSelectionListDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 881
    :cond_0
    return-void
.end method

.method public refreshBTAutoCorrection()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1506
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 1507
    .local v0, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getAutoCorrection()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->isNameField()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/nuance/swype/input/InputView;->autoCorrectionEnabled:Z

    .line 1508
    iget-boolean v1, p0, Lcom/nuance/swype/input/InputView;->autoCorrectionEnabled:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/nuance/swype/input/InputView;->mWordCompletionPoint:I

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputView;->mKeyboardInputSuggestionOn:Z

    .line 1510
    return-void

    :cond_2
    move v1, v3

    .line 1507
    goto :goto_0
.end method

.method public removeAllMessages()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public removeHardKeyboardRecaptureCandidates()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2929
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 2930
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2931
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 2933
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_1

    .line 2934
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 2935
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_2

    .line 2942
    :cond_1
    :goto_0
    return v2

    .line 2939
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    goto :goto_0
.end method

.method public requestAutospaceOverrideTo(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 3076
    return-void
.end method

.method protected resetAutoSpace()V
    .locals 2

    .prologue
    .line 1402
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isAutoSpaceSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1406
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/nuance/swype/input/InputView;->mAutoSpace:Z

    .line 1408
    return-void

    .line 1405
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 1406
    .local v0, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getAutoSpace()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/InputView;->notATextInputField(Lcom/nuance/swype/input/InputFieldInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public resumeSpeech()V
    .locals 4

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_1

    .line 1883
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->isResumable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1884
    sget-object v0, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "cursor resumeSpeech"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1885
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->flushCurrentActiveWord()V

    .line 1887
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/nuance/swype/input/SpeechWrapper;->resumeSpeech(Lcom/nuance/swype/input/InputView;Landroid/graphics/Rect;)V

    .line 1889
    :cond_1
    return-void
.end method

.method public selectDefaultCompostingText()V
    .locals 4

    .prologue
    .line 2477
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_0

    .line 2478
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateIndex()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->wordSelected(IZ)V

    .line 2480
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2481
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 2482
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2483
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2484
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 2485
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2487
    :cond_1
    return-void
.end method

.method public selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V
    .locals 0
    .param p1, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 2365
    return-void
.end method

.method public sendBackspace(I)V
    .locals 1
    .param p1, "repeatedCount"    # I

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 1369
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    .line 1370
    return-void
.end method

.method public sendKeyChar(C)V
    .locals 1
    .param p1, "character"    # C

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IME;->sendCharOrPerformAction(C)V

    .line 1391
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    .line 1392
    return-void
.end method

.method public sendKeyToApplication(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 1357
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1358
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1359
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1360
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1362
    :cond_0
    return-void
.end method

.method public sendSpace()V
    .locals 1

    .prologue
    .line 1395
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->sendKeyChar(C)V

    .line 1396
    return-void
.end method

.method protected sendTextAsKeys(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1378
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v2, :cond_0

    .line 1379
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1380
    .local v1, "textLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1381
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IME;->sendKeyChar(C)V

    .line 1380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1384
    .end local v0    # "i":I
    .end local v1    # "textLength":I
    :cond_0
    return-void
.end method

.method protected setCandidateListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v0, :cond_0

    .line 2078
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/CandidatesListView;->setCandidateListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V

    .line 2080
    :cond_0
    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 1305
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isImeInUse()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IME;->setCandidatesViewShown(Z)V

    .line 1307
    :cond_0
    return-void

    .line 1305
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContextWindowShowing(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 3111
    iput-boolean p1, p0, Lcom/nuance/swype/input/InputView;->mContextWindowShowing:Z

    .line 3112
    return-void
.end method

.method public setCurrentInputLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 0
    .param p1, "inputLanguage"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 301
    return-void
.end method

.method public setCurrentSkinTone()V
    .locals 4

    .prologue
    .line 3649
    sget-object v0, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onPressReleaseCandidate()"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, " setCurrentSkinTone called ::"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3650
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isShowingSkinTonePopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3651
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->getDefaultSkinTonePopupView()V

    .line 3654
    :cond_0
    return-void
.end method

.method public setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V
    .locals 0
    .param p1, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 2370
    return-void
.end method

.method public setEditState(Lcom/nuance/swype/input/EditState;)V
    .locals 0
    .param p1, "editState"    # Lcom/nuance/swype/input/EditState;

    .prologue
    .line 1601
    iput-object p1, p0, Lcom/nuance/swype/input/InputView;->mEditState:Lcom/nuance/swype/input/EditState;

    .line 1602
    return-void
.end method

.method public setHardKeyboardSystemSettings()V
    .locals 0

    .prologue
    .line 2967
    return-void
.end method

.method public setHardkeyLayoutID(I)V
    .locals 0
    .param p1, "layoutid"    # I

    .prologue
    .line 2918
    iput p1, p0, Lcom/nuance/swype/input/InputView;->mHardkeyKeyboardLayoutId:I

    .line 2919
    return-void
.end method

.method protected setInlineWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 3048
    return-void
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 2
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    .line 2238
    invoke-super {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 2239
    const v0, 0xaa39

    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/KeyboardEx;->findKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->selectKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2240
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->selectKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->selectKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2241
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isMiniKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2242
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->selectKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 2248
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->syncCandidateDisplayStyleToMode()V

    .line 2250
    return-void

    .line 2244
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->selectKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0
.end method

.method protected setKeyboardDatabaseForDockChanged()V
    .locals 4

    .prologue
    .line 2770
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getKeyboardManager()Lcom/nuance/swype/input/KeyboardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardManager;->getKeyboardId()I

    move-result v0

    .line 2771
    .local v0, "kdbId":I
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setKeyboardDatabase(IIZ)Z

    .line 2772
    return-void
.end method

.method public setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .locals 3
    .param p1, "layer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 1733
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 1741
    :cond_0
    :goto_0
    return-void

    .line 1736
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v0

    .line 1737
    .local v0, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v0, :cond_0

    .line 1738
    invoke-virtual {v0}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordKeyboardLayerChange(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    goto :goto_0
.end method

.method public setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)V
    .locals 4
    .param p1, "coreInput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .prologue
    const/4 v3, 0x0

    .line 3095
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    .line 3096
    .local v0, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v0, v1, :cond_2

    .line 3098
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nuance/swype/input/DatabaseConfig;->removeIncompatibleDBFiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 3100
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    .line 3101
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v0, v1, :cond_2

    .line 3103
    :cond_1
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputView;->isLDBCompatible:Z

    .line 3104
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->promptUserToUpdateLanguage()V

    .line 3105
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/InputView;->toggleKeyboard(Z)V

    .line 3108
    :cond_2
    return-void
.end method

.method public setLastInput(I)V
    .locals 0
    .param p1, "lastInput"    # I

    .prologue
    .line 2188
    iput p1, p0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    .line 2189
    return-void
.end method

.method public setNotMatchToolTipSuggestion()V
    .locals 3

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 2115
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getToolTips()Lcom/nuance/swype/input/ToolTips;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/ToolTips;->createNoMatchTip()Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/CandidatesListView$Format;->NONE:Lcom/nuance/swype/input/CandidatesListView$Format;

    .line 2114
    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/CandidatesListView;->setSuggestions(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 2117
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->syncCandidateDisplayStyleToMode()V

    .line 2118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->setCandidatesViewShown(Z)V

    .line 2119
    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V
    .locals 3
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 1699
    move-object v0, p1

    .line 1700
    .local v0, "decorated":Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->isStatisticsCollectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1701
    invoke-virtual {p1}, Lcom/nuance/swype/input/IME;->getEditState()Lcom/nuance/swype/input/EditState;

    move-result-object v1

    .line 1702
    .local v1, "state":Lcom/nuance/swype/input/EditState;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    if-eqz v2, :cond_0

    .line 1703
    check-cast v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    .line 1704
    .end local v1    # "state":Lcom/nuance/swype/input/EditState;
    invoke-virtual {v1, v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->watchOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    .line 1707
    :cond_0
    invoke-super {p0, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 1708
    return-void
.end method

.method protected setReconstructWord(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    .prologue
    .line 3040
    return-void
.end method

.method public setSelectedSkinTone(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v8, 0x1

    .line 3609
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/emoji/EmojiCacheManager;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/swype/input/InputView;->emojiCacheManager:Lcom/nuance/swype/input/emoji/EmojiCacheManager;

    .line 3610
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    .line 3612
    .local v4, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->skinToneList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/Emoji;

    .line 3613
    .local v0, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    if-nez v0, :cond_1

    .line 3647
    :cond_0
    :goto_0
    return-void

    .line 3618
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 3619
    .local v2, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiDisplayCode()Ljava/lang/String;

    move-result-object v5

    .line 3620
    .local v5, "wordSelected":Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v5, :cond_2

    .line 3621
    invoke-virtual {v2, v5, v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 3624
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    .line 3625
    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getEmojiInputViewController()Lcom/nuance/swype/input/emoji/EmojiInputController;

    move-result-object v6

    .line 3626
    invoke-virtual {v6, v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->addEmojiInRecentCat(Lcom/nuance/swype/input/emoji/Emoji;)Z

    move-result v6

    .line 3627
    if-eqz v6, :cond_3

    .line 3628
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiCode()Ljava/lang/String;

    move-result-object v1

    .line 3629
    .local v1, "emojiCode":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinType()Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 3630
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinType()Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->getSkinValue()I

    move-result v3

    .line 3631
    .local v3, "skinToneValue":I
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->emojiCacheManager:Lcom/nuance/swype/input/emoji/EmojiCacheManager;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->addObjectToCache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3632
    invoke-virtual {v4, v1, v3}, Lcom/nuance/swype/input/UserPreferences;->setCachedEmojiSkinTone(Ljava/lang/String;I)V

    .line 3635
    .end local v1    # "emojiCode":Ljava/lang/String;
    .end local v3    # "skinToneValue":I
    :cond_3
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v6, :cond_4

    .line 3636
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v6, v8}, Lcom/nuance/swype/input/CandidatesListView;->setHorizontalScroll(Z)V

    .line 3639
    :cond_4
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v6, :cond_5

    .line 3640
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v6, v8}, Lcom/nuance/swype/input/CandidatesListView;->setHorizontalScroll(Z)V

    .line 3643
    :cond_5
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v6, :cond_0

    .line 3644
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setHorizontalScroll(Z)V

    goto :goto_0
.end method

.method public setSpeechViewHost()V
    .locals 1

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 1901
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/SpeechWrapper;->setHost(Lcom/nuance/swype/input/InputView;)V

    .line 1903
    :cond_0
    return-void
.end method

.method public setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V
    .locals 1
    .param p1, "listener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p3, "format"    # Lcom/nuance/swype/input/CandidatesListView$Format;

    .prologue
    .line 2054
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isActiveWCL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2058
    :goto_0
    return-void

    .line 2057
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->setCommonSuggestion(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    goto :goto_0
.end method

.method public setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Ljava/util/List;ILcom/nuance/input/swypecorelib/Candidates$Source;)V
    .locals 2
    .param p1, "listener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    .param p3, "defaultWordIndex"    # I
    .param p4, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/swype/input/CandidatesListView$CandidateListener;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I",
            "Lcom/nuance/input/swypecorelib/Candidates$Source;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2084
    .local p2, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-static {p2, p3, p4}, Lcom/nuance/input/swypecorelib/Candidates;->createCandidates(Ljava/util/List;ILcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 2086
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->getWordListFormat(Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/swype/input/CandidatesListView$Format;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/nuance/swype/input/InputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 2087
    return-void
.end method

.method public setSwypeKeytoolTipSuggestion()V
    .locals 3

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1996
    :cond_0
    :goto_0
    return-void

    .line 1991
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 1992
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getToolTips()Lcom/nuance/swype/input/ToolTips;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/ToolTips;->createSwypeKeyTip()Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/CandidatesListView$Format;->NONE:Lcom/nuance/swype/input/CandidatesListView$Format;

    .line 1991
    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/CandidatesListView;->setSuggestions(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1994
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->syncCandidateDisplayStyleToMode()V

    .line 1995
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method public shouldDisableInput(I)Z
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 2765
    const/4 v0, 0x0

    return v0
.end method

.method public shouldHandleKeyViaIME(I)Z
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 3130
    const/16 v0, 0xb54

    if-eq p1, v0, :cond_0

    const/16 v0, 0x27

    if-ne p1, v0, :cond_1

    .line 3132
    :cond_0
    const/4 v0, 0x1

    .line 3134
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldSelectDefaultCandidate()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2346
    iget-boolean v4, p0, Lcom/nuance/swype/input/InputView;->mTextInputPredictionOn:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isEmptyCandidateList()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 2347
    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 2348
    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 2349
    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v4, v5, :cond_1

    move v0, v2

    .line 2350
    .local v0, "bVal":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 2351
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 2352
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v1, :cond_0

    .line 2353
    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    and-int/lit8 v0, v2, 0x1

    .line 2356
    .end local v1    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_0
    return v0

    .end local v0    # "bVal":Z
    :cond_1
    move v0, v3

    .line 2349
    goto :goto_0

    .restart local v0    # "bVal":Z
    .restart local v1    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_2
    move v2, v3

    .line 2353
    goto :goto_1
.end method

.method public shouldShowTips()Z
    .locals 1

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isTraceInputEnabled()Z

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
    .locals 0

    .prologue
    .line 2977
    return-void
.end method

.method public showNextWordPrediction()V
    .locals 2

    .prologue
    .line 3015
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mNextWordPredictionOn:Z

    if-nez v0, :cond_1

    .line 3017
    sget-object v0, Lcom/nuance/swype/input/CandidatesListView$Format;->DEFAULT:Lcom/nuance/swype/input/CandidatesListView$Format;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->updateSuggestionsEmoji(Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 3025
    :cond_0
    :goto_0
    return-void

    .line 3020
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->updateWordContext()V

    .line 3021
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/InputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I

    .line 3022
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->isEmojiKeyboardShown:Z

    if-nez v0, :cond_0

    .line 3023
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->dismissPopupKeyboard()V

    goto :goto_0
.end method

.method public showPlayStore()V
    .locals 4

    .prologue
    .line 3300
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/BuildInfo;->getPaidVersionUrl()I

    move-result v1

    .line 3301
    .local v1, "urlId":I
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v3, v1}, Lcom/nuance/swype/input/IMEApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3302
    .local v0, "marketIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3303
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/IMEApplication;->startActivity(Landroid/content/Intent;)V

    .line 3304
    return-void
.end method

.method public showRemoveUdbWordDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 2566
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    invoke-virtual {v1}, Lcom/nuance/swype/input/RemoveUdbWordDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2574
    :goto_0
    return-void

    .line 2570
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2571
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/nuance/swype/input/RemoveUdbWordDialog;

    invoke-direct {v1, p0, p1}, Lcom/nuance/swype/input/RemoveUdbWordDialog;-><init>(Lcom/nuance/swype/input/RemoveUdbWordDialog$RemoveUdbWordListener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    .line 2572
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/RemoveUdbWordDialog;->createDialog(Landroid/content/Context;)V

    .line 2573
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/RemoveUdbWordDialog;->show(Landroid/os/IBinder;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public showRemoveUdbWordDialog(Ljava/lang/String;I)V
    .locals 0
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "wordSource"    # I

    .prologue
    .line 2582
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/InputView;->showRemoveUdbWordDialog(Ljava/lang/String;)V

    .line 2583
    return-void
.end method

.method public showSkinTonePopup(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 1
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 3461
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    if-eqz v0, :cond_0

    .line 3462
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mEnableEmojiChoiceList:Z

    if-eqz v0, :cond_1

    .line 3463
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/InputView;->initSkinPopupView(Landroid/view/View;)V

    .line 3468
    :goto_0
    invoke-direct {p0, p1, p2, p0}, Lcom/nuance/swype/input/InputView;->setSkinToneAdapter(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;Landroid/view/View;)V

    .line 3470
    :cond_0
    return-void

    .line 3465
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->wordListHolder:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/InputView;->initSkinPopupView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showSkinTonePopupForCJK(Lcom/nuance/swype/input/emoji/EmojiInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "emojiInfo"    # Lcom/nuance/swype/input/emoji/EmojiInfo;
    .param p2, "selectedEmoji"    # Ljava/lang/String;
    .param p3, "original_emoji"    # Ljava/lang/String;

    .prologue
    .line 3474
    sget-object v0, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "showSkinTonePopupForCJK()"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " called ::  selectedEmoji  :: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , original_emoji :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3477
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 3485
    :cond_0
    :goto_0
    return-void

    .line 3481
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    if-eqz v0, :cond_0

    .line 3482
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/InputView;->initSkinPopupView(Landroid/view/View;)V

    .line 3483
    invoke-direct {p0, p1, p2, p3, p0}, Lcom/nuance/swype/input/InputView;->setSkinToneAdapter(Lcom/nuance/swype/input/emoji/EmojiInfo;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0
.end method

.method public showThemeStore()V
    .locals 2

    .prologue
    .line 3295
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showMainSettings()V

    .line 3296
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->themeStoreWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/swype/input/InputView$WclPrompt;->hasVisitedStore:Z

    .line 3297
    return-void
.end method

.method public showTrialExpireWclMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputViewType"    # Ljava/lang/String;

    .prologue
    .line 3261
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isTrialExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3262
    new-instance v0, Lcom/nuance/swype/input/InputView$WclPrompt;

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/InputView$WclPrompt;-><init>(Lcom/nuance/swype/input/InputView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->trialWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;

    .line 3264
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->trialWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;

    sget v1, Lcom/nuance/swype/input/R$string;->trial_period_expiration_msg:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView$WclPrompt;->setMessage(I)V

    .line 3265
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->trialWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/InputView$WclPrompt;->showMessage(Ljava/lang/String;)V

    .line 3268
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/InputView;->refreshEmojiChoiceListEnable()V

    .line 3269
    return-void
.end method

.method public showUserThemeWclMessage(Landroid/os/Handler;)V
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x1

    .line 3272
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->isDownloadableThemesEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3273
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getStartupSequenceInfo()Lcom/nuance/swype/startup/StartupSequenceInfo;

    move-result-object v1

    .line 3275
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isInputFieldStartupOrPassword(Landroid/view/inputmethod/EditorInfo;Lcom/nuance/swype/input/InputFieldInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3292
    :cond_0
    :goto_0
    return-void

    .line 3278
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->isWCLMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3279
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1, v4}, Lcom/nuance/swype/input/IMEApplication;->setUserTapKey(Z)V

    .line 3281
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 3282
    .local v0, "prefs":Lcom/nuance/swype/input/AppPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->isNewThemeAvailableInStore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3283
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->isUserVisitedStore()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->isWCLMessage()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3284
    new-instance v1, Lcom/nuance/swype/input/InputView$WclPrompt;

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/nuance/swype/input/InputView$WclPrompt;-><init>(Lcom/nuance/swype/input/InputView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->themeStoreWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;

    .line 3285
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->themeStoreWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;

    sget v2, Lcom/nuance/swype/input/R$string;->notification_new_themes_general:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputView$WclPrompt;->setMessage(I)V

    .line 3286
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->themeStoreWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;

    const/16 v2, 0x7d

    invoke-virtual {v1, p1, v2}, Lcom/nuance/swype/input/InputView$WclPrompt;->wclMessageHandler(Landroid/os/Handler;I)V

    goto :goto_0

    .line 3288
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1, v4}, Lcom/nuance/swype/input/IMEApplication;->setUserTapKey(Z)V

    goto :goto_0
.end method

.method public speechChooseCandidate(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 1975
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/SpeechWrapper;->speechChooseCandidate(I)V

    .line 1977
    :cond_0
    return-void
.end method

.method public startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V
    .locals 4
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 616
    iput-boolean v1, p0, Lcom/nuance/swype/input/InputView;->mStarted:Z

    .line 619
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->undoAcceptHandler:Lcom/nuance/swype/input/UndoAcceptHandler;

    invoke-virtual {v0, v3, v3, v2}, Lcom/nuance/swype/input/UndoAcceptHandler;->onAcceptCandidate(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 621
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->getEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v0, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    .line 622
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->getEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput v0, p0, Lcom/nuance/swype/input/InputView;->endSelection:I

    .line 624
    iput-object p1, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 625
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 626
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isCompletionField()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mCompletionOn:Z

    .line 628
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNameField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isCompletionField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPostalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNoSuggestionOnField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isFieldWithFilterList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isWebSearchField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldTreatEditTextAsWebSearchField()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mPreferExplicit:Z

    .line 632
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    iput-boolean v2, p0, Lcom/nuance/swype/input/InputView;->mInURLEmail:Z

    .line 634
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->multitapClearInvalid()V

    .line 637
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->checkAccessibility()V

    .line 639
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/KeyboardManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/KeyboardManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardManager;->forceSetKeyboardDatabase(Z)V

    .line 640
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/InputView;->readSettings(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 642
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 643
    if-eqz v0, :cond_3

    .line 646
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    .line 647
    if-nez v0, :cond_3

    .line 649
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->updateExtractedText()V

    .line 653
    :cond_3
    if-eqz p2, :cond_7

    .line 655
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->pauseSpeech()V

    .line 659
    :goto_2
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getShiftGestureOffset()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->setShiftGestureOffsetValue(I)V

    .line 660
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getEmojiInputViewController()Lcom/nuance/swype/input/emoji/EmojiInputController;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 663
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/InputView;->setCandidatesViewShown(Z)V

    .line 665
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 626
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 631
    goto :goto_1

    .line 657
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->stopSpeech()V

    goto :goto_2
.end method

.method public final startSpeech()V
    .locals 4

    .prologue
    .line 1839
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getSpeechProvider()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 1841
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.RECORD_AUDIO"

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 1843
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/nuance/swype/input/PermissionRequestActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1845
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1846
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/IME;->startActivity(Landroid/content/Intent;)V

    .line 1866
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 1839
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1851
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isValidBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1856
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 1857
    .local v1, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1858
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1859
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->cnNwDlgListener:Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;

    invoke-static {v2, v3}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/InputView;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    .line 1860
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IME;->attachDialog(Landroid/app/Dialog;)V

    .line 1861
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 1864
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/InputView;->actualStartSpeech()V

    goto :goto_1
.end method

.method protected stopSpeech()V
    .locals 1

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 1907
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->stopSpeech()V

    .line 1909
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_1

    .line 1910
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->closeDictationLanguageMenu()V

    .line 1912
    :cond_1
    return-void
.end method

.method public switchKeyboardDockMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V
    .locals 8
    .param p1, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 469
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getInvalidDockModes()Ljava/util/EnumSet;

    move-result-object v1

    .line 470
    .local v1, "invalidDockModes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    .line 471
    .local v0, "currentMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    sget-object v2, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "switchKeyboardDockMode(): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 472
    invoke-virtual {v1, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    sget-object v2, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "switchKeyboardDockMode(): invalid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 474
    move-object p1, v0

    .line 476
    :cond_0
    if-eq p1, v0, :cond_1

    .line 477
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/InputView;->setNewDockModePref(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 478
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v3

    .line 479
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    .line 478
    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 488
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v3

    .line 489
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    .line 488
    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 495
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 496
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/UserPreferences;->setKeyboardDockingMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 497
    return-void
.end method

.method public syncCandidateDisplayStyleToMode()V
    .locals 4

    .prologue
    .line 2012
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    .line 2014
    .local v1, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    .line 2017
    :goto_0
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v2, v3, :cond_4

    const/4 v0, 0x1

    .line 2018
    .local v0, "isSplit":Z
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v2, :cond_0

    .line 2019
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/CandidatesListView;->setFullScroll(Z)V

    .line 2020
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/CandidatesListView;->setAlignLeft(Z)V

    .line 2021
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 2024
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v2, :cond_1

    .line 2025
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/CandidatesListView;->setFullScroll(Z)V

    .line 2026
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/CandidatesListView;->setAlignLeft(Z)V

    .line 2027
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 2030
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_2

    .line 2031
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setFullScroll(Z)V

    .line 2032
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setAlignLeft(Z)V

    .line 2033
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    .line 2035
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->updateEmojiKeyboardPosition()V

    .line 2036
    return-void

    .line 2015
    .end local v0    # "isSplit":Z
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    goto :goto_0

    .line 2017
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public toggleKeyboard(Z)V
    .locals 1
    .param p1, "isImplicit"    # Z

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IMEHandlerManager;->fastSwitchLanguage(Z)V

    .line 1300
    :cond_0
    return-void
.end method

.method public touchMoveHandle(FFF)Z
    .locals 6
    .param p1, "xPos"    # F
    .param p2, "yPos"    # F
    .param p3, "xOffset"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3593
    sget-object v2, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "touchMoveHandle()"

    aput-object v4, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "called >>>>>: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3594
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    if-eqz v2, :cond_0

    .line 3595
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    float-to-int v2, p1

    float-to-int v3, p2

    float-to-int v4, p3

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->touchMoveHandleBySkinPopup(III)V

    .line 3598
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected triggerAutoDefaultCandidateAcceptTip()V
    .locals 2

    .prologue
    .line 2324
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->shouldShowTips()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2325
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/ToolTips;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ToolTips;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/ToolTips;->triggerAutoAcceptTip(Landroid/view/View;)V

    .line 2327
    :cond_0
    return-void
.end method

.method public triggerPasswordTip()V
    .locals 1

    .prologue
    .line 2330
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->shouldShowTips()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2331
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/ToolTips;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ToolTips;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/ToolTips;->triggerPasswordTip(Landroid/view/View;)V

    .line 2333
    :cond_0
    return-void
.end method

.method protected triggerPunctuationGestureTip()V
    .locals 1

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->shouldShowTips()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2341
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/ToolTips;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ToolTips;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/ToolTips;->triggerPunctGestureTip(Landroid/view/View;)V

    .line 2343
    :cond_0
    return-void
.end method

.method public updateCandidatesView()V
    .locals 0

    .prologue
    .line 2636
    return-void
.end method

.method public updateDockModeForHandwriting(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 7
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 432
    if-nez p1, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v5

    if-nez v5, :cond_2

    .line 438
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isNormalTextInputMode()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 440
    .local v2, "dockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :goto_1
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v5

    if-eq v5, v2, :cond_4

    move v1, v3

    .line 441
    .local v1, "dockChanged":Z
    :goto_2
    invoke-virtual {p1, v2}, Lcom/nuance/swype/input/KeyboardEx;->setKeyboardDockMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 442
    if-eqz v1, :cond_2

    .line 443
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->setKeyboardDatabaseForDockChanged()V

    .line 447
    .end local v1    # "dockChanged":Z
    .end local v2    # "dockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :cond_2
    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v5, :cond_0

    .line 448
    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 449
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    .line 451
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v5

    sget-object v6, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v5, v6, :cond_5

    .line 452
    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/view/InputContainerView;->showDragFrame(Z)V

    .line 453
    sget-object v4, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/view/InputContainerView;->setMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 458
    :goto_3
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputView;->isOnceAction:Z

    goto :goto_0

    .line 439
    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    goto :goto_1

    .restart local v2    # "dockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :cond_4
    move v1, v4

    .line 440
    goto :goto_2

    .line 455
    .end local v2    # "dockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .restart local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_5
    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/view/InputContainerView;->showDragFrame(Z)V

    .line 456
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/view/InputContainerView;->setMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    goto :goto_3
.end method

.method protected updateExtractedText()V
    .locals 7

    .prologue
    .line 1763
    iget-boolean v3, p0, Lcom/nuance/swype/input/InputView;->mStarted:Z

    if-eqz v3, :cond_0

    .line 1764
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1765
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1786
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return-void

    .line 1768
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 1769
    .local v1, "request":Landroid/view/inputmethod/ExtractedTextRequest;
    const/4 v3, 0x1

    iput v3, v1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 1770
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    .line 1773
    .local v2, "text":Landroid/view/inputmethod/ExtractedText;
    if-eqz v2, :cond_3

    .line 1774
    iget v3, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    iget v4, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v5, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v4, v5

    if-eq v3, v4, :cond_2

    .line 1775
    iget v3, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v4, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    .line 1777
    :cond_2
    iget v3, p0, Lcom/nuance/swype/input/InputView;->endSelection:I

    iget v4, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-eq v3, v4, :cond_3

    .line 1778
    iget v3, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v4, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/nuance/swype/input/InputView;->endSelection:I

    .line 1782
    :cond_3
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v3, :cond_0

    .line 1783
    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    iget-object v4, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v6, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/nuance/swype/input/SpeechWrapper;->updateText(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 1760
    return-void
.end method

.method public updateSelection(IIII[I)V
    .locals 10
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesIndices"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 736
    sget-object v0, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "updateSelection() :  method called parent"

    aput-object v5, v4, v3

    invoke-interface {v0, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 737
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/IMEApplication;->setUserTapKey(Z)V

    .line 738
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 739
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 745
    .local v8, "config":Landroid/content/res/Configuration;
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isShowCandidatesViewAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isWebSearchField()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 746
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/IME;->setCandidatesViewShown(Z)V

    goto :goto_0

    .line 750
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->cursorUpdateReceivedFromTap()Z

    move-result v9

    .line 751
    .local v9, "userTapInEditor":Z
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v9, :cond_3

    .line 752
    invoke-virtual {v1, p1, p3, p2, p4}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCursorUpdateFromKeyboard(IIII)Z

    move-result v0

    if-nez v0, :cond_4

    .line 753
    :cond_3
    if-nez v9, :cond_5

    move v0, v2

    :goto_1
    invoke-virtual {v1, p3, p4, v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->resetInternalEditingStates(IIZ)Z

    .line 755
    iget v0, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    if-eq v0, p3, :cond_6

    move v0, v2

    .line 757
    :goto_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->cursorUpdateReceivedFromSingleTap()Z

    move-result v0

    if-nez v0, :cond_4

    .line 758
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->updateShiftKeyState()V

    .line 762
    :cond_4
    iput p3, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    .line 763
    iput p4, p0, Lcom/nuance/swype/input/InputView;->endSelection:I

    .line 765
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mStarted:Z

    if-eqz v0, :cond_0

    .line 767
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 769
    iput p1, p0, Lcom/nuance/swype/input/InputView;->oldSelStartCache:I

    .line 770
    iput p2, p0, Lcom/nuance/swype/input/InputView;->oldSelEndCache:I

    .line 771
    iput p3, p0, Lcom/nuance/swype/input/InputView;->newSelStartCache:I

    .line 772
    iput p4, p0, Lcom/nuance/swype/input/InputView;->newSelEndCache:I

    .line 773
    aget v0, p5, v3

    iput v0, p0, Lcom/nuance/swype/input/InputView;->candidatesStartCache:I

    .line 774
    aget v0, p5, v2

    iput v0, p0, Lcom/nuance/swype/input/InputView;->candidatesEndCache:I

    .line 776
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    aget v6, p5, v3

    aget v7, p5, v2

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/input/SpeechWrapper;->updateSelection(Landroid/view/inputmethod/InputConnection;IIIIII)V

    goto :goto_0

    :cond_5
    move v0, v3

    .line 753
    goto :goto_1

    :cond_6
    move v0, v3

    .line 755
    goto :goto_2
.end method

.method public updateShiftKeyState()V
    .locals 0

    .prologue
    .line 2610
    return-void
.end method

.method public updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I
    .locals 1
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    .line 2291
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/InputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I
    .locals 2
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "noComposingText"    # Z

    .prologue
    .line 2279
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 2280
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->getWordListFormat(Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/swype/input/CandidatesListView$Format;

    move-result-object v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/nuance/swype/input/InputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 2281
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateSuggestionsEmoji(Lcom/nuance/swype/input/CandidatesListView$Format;)V
    .locals 0
    .param p1, "format"    # Lcom/nuance/swype/input/CandidatesListView$Format;

    .prologue
    .line 2074
    return-void
.end method

.method public updateWordContext()V
    .locals 1

    .prologue
    .line 1807
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContextBuffer()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/InputView;->setContextBuffer(Ljava/lang/CharSequence;)V

    .line 1808
    return-void
.end method

.method public useKDBHardkey(Z)V
    .locals 0
    .param p1, "isUseHardkey"    # Z

    .prologue
    .line 2912
    iput-boolean p1, p0, Lcom/nuance/swype/input/InputView;->mIsUseHardkey:Z

    .line 2913
    return-void
.end method

.method public validateComposingText(IIII[ILjava/lang/CharSequence;)Z
    .locals 11
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesIndices"    # [I
    .param p6, "composingText"    # Ljava/lang/CharSequence;

    .prologue
    .line 2387
    const/4 v7, 0x1

    .line 2388
    .local v7, "valid":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 2389
    .local v3, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-nez v3, :cond_0

    .line 2390
    const/4 v8, 0x1

    .line 2457
    :goto_0
    return v8

    .line 2395
    :cond_0
    const/4 v8, 0x1

    aget v8, p5, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    const/4 v8, 0x0

    aget v8, p5, v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    :cond_1
    const/4 v8, 0x0

    aget v8, p5, v8

    const/4 v9, 0x1

    aget v9, p5, v9

    if-ne v8, v9, :cond_2

    .line 2396
    const/4 v8, 0x1

    goto :goto_0

    .line 2397
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isHandlingTrace()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getLastInput()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 2398
    invoke-virtual {v3, p1, p3, p2, p4}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCursorUpdateFromKeyboard(IIII)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2400
    const/4 v8, 0x1

    goto :goto_0

    .line 2401
    :cond_3
    iget-boolean v8, p0, Lcom/nuance/swype/input/InputView;->mTextInputPredictionOn:Z

    if-nez v8, :cond_4

    .line 2404
    const/4 v8, 0x1

    goto :goto_0

    .line 2409
    :cond_4
    const/4 v8, 0x1

    aget v8, p5, v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    const/4 v2, 0x1

    .line 2410
    .local v2, "hasComposingText":Z
    :goto_1
    if-ne p3, p4, :cond_8

    const/4 v8, 0x1

    aget v8, p5, v8

    if-ne p4, v8, :cond_8

    const/4 v1, 0x1

    .line 2411
    .local v1, "cursorAfterComposingText":Z
    :goto_2
    const/4 v8, 0x0

    aget v8, p5, v8

    if-ne p3, v8, :cond_9

    const/4 v8, 0x1

    aget v8, p5, v8

    if-ne p4, v8, :cond_9

    const/4 v6, 0x1

    .line 2412
    .local v6, "selectionIsComposingText":Z
    :goto_3
    if-eqz v2, :cond_a

    if-nez v1, :cond_a

    if-nez v6, :cond_a

    .line 2413
    iget-object v8, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v8, :cond_6

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 2414
    iget-object v8, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-direct {p0, v3, v8, v0}, Lcom/nuance/swype/input/InputView;->selectingCompostingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2416
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, p5, v9

    aput v10, p5, v8

    .line 2418
    :cond_5
    const/4 v7, 0x0

    :cond_6
    :goto_4
    move v8, v7

    .line 2457
    goto :goto_0

    .line 2409
    .end local v1    # "cursorAfterComposingText":Z
    .end local v2    # "hasComposingText":Z
    .end local v6    # "selectionIsComposingText":Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 2410
    .restart local v2    # "hasComposingText":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 2411
    .restart local v1    # "cursorAfterComposingText":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    .line 2420
    .restart local v6    # "selectionIsComposingText":Z
    :cond_a
    if-eqz v2, :cond_c

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2422
    invoke-virtual {v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->finishComposingText()Z

    .line 2423
    invoke-virtual {v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->reSyncFromEditor()V

    .line 2424
    invoke-virtual {v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasComposing()Z

    move-result v8

    if-nez v8, :cond_b

    .line 2425
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, p5, v9

    aput v10, p5, v8

    .line 2427
    :cond_b
    const/4 v7, 0x0

    goto :goto_4

    .line 2431
    :cond_c
    const/4 v8, 0x0

    aget v8, p5, v8

    const/4 v9, 0x1

    aget v9, p5, v9

    if-ne v8, v9, :cond_e

    if-ne p3, p4, :cond_e

    if-eq p3, p1, :cond_e

    .line 2434
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    const/4 v4, 0x1

    .line 2444
    .local v4, "lostComposingText":Z
    :goto_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$bool;->scoop_bug_3410_temp_fix:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 2445
    .local v5, "scoopBug3410TempFix":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v8

    .line 2446
    invoke-virtual {v8}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldIgnoreLostComposingText()Z

    move-result v8

    .line 2449
    if-nez v8, :cond_6

    if-nez v5, :cond_6

    if-eqz v4, :cond_6

    .line 2450
    iget-object v8, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v8, :cond_d

    .line 2451
    iget-object v8, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-direct {p0, v3, v8, v0}, Lcom/nuance/swype/input/InputView;->selectingCompostingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 2454
    :cond_d
    const/4 v7, 0x0

    goto :goto_4

    .line 2434
    .end local v4    # "lostComposingText":Z
    .end local v5    # "scoopBug3410TempFix":Z
    :cond_e
    const/4 v4, 0x0

    goto :goto_5
.end method

.method public wordReCaptureComplete()V
    .locals 0

    .prologue
    .line 2614
    return-void
.end method
