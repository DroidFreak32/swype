.class public abstract Lcom/nuance/swype/input/InputView;
.super Lcom/nuance/swype/input/KeyboardViewEx;
.source "InputView.java"

# interfaces
.implements Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;
.implements Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
.implements Lcom/nuance/swype/input/RemoveUdbWordDialog$RemoveUdbWordListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/InputView$2;
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

.field protected static final MSG_DELAY_HIDE_SPELL_VIEW:I = 0x3

.field protected static final MSG_DELAY_POPULATING_WCL_FOR_TRACE:I = 0xc

.field protected static final MSG_DELAY_REFRESH_HALF_HANDWRITING_PAD:I = 0xe

.field protected static final MSG_DELAY_RESUME_SPEECH:I = 0xb

.field protected static final MSG_DELAY_SHOW_ABC_XT9_KEY_TOAST:I = 0x5

.field protected static final MSG_DELAY_SHOW_AUTO_SPACE_TIP:I = 0xa

.field protected static final MSG_DELAY_SHOW_TRACE_AUTO_ACCEPT_TIP:I = 0x6

.field protected static final MSG_DELAY_SHOW_TRACE_INPUT_TIP:I = 0x7

.field protected static final MSG_DELAY_UPDATE_CAPS_EDIT:I = 0xd

.field protected static final MSG_DELAY_UPDATE_DISPLAY:I = 0x4

.field protected static final MSG_GET_MORE_SUGGESTIONS:I = 0x1

.field protected static final MSG_SHOW_START_OF_WORD_CANDIDATE:I = 0x8

.field protected static final MSG_UPDATE_SUGGESTIONS:I = 0x9

.field private static final NOT_A_CURSOR_POSITION:I = -0x1

.field protected static final NUMBERKEYBOARD:Ljava/lang/String; = "numberkeyboard"

.field protected static final ONKEYBOARD:Ljava/lang/String; = "onkeyboard"

.field protected static final SETTINGS:Ljava/lang/String; = "settings"

.field protected static final WORD_DELETE:I = 0x0

.field public static final selectKeyLevel:I = 0x0

.field public static final selectKeyMiniLevel:I = 0x2

.field protected static startTimeDisplaySelectionList:J


# instance fields
.field protected autoCorrectionEnabled:Z

.field protected candidatesEndCache:I

.field protected candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

.field protected candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

.field protected candidatesStartCache:I

.field private cnNwDlgListener:Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;

.field private composingSpeechText:Landroid/text/SpannableStringBuilder;

.field protected correctionLevel:I

.field private enableSymbolSelectPopupAllLayers:Z

.field private endSelection:I

.field public gridCandidateTableVisible:Z

.field private isAutoReturnToEditorDefaultLayerEnabled:Z

.field private isExploredByTouch:Z

.field protected isLDBCompatible:Z

.field protected isTraceEnabledOnKeyboard:Z

.field private italicSpan:Landroid/text/style/StyleSpan;

.field protected mAddOnDictionariesOn:Z

.field protected mAutoCap:Z

.field protected mAutoPunctuationOn:Z

.field protected mAutoSpace:Z

.field protected mBuildInfo:Lcom/nuance/swype/input/BuildInfo;

.field protected mCapsLock:Z

.field protected mChineseSettingsOn:Z

.field protected mCommittedLength:I

.field protected mCompletionOn:Z

.field protected mCompletions:Lcom/nuance/swype/input/Completions;

.field protected mCurrentDbWord:Ljava/lang/String;

.field protected mCurrentDbWordSource:I

.field protected mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

.field protected mDismissKeyboardOn:Z

.field protected mEditKeyboardOn:Z

.field protected mEditState:Lcom/nuance/swype/input/EditState;

.field protected mEmojiInputController:Lcom/nuance/swype/input/emoji/EmojiInputController;

.field protected mEnableHandwriting:Z

.field protected mFuzzyPinyin:I

.field protected mHardkeyKeyboardLayoutId:I

.field protected mInURLEmail:Z

.field protected mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

.field protected mInputModeOn:Z

.field protected mIsUseHardkey:Z

.field protected mKeyboardInputSuggestionOn:Z

.field protected mKeyboardLayoutId:I

.field protected mLanguageOptionOn:Z

.field protected mLastInput:I

.field private mNetworkPromptMessage:Landroid/app/AlertDialog;

.field protected mNextWordPredictionOn:Z

.field protected mNumberKeyboardOn:Z

.field protected mOptionsDialog:Landroid/app/AlertDialog;

.field protected mPreferExplicit:Z

.field protected mQuickToggleOn:Z

.field protected mRecaptureOn:Z

.field protected mReconstructWord:Ljava/lang/String;

.field protected mSettingsOn:Z

.field protected mShowFunctionBar:Z

.field protected mShowInternalCandidates:Z

.field public mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

.field protected mStarted:Z

.field protected mSwitchIMEOn:Z

.field protected mTextInputPredictionOn:Z

.field protected mThemesOn:Z

.field protected mTraceInputSuggestionOn:Z

.field protected mWordCompletionPoint:I

.field protected mWordSource:Ljava/util/concurrent/atomic/AtomicInteger;

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

.field protected pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

.field private preProcessOnSpeechDictation:Z

.field protected promptToAddWords:Z

.field protected removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

.field private selectKey:Lcom/nuance/swype/input/KeyboardEx$Key;

.field private startSelection:I

.field protected suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

.field protected traceAutoAcceptOn:Z

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

.field protected wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

.field protected wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

.field protected xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 241
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    iput v2, p0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    .line 112
    iput v2, p0, Lcom/nuance/swype/input/InputView;->mKeyboardLayoutId:I

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->usedTimeListReselectDisplaySelection:Ljava/util/List;

    .line 129
    iput-boolean v2, p0, Lcom/nuance/swype/input/InputView;->isTraceEnabledOnKeyboard:Z

    .line 140
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputView;->enableSymbolSelectPopupAllLayers:Z

    .line 147
    iput v5, p0, Lcom/nuance/swype/input/InputView;->correctionLevel:I

    .line 158
    new-instance v1, Lcom/nuance/swype/input/Completions;

    invoke-direct {v1}, Lcom/nuance/swype/input/Completions;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    .line 174
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->mWordSource:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->mWordSourceList:Ljava/util/List;

    .line 176
    const-string v1, ""

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->mCurrentDbWord:Ljava/lang/String;

    .line 177
    iput v2, p0, Lcom/nuance/swype/input/InputView;->mCurrentDbWordSource:I

    .line 185
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    .line 205
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputView;->isLDBCompatible:Z

    .line 229
    iput v4, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    .line 230
    iput v4, p0, Lcom/nuance/swype/input/InputView;->endSelection:I

    .line 231
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputView;->preProcessOnSpeechDictation:Z

    .line 1635
    new-instance v1, Lcom/nuance/swype/input/InputView$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/InputView$1;-><init>(Lcom/nuance/swype/input/InputView;)V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->cnNwDlgListener:Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;

    .line 2638
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->italicSpan:Landroid/text/style/StyleSpan;

    .line 2639
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    .line 2895
    iput v2, p0, Lcom/nuance/swype/input/InputView;->mHardkeyKeyboardLayoutId:I

    .line 242
    invoke-static {p1}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->mBuildInfo:Lcom/nuance/swype/input/BuildInfo;

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 244
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/nuance/swype/input/R$bool;->enable_symbol_select_popup_all_layers:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputView;->enableSymbolSelectPopupAllLayers:Z

    .line 245
    sget v1, Lcom/nuance/swype/input/R$string;->accessibility_note_WordDelete:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->wordDeletedString:Ljava/lang/String;

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/InputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/nuance/swype/input/InputView;->actualStartSpeech()V

    return-void
.end method

.method private actualStartSpeech()V
    .locals 4

    .prologue
    .line 1669
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isLVLLicenseValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1670
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getSpeechProvider()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1672
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getIETFLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IME;->startVoiceRecognition(Ljava/lang/String;)V

    .line 1684
    :cond_0
    :goto_0
    return-void

    .line 1674
    :cond_1
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v2, :cond_0

    .line 1675
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;

    move-result-object v1

    .line 1676
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->needChangeSpeechWindowHeight()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1677
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v2

    mul-int/lit8 v0, v2, 0x4

    .line 1678
    .local v0, "increaseHeight":I
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1680
    .end local v0    # "increaseHeight":I
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v2, p0, v1}, Lcom/nuance/swype/input/SpeechWrapper;->startSpeech(Lcom/nuance/swype/input/InputView;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private handleEmotionKey()V
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->showEmojiInputKeyboard()V

    .line 869
    return-void
.end method

.method private isEditModeSelectKeyOn()Z
    .locals 1

    .prologue
    .line 2173
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

.method private playEndOfListSound()V
    .locals 2

    .prologue
    .line 2985
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SoundResources;->getInstance()Lcom/nuance/swype/input/accessibility/SoundResources;

    move-result-object v0

    .line 2986
    .local v0, "instance":Lcom/nuance/swype/input/accessibility/SoundResources;
    if-eqz v0, :cond_0

    .line 2987
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/accessibility/SoundResources;->play(I)V

    .line 2989
    :cond_0
    return-void
.end method

.method private readLongPressDuration()V
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getLongPressDelay()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/InputView;->mLongPressTimeout:I

    .line 1344
    iget v0, p0, Lcom/nuance/swype/input/InputView;->mLongPressTimeout:I

    iput v0, p0, Lcom/nuance/swype/input/InputView;->mShortLongPressTimeout:I

    .line 1345
    return-void
.end method

.method private readSettings(Lcom/nuance/swype/input/InputFieldInfo;)V
    .locals 8
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1234
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    .line 1235
    .local v3, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_0
    move v1, v5

    .line 1239
    .local v1, "nonTextInputField":Z
    :goto_0
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->isCapitalizationSupported()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getAutoCap()Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez v1, :cond_8

    move v6, v5

    :goto_1
    iput-boolean v6, p0, Lcom/nuance/swype/input/InputView;->mAutoCap:Z

    .line 1243
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->isAutoSpaceSupported()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getAutoSpace()Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez v1, :cond_9

    move v6, v5

    :goto_2
    iput-boolean v6, p0, Lcom/nuance/swype/input/InputView;->mAutoSpace:Z

    .line 1246
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v6

    iget v6, v6, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    iput v6, p0, Lcom/nuance/swype/input/InputView;->mKeyboardLayoutId:I

    .line 1247
    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/UserPreferences;->getFuzzyPairs(I)I

    move-result v6

    iput v6, p0, Lcom/nuance/swype/input/InputView;->mFuzzyPinyin:I

    .line 1251
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1253
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getAskBeforeAdd()Z

    move-result v6

    move-object v2, p0

    .line 1255
    .end local p0    # "this":Lcom/nuance/swype/input/InputView;
    .local v2, "this":Lcom/nuance/swype/input/InputView;
    :goto_3
    iput-boolean v6, v2, Lcom/nuance/swype/input/InputView;->promptToAddWords:Z

    .line 1258
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getAutoCorrection()Z

    move-result v6

    if-eqz v6, :cond_d

    if-nez v1, :cond_d

    move v6, v5

    :goto_4
    iput-boolean v6, p0, Lcom/nuance/swype/input/InputView;->autoCorrectionEnabled:Z

    .line 1259
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getWordCompletionPoint()I

    move-result v6

    iput v6, p0, Lcom/nuance/swype/input/InputView;->mWordCompletionPoint:I

    .line 1262
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->isUsingSpellCheckerService()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->isUnrecognizedWordDecorationEnabled()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputFieldInfo;->textInputFieldWithSuggestionDisabled()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputFieldInfo;->isCompletionField()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputFieldInfo;->isWebSearchField()Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_1
    move v6, v4

    :goto_5
    if-eqz v6, :cond_f

    .line 1263
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/nuance/swype/input/IMEApplication;->createUnrecognizedWordDecorator(Lcom/nuance/swype/input/InputView;)Lcom/nuance/swype/util/WordDecorator;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/swype/input/InputView;->wordDecorator:Lcom/nuance/swype/util/WordDecorator;

    .line 1269
    :goto_6
    iget-boolean v6, p0, Lcom/nuance/swype/input/InputView;->autoCorrectionEnabled:Z

    if-nez v6, :cond_2

    iget v6, p0, Lcom/nuance/swype/input/InputView;->mWordCompletionPoint:I

    if-eqz v6, :cond_10

    :cond_2
    move v6, v5

    :goto_7
    iput-boolean v6, p0, Lcom/nuance/swype/input/InputView;->mKeyboardInputSuggestionOn:Z

    .line 1272
    iput-boolean v5, p0, Lcom/nuance/swype/input/InputView;->mTraceInputSuggestionOn:Z

    .line 1273
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->isTraceAutoAcceptEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/nuance/swype/input/InputView;->traceAutoAcceptOn:Z

    .line 1275
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getAutoPunctuation()Z

    move-result v6

    if-eqz v6, :cond_11

    if-nez v1, :cond_11

    move v6, v5

    :goto_8
    iput-boolean v6, p0, Lcom/nuance/swype/input/InputView;->mAutoPunctuationOn:Z

    .line 1276
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v6

    iput-boolean v6, p0, Lcom/nuance/swype/input/InputView;->mShowInternalCandidates:Z

    .line 1277
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    .line 1278
    .local v0, "appSpecificBehavior":Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputFieldInfo;->textInputFieldWithSuggestionDisabled()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldDisableCandidatesList()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1281
    :cond_3
    iput-boolean v4, p0, Lcom/nuance/swype/input/InputView;->mShowInternalCandidates:Z

    .line 1289
    :cond_4
    :goto_9
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1290
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputFieldInfo;->textInputFieldWithSuggestionDisabled()Z

    move-result v6

    if-nez v6, :cond_13

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldDisableCandidatesList()Z

    move-result v6

    if-nez v6, :cond_13

    move v6, v5

    :goto_a
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/InputView;->setCandidatesViewShown(Z)V

    .line 1293
    :cond_5
    iget-boolean v6, p0, Lcom/nuance/swype/input/InputView;->mTraceInputSuggestionOn:Z

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/nuance/swype/input/InputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v6, :cond_14

    :cond_6
    iget-boolean v6, p0, Lcom/nuance/swype/input/InputView;->mShowInternalCandidates:Z

    if-eqz v6, :cond_14

    :goto_b
    iput-boolean v5, p0, Lcom/nuance/swype/input/InputView;->mTextInputPredictionOn:Z

    .line 1296
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/input/InputView;->mEnableHandwriting:Z

    .line 1298
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getShowPressDownPreview()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/InputView;->setPressDownPreviewEnabled(Z)V

    .line 1299
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getShowCompleteTrace()Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/input/InputView;->showCompleteTrace:Z

    .line 1301
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getEnableSimplifiedMode()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/InputView;->enableSimplifiedMode(Z)V

    .line 1302
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->isAutoReturnToEditorDefaultLayerEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/input/InputView;->isAutoReturnToEditorDefaultLayerEnabled:Z

    .line 1304
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getShowCompleteTrace()Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/input/InputView;->showCompleteTrace:Z

    .line 1305
    invoke-direct {p0}, Lcom/nuance/swype/input/InputView;->readLongPressDuration()V

    .line 1307
    return-void

    .end local v0    # "appSpecificBehavior":Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;
    .end local v1    # "nonTextInputField":Z
    .end local v2    # "this":Lcom/nuance/swype/input/InputView;
    .restart local p0    # "this":Lcom/nuance/swype/input/InputView;
    :cond_7
    move v1, v4

    .line 1235
    goto/16 :goto_0

    .restart local v1    # "nonTextInputField":Z
    :cond_8
    move v6, v4

    .line 1239
    goto/16 :goto_1

    :cond_9
    move v6, v4

    .line 1243
    goto/16 :goto_2

    .line 1255
    :cond_a
    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getAskBeforeAdd()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getAutoCorrection()Z

    move-result v6

    if-nez v6, :cond_c

    :cond_b
    move v6, v5

    move-object v2, p0

    .end local p0    # "this":Lcom/nuance/swype/input/InputView;
    .restart local v2    # "this":Lcom/nuance/swype/input/InputView;
    goto/16 :goto_3

    .end local v2    # "this":Lcom/nuance/swype/input/InputView;
    .restart local p0    # "this":Lcom/nuance/swype/input/InputView;
    :cond_c
    move v6, v4

    move-object v2, p0

    .end local p0    # "this":Lcom/nuance/swype/input/InputView;
    .restart local v2    # "this":Lcom/nuance/swype/input/InputView;
    goto/16 :goto_3

    :cond_d
    move v6, v4

    .line 1258
    goto/16 :goto_4

    :cond_e
    move v6, v5

    .line 1262
    goto/16 :goto_5

    .line 1265
    :cond_f
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/nuance/swype/input/InputView;->wordDecorator:Lcom/nuance/swype/util/WordDecorator;

    goto/16 :goto_6

    :cond_10
    move v6, v4

    .line 1269
    goto/16 :goto_7

    :cond_11
    move v6, v4

    .line 1275
    goto/16 :goto_8

    .line 1282
    .restart local v0    # "appSpecificBehavior":Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;
    :cond_12
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->isFullscreenMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1284
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputFieldInfo;->isCompletionField()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1285
    iput-boolean v4, p0, Lcom/nuance/swype/input/InputView;->mShowInternalCandidates:Z

    goto/16 :goto_9

    :cond_13
    move v6, v4

    .line 1290
    goto :goto_a

    :cond_14
    move v5, v4

    .line 1293
    goto :goto_b
.end method

.method private selectingCompostingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "defaultCandidate"    # Ljava/lang/CharSequence;
    .param p3, "composingText"    # Ljava/lang/CharSequence;

    .prologue
    .line 2378
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2379
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateIndex()I

    move-result v0

    .line 2384
    .local v0, "wordSelected":I
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->wordSelected(IZ)V

    .line 2385
    sget-object v1, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "cursor selectingCompostingText"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 2386
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2387
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 2388
    return-void

    .line 2381
    .end local v0    # "wordSelected":I
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateIndex()I

    move-result v0

    .restart local v0    # "wordSelected":I
    goto :goto_0
.end method

.method private setNewDockModePref(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V
    .locals 6
    .param p1, "mode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    .line 343
    .local v1, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 344
    .local v2, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    if-eqz v1, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    .line 347
    .local v0, "previousMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/UserPreferences;->setKeyboardDockingMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 348
    const-string v3, "KeyboardDockMode"

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 353
    .end local v0    # "previousMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/UserPreferences;->setKeyboardDockingMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    goto :goto_0
.end method


# virtual methods
.method public IsTextFieldEmpty()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3003
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 3004
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-nez v1, :cond_1

    .line 3013
    :cond_0
    :goto_0
    return v2

    .line 3008
    :cond_1
    invoke-virtual {v1, v3, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3010
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 3011
    goto :goto_0
.end method

.method public addCandidateListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .prologue
    .line 2618
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v0, :cond_0

    .line 2619
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/CandidatesListView;->addOnWordSelectActionListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V

    .line 2621
    :cond_0
    return-void
.end method

.method public addHardKeyOOVToDictionary()Z
    .locals 1

    .prologue
    .line 2932
    const/4 v0, 0x0

    return v0
.end method

.method protected cancelSpeech()V
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 1726
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->cancelSpeech()V

    .line 1728
    :cond_0
    return-void
.end method

.method protected changeKeyboardMode()V
    .locals 0

    .prologue
    .line 1116
    return-void
.end method

.method protected clearAllKeys()V
    .locals 0

    .prologue
    .line 1894
    return-void
.end method

.method protected clearComposingTextAndSelection()V
    .locals 5

    .prologue
    .line 2477
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 2478
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 2479
    sget-object v3, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "cursor clearComposingTextAndSelection"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 2480
    iget v3, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    iget v4, p0, Lcom/nuance/swype/input/InputView;->endSelection:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2481
    .local v2, "start":I
    iget v3, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    iget v4, p0, Lcom/nuance/swype/input/InputView;->endSelection:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2482
    .local v0, "end":I
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2483
    if-le v0, v2, :cond_0

    .line 2484
    invoke-interface {v1, v0, v0}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 2485
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->clearSelection()V

    .line 2488
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_0
    return-void
.end method

.method public clearCurrentActiveWord()V
    .locals 0

    .prologue
    .line 596
    return-void
.end method

.method public clearHardText()V
    .locals 3

    .prologue
    .line 2923
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2924
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2925
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2926
    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2927
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2929
    :cond_0
    return-void
.end method

.method public clearPendingSuggestionsUpdate()V
    .locals 0

    .prologue
    .line 2217
    return-void
.end method

.method protected clearSelection()V
    .locals 1

    .prologue
    .line 3040
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/InputView;->endSelection:I

    iput v0, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    .line 3041
    return-void
.end method

.method protected clearSelectionKeys(Landroid/view/inputmethod/InputConnection;)Z
    .locals 7
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v4, 0x1

    .line 2463
    iget v5, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    iget v6, p0, Lcom/nuance/swype/input/InputView;->endSelection:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2464
    .local v3, "start":I
    iget v5, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    iget v6, p0, Lcom/nuance/swype/input/InputView;->endSelection:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2465
    .local v0, "end":I
    move v1, v3

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2466
    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->clearCharacter()Z

    .line 2465
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2468
    :cond_0
    if-le v0, v3, :cond_2

    move v2, v4

    .line 2469
    .local v2, "selected":Z
    :goto_1
    if-eqz v2, :cond_1

    .line 2470
    const-string v5, ""

    invoke-interface {p1, v5, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2472
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->clearSelection()V

    .line 2473
    return v2

    .line 2468
    .end local v2    # "selected":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected clearSuggestions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1880
    iput-object v2, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1881
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 1882
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v0, :cond_1

    .line 1883
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/CandidatesListView;->isEditingUDBWords()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1884
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->clearAllKeys()Z

    .line 1886
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    sget-object v1, Lcom/nuance/swype/input/CandidatesListView$Format;->NONE:Lcom/nuance/swype/input/CandidatesListView$Format;

    invoke-virtual {v0, v2, v1}, Lcom/nuance/swype/input/CandidatesListView;->setSuggestions(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)Lcom/nuance/input/swypecorelib/Candidates;

    .line 1887
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->syncCandidateDisplayStyleToMode()V

    .line 1889
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->clearAllKeys()V

    .line 1890
    return-void
.end method

.method public closeDialogs()V
    .locals 0

    .prologue
    .line 2183
    return-void
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 1
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "t9write"    # Lcom/nuance/input/swypecorelib/T9Write;
    .param p4, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 272
    iput-object p4, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    .line 273
    iput-object p2, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .line 275
    invoke-virtual {p1}, Lcom/nuance/swype/input/IME;->getEditState()Lcom/nuance/swype/input/EditState;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->mEditState:Lcom/nuance/swype/input/EditState;

    .line 276
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputView;->isExploredByTouch:Z

    .line 278
    return-void
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 1
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 268
    return-void
.end method

.method public createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;
    .locals 3
    .param p1, "onSelectListener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 467
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    if-nez v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 472
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/nuance/swype/input/R$layout;->candidates:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/WordListViewContainer;

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    .line 474
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    sget v2, Lcom/nuance/swype/input/R$id;->candidates:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/CandidatesListView;

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    .line 478
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v1, :cond_1

    .line 480
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/CandidatesListView;->clearOnWordSelectActionListeners()V

    .line 481
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/CandidatesListView;->addOnWordSelectActionListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V

    .line 482
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/CandidatesListView;->addOnWordSelectActionListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    return-object v1
.end method

.method protected createEmojiInputView()V
    .locals 3

    .prologue
    .line 872
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getEmojiInputViewController()Lcom/nuance/swype/input/emoji/EmojiInputController;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->mEmojiInputController:Lcom/nuance/swype/input/emoji/EmojiInputController;

    .line 873
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 875
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mEmojiInputController:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->create(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    .line 876
    return-void
.end method

.method protected currentLanguageSupportsCapitalization()Z
    .locals 1

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v0, :cond_0

    .line 1972
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isCapitalizationSupported()Z

    move-result v0

    .line 1975
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

    .line 290
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiInputController;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mEmojiInputController:Lcom/nuance/swype/input/emoji/EmojiInputController;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mEmojiInputController:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->saveRecentList()V

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->closing()V

    .line 294
    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 295
    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 296
    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 297
    return-void
.end method

.method protected destroySpeechWrapper()V
    .locals 1

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 1732
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->stopSpeech()V

    .line 1733
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->onDestroy()V

    .line 1735
    :cond_0
    return-void
.end method

.method protected dimissRemoveUdbWordDialog()V
    .locals 1

    .prologue
    .line 2516
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    if-eqz v0, :cond_0

    .line 2517
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    invoke-virtual {v0}, Lcom/nuance/swype/input/RemoveUdbWordDialog;->dismiss()V

    .line 2520
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    .line 2521
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 1006
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mCompletionOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mTextInputPredictionOn:Z

    if-nez v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/Completions;->update([Landroid/view/inputmethod/CompletionInfo;)V

    .line 1008
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Completions;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1009
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 1013
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
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mStarted:Z

    .line 555
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 556
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->multitapClearInvalid()V

    .line 558
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->closing()V

    .line 559
    return-void
.end method

.method public flushCurrentActiveWord()V
    .locals 0

    .prologue
    .line 1000
    return-void
.end method

.method protected getBackspaceRevertHandler()Lcom/nuance/swype/input/BackspaceRevertHandler;
    .locals 1

    .prologue
    .line 2624
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCandidatesListView()Lcom/nuance/swype/input/CandidatesListView;
    .locals 1

    .prologue
    .line 2614
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    return-object v0
.end method

.method protected getContainerX()I
    .locals 2

    .prologue
    .line 1807
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1808
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 1809
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1812
    :goto_0
    return v1

    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getContextBuffer()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1604
    const/16 v0, 0xc1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->getTextBufferCursor(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDefaultWord()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    .line 566
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 569
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentExactWord()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    .line 577
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 580
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    return-object v0
.end method

.method public getCurrentWordCandiatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    .line 585
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 591
    :goto_0
    return-object v0

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    goto :goto_0

    .line 591
    :cond_1
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    goto :goto_0
.end method

.method public getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;
    .locals 1

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    return-object v0
.end method

.method protected getKeyIndices(II)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, -0x1

    .line 2567
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, p1, p2, v5}, Lcom/nuance/swype/input/KeyboardEx;->isNearOrBeyondBounds(III)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2571
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyIndexStrict(II)I

    move-result v2

    .line 2572
    .local v2, "keyIndex":I
    if-eq v1, v2, :cond_1

    .line 2610
    .end local v2    # "keyIndex":I
    :cond_0
    :goto_0
    return v2

    .line 2585
    .restart local v2    # "keyIndex":I
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->getNearestKeyIndex(II)I

    move-result v2

    .line 2586
    if-ne v1, v2, :cond_0

    .line 2594
    .end local v2    # "keyIndex":I
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v3

    .line 2595
    .local v3, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    if-eqz v3, :cond_3

    iget v4, v3, Lcom/nuance/swype/input/KeyboardEx;->rightMostKeyLocation:I

    if-eqz v4, :cond_3

    iget v4, v3, Lcom/nuance/swype/input/KeyboardEx;->leftMostKeyLocation:I

    if-eqz v4, :cond_3

    iget v4, v3, Lcom/nuance/swype/input/KeyboardEx;->bottomMostKeyLocation:I

    if-eqz v4, :cond_3

    iget v4, v3, Lcom/nuance/swype/input/KeyboardEx;->rightMostKeyLocation:I

    add-int/lit8 v4, v4, 0x6

    if-le p1, v4, :cond_3

    iget v4, v3, Lcom/nuance/swype/input/KeyboardEx;->leftMostKeyLocation:I

    add-int/lit8 v4, v4, -0x6

    if-ge p1, v4, :cond_3

    iget v4, v3, Lcom/nuance/swype/input/KeyboardEx;->bottomMostKeyLocation:I

    add-int/lit8 v4, v4, -0x6

    if-ge p2, v4, :cond_3

    move v2, v1

    .line 2600
    goto :goto_0

    .line 2604
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getShiftGestureOffset()I

    move-result v4

    add-int v0, p2, v4

    .line 2605
    .local v0, "adjustedY":I
    const/4 v1, -0x1

    .line 2606
    .local v1, "index":I
    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v4, :cond_4

    .line 2607
    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/KeyboardManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/KeyboardManager;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v4, v5, p1, v0}, Lcom/nuance/swype/input/KeyboardManager;->getKeyIndexByTap(Lcom/nuance/input/swypecorelib/XT9CoreInput;II)I

    move-result v1

    .line 2610
    :cond_4
    if-ltz v1, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyIndices(II)I

    move-result v2

    goto :goto_0
.end method

.method public getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .locals 1

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_0

    .line 1560
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    .line 1562
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    goto :goto_0
.end method

.method public getKeyboardSwitcher()Lcom/nuance/swype/input/KeyboardSwitcher;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    return-object v0
.end method

.method protected getLastInput()I
    .locals 1

    .prologue
    .line 1950
    iget v0, p0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    return v0
.end method

.method protected getLongPressKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .locals 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/16 v0, 0xfdf

    .line 1494
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isShifted()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    if-eq v1, v0, :cond_1

    .line 1495
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    .line 1501
    :cond_0
    :goto_0
    return v0

    .line 1496
    :cond_1
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftTransition:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;->DROP_HIDE:Lcom/nuance/swype/input/KeyboardEx$ShiftTransition;

    if-eq v1, v2, :cond_0

    .line 1501
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    goto :goto_0
.end method

.method public getNextKeyboardDockMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .locals 7
    .param p1, "currentMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 303
    sget-object v4, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    const/4 v3, 0x0

    .line 304
    .local v3, "newMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    const/4 v1, 0x0

    .line 305
    .local v1, "i":I
    invoke-static {}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v4

    array-length v0, v4

    .line 306
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

    .line 309
    .local v2, "invalidDockModes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;>;"
    :cond_0
    sget-object v4, Lcom/nuance/swype/input/InputView$2;->$SwitchMap$com$nuance$swype$input$KeyboardEx$KeyboardDockMode:[I

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 326
    move-object v3, p1

    .line 329
    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    move-object p1, v3

    .line 331
    add-int/lit8 v1, v1, 0x1

    .line 335
    if-lt v1, v0, :cond_0

    .line 337
    :cond_1
    return-object v3

    .line 311
    :pswitch_0
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 312
    goto :goto_0

    .line 314
    :pswitch_1
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 315
    goto :goto_0

    .line 317
    :pswitch_2
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 318
    goto :goto_0

    .line 320
    :pswitch_3
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 321
    goto :goto_0

    .line 323
    :pswitch_4
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 324
    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getSmartCandidates(II)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 1
    .param p1, "recaptureStart"    # I
    .param p2, "recaptureEnd"    # I

    .prologue
    .line 2562
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSpeechAlternateCandidates()Ljava/util/List;
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
    .line 1761
    const/4 v0, 0x0

    .line 1762
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v1, :cond_0

    .line 1763
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v1}, Lcom/nuance/swype/input/SpeechWrapper;->getAlternateCandidates()Ljava/util/ArrayList;

    move-result-object v0

    .line 1765
    :cond_0
    if-eqz v0, :cond_1

    .line 1768
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

.method protected getTextBufferCursor(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 1596
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1597
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1598
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1600
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWordCandidateListContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    return-object v0
.end method

.method protected getWordDecorator()Lcom/nuance/swype/util/WordDecorator;
    .locals 1

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->wordDecorator:Lcom/nuance/swype/util/WordDecorator;

    return-object v0
.end method

.method public getWordListFormat(Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/swype/input/CandidatesListView$Format;
    .locals 1
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 1905
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v0

    .line 1906
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
    .line 281
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    return-object v0
.end method

.method protected handleBackspace(I)Z
    .locals 1
    .param p1, "repeatedCount"    # I

    .prologue
    .line 985
    const/4 v0, 0x0

    return v0
.end method

.method public handleCharKey(Landroid/graphics/Point;IJ)V
    .locals 0
    .param p1, "pointTapped"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->recordStartTimeDisplaySelection()V

    .line 710
    return-void
.end method

.method public handleCharKey(Landroid/graphics/Point;I[IJ)V
    .locals 0
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "eventTime"    # J

    .prologue
    .line 697
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/nuance/swype/input/InputView;->handleCharKey(Landroid/graphics/Point;IJ)V

    .line 698
    return-void
.end method

.method public handleClose()V
    .locals 13

    .prologue
    .line 918
    sget-object v0, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "handleClose.."

    const-string v2, "getLeft().."

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getLeft()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "..getRight().."

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getRight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 919
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->cancelSpeech()V

    .line 920
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mStarted:Z

    .line 922
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/stats/StatisticsManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager;

    move-result-object v11

    .line 923
    .local v11, "statsMgr":Lcom/nuance/swype/stats/StatisticsManager;
    if-eqz v11, :cond_1

    .line 925
    iget v0, p0, Lcom/nuance/swype/input/InputView;->swypeDistanceSum:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 926
    iget v0, p0, Lcom/nuance/swype/input/InputView;->swypeDistanceSum:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 927
    .local v10, "distanceRounded":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const-string v1, "total_swype_distance"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/input/AppPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 934
    .local v8, "distance":J
    :goto_0
    int-to-long v0, v10

    add-long/2addr v8, v0

    .line 936
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const-string v1, "total_swype_distance"

    invoke-virtual {v0, v1, v8, v9}, Lcom/nuance/swype/input/AppPreferences;->setLong(Ljava/lang/String;J)V

    .line 939
    invoke-virtual {v11}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe()Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    int-to-long v2, v10

    invoke-interface {v0, v2, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->trackDistanceSwyped(J)V

    .line 941
    .end local v8    # "distance":J
    .end local v10    # "distanceRounded":I
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/InputView;->swypeDistanceSum:F

    .line 944
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v12

    .line 945
    .local v12, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v12, :cond_3

    .line 946
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/nuance/swype/input/InputView;->startTimeDisplaySelectionList:J

    .line 947
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 948
    invoke-virtual {v12}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tap "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Average:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    invoke-static {v3}, Lcom/nuance/swype/util/LogManager;->calculateAverage(Ljava/util/List;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordUsedTimeSelectionListDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    sget-object v0, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Tap "

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    const-string v3, " Total:"

    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " Average:"

    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    invoke-static {v6}, Lcom/nuance/swype/util/LogManager;->calculateAverage(Ljava/util/List;)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 960
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 963
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->usedTimeListReselectDisplaySelection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 964
    invoke-virtual {v12}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reselect "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->usedTimeListReselectDisplaySelection:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Average:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->usedTimeListReselectDisplaySelection:Ljava/util/List;

    invoke-static {v3}, Lcom/nuance/swype/util/LogManager;->calculateAverage(Ljava/util/List;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordUsedTimeSelectionListDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->usedTimeListReselectDisplaySelection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 973
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 975
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 976
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    .line 978
    :cond_4
    return-void

    .line 932
    .end local v12    # "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    .restart local v10    # "distanceRounded":I
    :catch_0
    move-exception v0

    const-wide/16 v8, 0x0

    .restart local v8    # "distance":J
    goto/16 :goto_0
.end method

.method public handleDeleteWordBack(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 15
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 1422
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v5

    .line 1423
    .local v5, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v5, :cond_c

    .line 1424
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v11, 0x100

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1425
    .local v1, "cs":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectionRangeInEditor()[I

    move-result-object v8

    .line 1426
    .local v8, "selection":[I
    if-eqz v8, :cond_3

    if-eqz v1, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1428
    const/4 v10, 0x0

    aget v10, v8, v10

    const/4 v11, 0x1

    aget v11, v8, v11

    if-eq v10, v11, :cond_2

    const/4 v4, 0x1

    .line 1437
    .local v4, "hasSelection":Z
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1439
    iget-object v10, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v10, :cond_4

    .line 1440
    iget-object v10, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 1441
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->updateShiftKeyState()V

    .line 1442
    iget-object v10, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v10}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1443
    invoke-direct {p0}, Lcom/nuance/swype/input/InputView;->playEndOfListSound()V

    .line 1446
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isEmptyCandidateList()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1447
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->showNextWordPrediction()V

    .line 1449
    :cond_1
    const/4 v10, 0x1

    .line 1489
    .end local v1    # "cs":Ljava/lang/String;
    .end local v4    # "hasSelection":Z
    .end local v8    # "selection":[I
    :goto_1
    return v10

    .line 1428
    .restart local v1    # "cs":Ljava/lang/String;
    .restart local v8    # "selection":[I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1432
    :cond_3
    iget-object v10, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 1433
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 1434
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->updateShiftKeyState()V

    .line 1435
    const/4 v10, 0x1

    goto :goto_1

    .line 1451
    .restart local v4    # "hasSelection":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 1454
    :cond_5
    invoke-virtual {v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 1455
    sget-object v10, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v11, "cursor handleDeleteWordBack"

    invoke-virtual {v10, v11}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1456
    invoke-virtual {v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->finishComposingText()Z

    .line 1457
    if-eqz v4, :cond_7

    .line 1458
    const-string v10, ""

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1484
    :cond_6
    :goto_2
    invoke-virtual {v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 1485
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 1486
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->updateShiftKeyState()V

    .line 1487
    const/4 v10, 0x1

    goto :goto_1

    .line 1460
    :cond_7
    iget-object v10, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v10}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v9

    .line 1462
    .local v9, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\s+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1463
    .local v7, "parts":[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x1

    if-le v10, v11, :cond_a

    .line 1464
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    array-length v11, v7

    add-int/lit8 v11, v11, -0x1

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 1465
    .local v6, "lastIndex":I
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    .line 1466
    .local v3, "editablelength":I
    if-le v3, v6, :cond_9

    sub-int v0, v3, v6

    .line 1467
    .local v0, "beforeLen":I
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1468
    .local v2, "deletedStr":Ljava/lang/String;
    if-eqz v9, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v0, :cond_8

    .line 1469
    invoke-virtual {v9}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v10

    invoke-interface {v10, v2}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordDeletedWord(Ljava/lang/String;)V

    .line 1471
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->deleteSurroundingText(II)Z

    .line 1479
    .end local v0    # "beforeLen":I
    .end local v3    # "editablelength":I
    .end local v6    # "lastIndex":I
    :goto_4
    iget-object v10, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v10}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v2, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1480
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v10

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/nuance/swype/input/InputView;->wordDeletedString:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->announceNotification(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1466
    .end local v2    # "deletedStr":Ljava/lang/String;
    .restart local v3    # "editablelength":I
    .restart local v6    # "lastIndex":I
    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    .line 1473
    .end local v3    # "editablelength":I
    .end local v6    # "lastIndex":I
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1474
    .restart local v2    # "deletedStr":Ljava/lang/String;
    if-eqz v9, :cond_b

    .line 1475
    invoke-virtual {v9}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordDeletedWord(Ljava/lang/String;)V

    .line 1477
    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->deleteSurroundingText(II)Z

    goto :goto_4

    .line 1489
    .end local v1    # "cs":Ljava/lang/String;
    .end local v2    # "deletedStr":Ljava/lang/String;
    .end local v4    # "hasSelection":Z
    .end local v7    # "parts":[Ljava/lang/String;
    .end local v8    # "selection":[I
    .end local v9    # "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_1
.end method

.method public handleGesture(Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 12
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 2037
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    if-lez v1, :cond_4

    .line 2038
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    .line 2039
    .local v0, "defaultCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v1

    sget-object v5, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_GESTURE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-ne v1, v5, :cond_4

    .line 2040
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 2041
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2043
    .local v8, "gestureStr":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v10

    .line 2044
    .local v10, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    const-string v9, "Gesture"

    .line 2046
    .local v9, "type":Ljava/lang/String;
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v11, :cond_2

    .line 2047
    invoke-interface {v8, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    int-to-short v3, v1

    .line 2048
    .local v3, "gestureCode":I
    iput-boolean v11, p0, Lcom/nuance/swype/input/InputView;->isTracedGesture:Z

    .line 2049
    sparse-switch v3, :sswitch_data_0

    .line 2070
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    new-array v4, v4, [I

    move-object v5, v2

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/IME;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    .line 2071
    const/16 v1, -0x6e

    if-eq v3, v1, :cond_0

    .line 2072
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->showNextWordPrediction()V

    .line 2076
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    .line 2077
    sparse-switch v3, :sswitch_data_1

    .line 2110
    :goto_1
    const-string v1, "Gesture"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2115
    invoke-virtual {v10}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    invoke-interface {v1, v9}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordGestureType(Ljava/lang/String;)V

    .end local v3    # "gestureCode":I
    :cond_1
    :goto_2
    move v1, v11

    .line 2137
    .end local v0    # "defaultCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    .end local v8    # "gestureStr":Ljava/lang/CharSequence;
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    :goto_3
    return v1

    .line 2054
    .restart local v0    # "defaultCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    .restart local v3    # "gestureCode":I
    .restart local v8    # "gestureStr":Ljava/lang/CharSequence;
    .restart local v9    # "type":Ljava/lang/String;
    .restart local v10    # "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    :sswitch_0
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, v11}, Lcom/nuance/swype/input/IME;->setRecaptureWhenSwitching(Z)V

    .line 2055
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    new-array v4, v4, [I

    move-object v5, v2

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/IME;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    .line 2056
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2058
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->showNextWordPrediction()V

    goto :goto_0

    .line 2062
    :sswitch_1
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    new-array v4, v4, [I

    move-object v5, v2

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/IME;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto :goto_0

    .line 2066
    :sswitch_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/InputView;->setLastInput(I)V

    .line 2067
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    new-array v4, v4, [I

    move-object v5, v2

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/IME;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto :goto_0

    .line 2079
    :sswitch_3
    const-string v9, "GESTURE_KEYCODE_GOOGLE_MAPS"

    .line 2080
    goto :goto_1

    .line 2082
    :sswitch_4
    const-string v9, "GESTURE_KEYCODE_HIDE_KEYBOARD"

    .line 2083
    goto :goto_1

    .line 2085
    :sswitch_5
    const-string v9, "GESTURE_KEYCODE_WWW"

    .line 2086
    goto :goto_1

    .line 2088
    :sswitch_6
    const-string v9, "GESTURE_KEYCODE_CASE_EDIT"

    .line 2089
    goto :goto_1

    .line 2091
    :sswitch_7
    const-string v9, "GESTURE_SWYPE_TO_SPACEBAR"

    .line 2092
    goto :goto_1

    .line 2094
    :sswitch_8
    const-string v9, "GESTURE_KEYCODE_SEARCH"

    .line 2095
    goto :goto_1

    .line 2097
    :sswitch_9
    const-string v9, "GESTURE_COPY"

    .line 2098
    goto :goto_1

    .line 2100
    :sswitch_a
    const-string v9, "GESTURE_CUT"

    .line 2101
    goto :goto_1

    .line 2103
    :sswitch_b
    const-string v9, "GESTURE_PASTE"

    .line 2104
    goto :goto_1

    .line 2106
    :sswitch_c
    const-string v9, "GESTURE_SELECT_ALL"

    .line 2107
    goto :goto_1

    .line 2109
    :sswitch_d
    const-string v9, "GESTURE_KEYCODE_SUPPRESS_AUTOSPACE"

    goto :goto_1

    .line 2118
    .end local v3    # "gestureCode":I
    :cond_2
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v11, :cond_1

    .line 2120
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, v8, v6, v7}, Lcom/nuance/swype/input/IME;->onText(Ljava/lang/CharSequence;J)V

    .line 2121
    if-eqz v10, :cond_1

    .line 2122
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v1

    .line 2124
    invoke-virtual {v1, v8}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctSpace(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2125
    const-string v9, "punct-space gesture"

    .line 2126
    invoke-virtual {v10}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordGestureType(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2127
    :cond_3
    invoke-static {v8}, Lcom/nuance/swype/util/CharacterUtilities;->isSingleWordSpace(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2128
    const-string v9, "single-word gesture"

    .line 2129
    invoke-virtual {v10}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    invoke-interface {v1, v9}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordGestureType(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v0    # "defaultCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    .end local v8    # "gestureStr":Ljava/lang/CharSequence;
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    :cond_4
    move v1, v4

    .line 2137
    goto/16 :goto_3

    .line 2049
    :sswitch_data_0
    .sparse-switch
        -0x6f -> :sswitch_1
        0xb53 -> :sswitch_2
        0xfed -> :sswitch_0
        0xfee -> :sswitch_0
        0xff5 -> :sswitch_0
        0x192c -> :sswitch_0
    .end sparse-switch

    .line 2077
    :sswitch_data_1
    .sparse-switch
        -0x70 -> :sswitch_8
        -0x6f -> :sswitch_7
        -0x6e -> :sswitch_6
        -0x6d -> :sswitch_5
        -0x6c -> :sswitch_4
        -0x6b -> :sswitch_3
        -0x6a -> :sswitch_d
        0xb50 -> :sswitch_c
        0xb51 -> :sswitch_a
        0xb52 -> :sswitch_9
        0xb53 -> :sswitch_b
    .end sparse-switch
.end method

.method public handleHardKeyCapsLock(Z)Z
    .locals 1
    .param p1, "iscapslockon"    # Z

    .prologue
    .line 2835
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardKeyDirectionKey(I)Z
    .locals 1
    .param p1, "keycode"    # I

    .prologue
    .line 2846
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardKeyEndKey()Z
    .locals 1

    .prologue
    .line 2864
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardKeyEscapeKey()Z
    .locals 1

    .prologue
    .line 2873
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardKeyHomeKey()Z
    .locals 1

    .prologue
    .line 2855
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardKeyStringEvent(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "multistring"    # Ljava/lang/String;
    .param p2, "multitap"    # Z

    .prologue
    .line 2883
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardkeyBackspace(I)Z
    .locals 1
    .param p1, "repeatedCount"    # I

    .prologue
    .line 2797
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardkeyCharKey(ILandroid/view/KeyEvent;Z)V
    .locals 0
    .param p1, "primaryCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "shiftable"    # Z

    .prologue
    .line 2787
    return-void
.end method

.method public handleHardkeyCharKey(I[ILandroid/view/KeyEvent;Z)V
    .locals 0
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "shiftable"    # Z

    .prologue
    .line 2778
    return-void
.end method

.method public handleHardkeyDelete(I)Z
    .locals 1
    .param p1, "repeatedCount"    # I

    .prologue
    .line 2808
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardkeyEnter()Z
    .locals 1

    .prologue
    .line 2817
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardkeyShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 1
    .param p1, "state"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 2826
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardkeySpace(ZI)Z
    .locals 1
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    .line 2767
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->sendSpace()V

    .line 2768
    const/4 v0, 0x1

    return v0
.end method

.method public handleKey(IZI)Z
    .locals 2
    .param p1, "primaryCode"    # I
    .param p2, "quickPressed"    # Z
    .param p3, "repeatedCount"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 821
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 860
    :goto_0
    :sswitch_0
    return v0

    .line 823
    :sswitch_1
    invoke-virtual {p0, p3}, Lcom/nuance/swype/input/InputView;->handleBackspace(I)Z

    move-result v0

    goto :goto_0

    .line 826
    :sswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/nuance/swype/input/InputView;->handleSpace(ZI)Z

    move-result v0

    goto :goto_0

    .line 830
    :sswitch_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->handleShiftKey()V

    goto :goto_0

    .line 836
    :sswitch_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->handleMultitapDeadkey()V

    goto :goto_0

    .line 840
    :sswitch_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->changeKeyboardMode()V

    goto :goto_0

    .line 845
    :sswitch_6
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/InputView;->toggleKeyboard(Z)V

    goto :goto_0

    .line 849
    :sswitch_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->setSwypeKeytoolTipSuggestion()V

    goto :goto_0

    .line 853
    :sswitch_8
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->handleKeyboardResize()V

    goto :goto_0

    .line 856
    :sswitch_9
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->showEmojiInputKeyboard()V

    goto :goto_0

    .line 821
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
    .line 660
    packed-switch p1, :pswitch_data_0

    .line 674
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 662
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 664
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->handleBack()Z

    move-result v0

    goto :goto_0

    .line 660
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
    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public handleKeyWithModifiers(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 1032
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/InputView;->handleKeyWithModifiers(IZ)V

    .line 1033
    return-void
.end method

.method public handleKeyWithModifiers(IZ)V
    .locals 27
    .param p1, "keyCode"    # I
    .param p2, "forceAlt"    # Z

    .prologue
    .line 1036
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-nez v3, :cond_1

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1039
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1041
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 1045
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1055
    :sswitch_0
    const/16 p1, 0x15

    .line 1056
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    .line 1057
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->isExploreByTouchOn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1058
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->playSoundIfTextIsEmpty()V

    .line 1071
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->isComposingText()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1072
    sget-object v3, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "cursor handleKeyWithModifiers"

    invoke-virtual {v3, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1073
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->flushCurrentActiveWord()V

    .line 1075
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->isEditModeSelectKeyOn()Z

    move-result v26

    .line 1076
    .local v26, "shifted":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1078
    .local v4, "eventTime":J
    const/4 v11, 0x0

    .line 1079
    .local v11, "metaState":I
    if-eqz p2, :cond_6

    .line 1080
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x39

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    move-wide v6, v4

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .end local v11    # "metaState":I
    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1083
    const/16 v11, 0x32

    .restart local v11    # "metaState":I
    move/from16 v25, v11

    .line 1085
    .end local v11    # "metaState":I
    .local v25, "metaState":I
    :goto_2
    if-eqz v26, :cond_5

    .line 1086
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x3b

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    move-wide v6, v4

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1089
    or-int/lit8 v3, v25, 0x40

    or-int/lit16 v3, v3, 0x80

    or-int/lit8 v11, v3, 0x1

    .line 1095
    .end local v25    # "metaState":I
    .restart local v11    # "metaState":I
    :goto_3
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    move-wide v6, v4

    move/from16 v9, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1098
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    move/from16 v9, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1103
    if-eqz p2, :cond_4

    .line 1104
    new-instance v13, Landroid/view/KeyEvent;

    const/16 v18, 0x1

    const/16 v19, 0x39

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x6

    move-wide v14, v4

    move-wide/from16 v16, v4

    invoke-direct/range {v13 .. v24}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v2, v13}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1108
    :cond_4
    if-eqz v26, :cond_0

    .line 1109
    new-instance v13, Landroid/view/KeyEvent;

    const/16 v18, 0x1

    const/16 v19, 0x3b

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x6

    move-wide v14, v4

    move-wide/from16 v16, v4

    invoke-direct/range {v13 .. v24}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v2, v13}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 1047
    .end local v4    # "eventTime":J
    .end local v11    # "metaState":I
    .end local v26    # "shifted":Z
    :sswitch_1
    const/16 p1, 0x13

    .line 1048
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    goto/16 :goto_1

    .line 1051
    :sswitch_2
    const/16 p1, 0x14

    .line 1052
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    goto/16 :goto_1

    .line 1062
    :sswitch_3
    const/16 p1, 0x16

    .line 1064
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    goto/16 :goto_1

    .restart local v4    # "eventTime":J
    .restart local v25    # "metaState":I
    .restart local v26    # "shifted":Z
    :cond_5
    move/from16 v11, v25

    .end local v25    # "metaState":I
    .restart local v11    # "metaState":I
    goto :goto_3

    :cond_6
    move/from16 v25, v11

    .end local v11    # "metaState":I
    .restart local v25    # "metaState":I
    goto/16 :goto_2

    .line 1045
    nop

    :sswitch_data_0
    .sparse-switch
        0xfbd -> :sswitch_0
        0xfcd -> :sswitch_1
        0xfdb -> :sswitch_3
        0xfdc -> :sswitch_2
    .end sparse-switch
.end method

.method public handleKeyboardResize()V
    .locals 3

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    .line 411
    .local v0, "currentMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->getNextKeyboardDockMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    .line 412
    .local v1, "newMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/InputView;->switchKeyboardDockMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 413
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

    .line 1355
    iget-boolean v4, p0, Lcom/nuance/swype/input/InputView;->mStarted:Z

    if-nez v4, :cond_1

    .line 1409
    :cond_0
    :goto_0
    return v0

    .line 1359
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v4, v4

    if-nez v4, :cond_3

    .line 1360
    :cond_2
    invoke-super {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_0

    .line 1363
    :cond_3
    iget-object v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v4, v4, v1

    packed-switch v4, :pswitch_data_0

    .line 1380
    iget-object v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v4, v4, v1

    const/16 v5, 0x27

    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Lcom/nuance/swype/input/InputView;->mIsDelimiterKeyLabelUpdated:Z

    if-eqz v4, :cond_4

    move v0, v1

    .line 1381
    goto :goto_0

    .line 1367
    :pswitch_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v1

    move-object v4, v2

    move-object v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto :goto_0

    .line 1372
    :pswitch_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v1

    move-object v4, v2

    move-object v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto :goto_0

    .line 1376
    :pswitch_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->handleMultitapToggle()V

    goto :goto_0

    .line 1384
    :cond_4
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/InputView;->getLongPressKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v3

    .line 1385
    .local v3, "keyCode":I
    sparse-switch v3, :sswitch_data_0

    .line 1398
    invoke-super {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 1400
    .local v0, "handled":Z
    if-nez v0, :cond_0

    const/16 v1, 0xfdf

    if-eq v3, v1, :cond_0

    iget v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    if-ne v3, v1, :cond_0

    .line 1405
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->clearKeyboardState()V

    .line 1406
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v1

    iget-object v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    .line 1407
    const/4 v0, 0x1

    goto :goto_0

    .line 1387
    .end local v0    # "handled":Z
    :sswitch_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v1

    const/16 v3, 0x192f

    move-object v4, v2

    move-object v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto :goto_0

    .line 1391
    :sswitch_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v1

    const/16 v3, 0x192e

    move-object v4, v2

    move-object v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto :goto_0

    .line 1395
    :sswitch_2
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleFullScreenHW()V

    goto/16 :goto_0

    .line 1363
    :pswitch_data_0
    .packed-switch 0xb7b
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1385
    :sswitch_data_0
    .sparse-switch
        0x192e -> :sswitch_1
        0x192f -> :sswitch_0
        0xaa3b -> :sswitch_2
    .end sparse-switch
.end method

.method protected handleMultitapDeadkey()V
    .locals 0

    .prologue
    .line 1026
    return-void
.end method

.method protected handleMultitapToggle()V
    .locals 0

    .prologue
    .line 1023
    return-void
.end method

.method public handlePossibleActionAfterResize()V
    .locals 0

    .prologue
    .line 420
    return-void
.end method

.method public handlePossibleActionAfterUniversalKeyboardResize(Z)V
    .locals 0
    .param p1, "hideSymbolView"    # Z

    .prologue
    .line 450
    return-void
.end method

.method public handlePostTap(Landroid/graphics/Point;I)V
    .locals 3
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I

    .prologue
    .line 901
    const/16 v1, -0xc8

    if-eq p2, v1, :cond_0

    const/16 v1, -0x76

    if-ne p2, v1, :cond_1

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 903
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 904
    .local v0, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-nez v0, :cond_2

    .line 911
    .end local v0    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_1
    :goto_0
    return-void

    .line 907
    .restart local v0    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_2
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 908
    const-string v1, ":-)"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 909
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    goto :goto_0
.end method

.method protected handleShiftKey()V
    .locals 0

    .prologue
    .line 1029
    return-void
.end method

.method protected handleSpace(ZI)Z
    .locals 1
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    .line 1018
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->sendSpace()V

    .line 1019
    const/4 v0, 0x1

    return v0
.end method

.method public handleTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
    .locals 0
    .param p1, "trace"    # Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .prologue
    .line 784
    return-void
.end method

.method public handleUniversalKeyboardResize(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 426
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 427
    .local v0, "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    packed-switch p1, :pswitch_data_0

    .line 442
    :goto_0
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->switchKeyboardDockMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 447
    return-void

    .line 429
    :pswitch_0
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 430
    goto :goto_0

    .line 432
    :pswitch_1
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 433
    goto :goto_0

    .line 435
    :pswitch_2
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 436
    goto :goto_0

    .line 438
    :pswitch_3
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 439
    goto :goto_0

    .line 441
    :pswitch_4
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    goto :goto_0

    .line 427
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
    .line 794
    .local p1, "write":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    return-void
.end method

.method public hasEditModeSelectKey()Z
    .locals 1

    .prologue
    .line 2169
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
    .line 2212
    const/4 v0, 0x0

    return v0
.end method

.method public hideFunctionBar()V
    .locals 0

    .prologue
    .line 2960
    return-void
.end method

.method public isAddToDictionaryTipHighlighted()Z
    .locals 1

    .prologue
    .line 2940
    const/4 v0, 0x0

    return v0
.end method

.method protected isAlphabet(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1129
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    const/4 v0, 0x1

    .line 1132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoReturnToEditorDefaultLayerEnabled()Z
    .locals 1

    .prologue
    .line 1332
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->isAutoReturnToEditorDefaultLayerEnabled:Z

    return v0
.end method

.method protected isComposingText()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2443
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentWordCandiatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    .line 2444
    .local v0, "currentSource":Lcom/nuance/input/swypecorelib/Candidates$Source;
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getKeyCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 2446
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    .line 2450
    :cond_0
    return v1
.end method

.method protected isComposingTextSelected()Z
    .locals 3

    .prologue
    .line 2427
    const/4 v0, 0x0

    .line 2428
    .local v0, "hasSelection":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 2429
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v1, :cond_0

    .line 2430
    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v0

    .line 2432
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getKeyCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDockMiniKeyboardMode()Z
    .locals 2

    .prologue
    .line 1750
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    .line 1751
    .local v0, "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v0, v1, :cond_1

    .line 1753
    :cond_0
    const/4 v1, 0x1

    .line 1755
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isEmptyCandidateList()Z
    .locals 1

    .prologue
    .line 1958
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
    .line 1966
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
    .line 2964
    const/4 v0, 0x0

    return v0
.end method

.method protected isFullScreenMode()Z
    .locals 1

    .prologue
    .line 2491
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

.method protected isGesture(Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 2
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 2141
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    if-lez v0, :cond_0

    .line 2142
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    .line 2143
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_GESTURE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-ne v0, v1, :cond_0

    .line 2144
    const/4 v0, 0x1

    .line 2147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandWritingInputView()Z
    .locals 1

    .prologue
    .line 2968
    const/4 v0, 0x0

    return v0
.end method

.method public isHardkeyKeypadInput()Z
    .locals 2

    .prologue
    .line 2902
    iget v0, p0, Lcom/nuance/swype/input/InputView;->mHardkeyKeyboardLayoutId:I

    const/16 v1, 0x600

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isHighlightedTextSpeechDictated()Z
    .locals 1

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->isHighlightedTextSpeechDictated()Z

    move-result v0

    .line 1778
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isInsideWord()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2409
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isComposingText()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2410
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 2411
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_2

    .line 2413
    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2414
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2415
    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2416
    .local v0, "cSeqAfter":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2423
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

    .line 2416
    goto :goto_0

    .end local v0    # "cSeqAfter":Ljava/lang/CharSequence;
    :cond_1
    move v3, v4

    .line 2419
    goto :goto_0

    .end local v1    # "cSeqBefore":Ljava/lang/CharSequence;
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    move v3, v4

    .line 2423
    goto :goto_0
.end method

.method public isLanguageSwitchableOnSpace()Z
    .locals 1

    .prologue
    .line 1789
    const/4 v0, 0x0

    return v0
.end method

.method protected isLeftCursorWordWhiteSpace(Ljava/lang/CharSequence;)Z
    .locals 8
    .param p1, "wordJustSelected"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1144
    iget-object v6, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1145
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return v4

    .line 1149
    :cond_1
    const/16 v6, 0x41

    invoke-interface {v1, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1150
    .local v3, "seqBeforeCursor":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 1152
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1153
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 1155
    .local v2, "index":I
    if-lez v2, :cond_0

    .line 1156
    :goto_1
    if-lez v2, :cond_2

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1157
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1160
    :cond_2
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1161
    add-int/lit8 v2, v2, 0x1

    .line 1164
    :cond_3
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1167
    .local v0, "compoundWord":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v6, v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x40

    if-gt v6, v7, :cond_0

    move v4, v5

    .line 1170
    goto :goto_0
.end method

.method public isLikelyDomain(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1179
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1181
    .local v0, "domain":Ljava/lang/String;
    const-string v1, ".com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".org"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".gov"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".edu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".tv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1184
    :cond_0
    const/4 v1, 0x1

    .line 1187
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMiniKeyboardMode()Z
    .locals 2

    .prologue
    .line 1742
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    .line 1743
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v0, v1, :cond_0

    .line 1744
    const/4 v0, 0x1

    .line 1746
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNationalUsing()Z
    .locals 1

    .prologue
    .line 3057
    const/4 v0, 0x0

    return v0
.end method

.method protected isNormalTextInputMode()Z
    .locals 1

    .prologue
    .line 2975
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOrientationLandscape()Z
    .locals 2

    .prologue
    .line 2632
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2634
    :goto_0
    return v0

    .line 2632
    :cond_0
    const/4 v0, 0x0

    .line 2634
    goto :goto_0
.end method

.method public isPredictionOn()Z
    .locals 1

    .prologue
    .line 2277
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mTextInputPredictionOn:Z

    return v0
.end method

.method protected isReadOnlyCandidateList()Z
    .locals 1

    .prologue
    .line 1962
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
    .line 2936
    const/4 v0, 0x0

    return v0
.end method

.method public isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z
    .locals 1
    .param p1, "type"    # Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    .line 1852
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
    .line 1841
    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v4, :cond_1

    .line 1842
    move-object v0, p1

    .local v0, "arr$":[Lcom/nuance/input/swypecorelib/Candidates$Source;
    array-length v2, p1

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1843
    .local v3, "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    if-ne v4, v3, :cond_0

    .line 1844
    const/4 v4, 0x1

    .line 1848
    .end local v0    # "arr$":[Lcom/nuance/input/swypecorelib/Candidates$Source;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :goto_1
    return v4

    .line 1842
    .restart local v0    # "arr$":[Lcom/nuance/input/swypecorelib/Candidates$Source;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1848
    .end local v0    # "arr$":[Lcom/nuance/input/swypecorelib/Candidates$Source;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isSpeechViewShowing()Z
    .locals 1

    .prologue
    .line 1697
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
    .line 1738
    const/4 v0, 0x1

    return v0
.end method

.method protected isSymbolSelectPopupEnabledForCurrentLayer()Z
    .locals 2

    .prologue
    .line 1552
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->enableSymbolSelectPopupAllLayers:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_0

    .line 1553
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1555
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTabletDevice()Z
    .locals 1

    .prologue
    .line 2535
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v0

    return v0
.end method

.method public isTelexUsing()Z
    .locals 1

    .prologue
    .line 3053
    const/4 v0, 0x0

    return v0
.end method

.method protected isTraceComposingText()Z
    .locals 2

    .prologue
    .line 2457
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentWordCandiatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    .line 2458
    .local v0, "currentSource":Lcom/nuance/input/swypecorelib/Candidates$Source;
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getKeyCount()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected learnNewWords()V
    .locals 6

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1623
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-nez v1, :cond_1

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1628
    :cond_1
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 1629
    .local v0, "extractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1630
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v5, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->learnNewWords(Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected needChangeSpeechWindowHeight()Z
    .locals 1

    .prologue
    .line 3036
    const/4 v0, 0x0

    return v0
.end method

.method public onApplicationUnbind()V
    .locals 1

    .prologue
    .line 1527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mStarted:Z

    .line 1528
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->closing()V

    .line 1530
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->cancelSpeech()V

    .line 1533
    :cond_0
    return-void
.end method

.method public onCancelNonEditStateRecaptureViaCharKey(C)V
    .locals 0
    .param p1, "ch"    # C

    .prologue
    .line 2757
    return-void
.end method

.method public onCancelSpeech()V
    .locals 2

    .prologue
    .line 2696
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2697
    .local v0, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v0, :cond_0

    .line 2698
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 2699
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->finishComposingText()Z

    .line 2700
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2701
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/InputView;->setLastInput(I)V

    .line 2702
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 2704
    :cond_0
    return-void
.end method

.method public onCandidatesUpdated(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 0
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 1922
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/inputmethod/InputConnection;)V
    .locals 6
    .param p1, "prev"    # Landroid/content/res/Configuration;
    .param p2, "current"    # Landroid/content/res/Configuration;
    .param p3, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2707
    const/4 v1, 0x0

    .line 2709
    .local v1, "orientationChanged":Z
    if-eqz p1, :cond_0

    .line 2710
    invoke-virtual {p2, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    .line 2711
    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_3

    move v1, v2

    .line 2714
    :cond_0
    :goto_0
    iget v4, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    move v0, v2

    .line 2716
    .local v0, "hardKeyboardHidden":Z
    :goto_1
    sget-object v3, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "orientationChanged = "

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2717
    sget-object v3, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "hardKeyboardHidden = "

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2718
    sget-object v3, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "composingSpeechText.length() = "

    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2720
    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v3, :cond_2

    .line 2721
    if-nez v0, :cond_5

    .line 2722
    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v3}, Lcom/nuance/swype/input/SpeechWrapper;->stopSpeech()V

    .line 2727
    :cond_1
    :goto_2
    if-eqz p3, :cond_2

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 2728
    if-eqz v0, :cond_6

    .line 2729
    sget-object v2, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "cursor onConfigurationChanged"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 2730
    invoke-interface {p3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2736
    :cond_2
    :goto_3
    return-void

    .end local v0    # "hardKeyboardHidden":Z
    :cond_3
    move v1, v3

    .line 2711
    goto :goto_0

    :cond_4
    move v0, v3

    .line 2714
    goto :goto_1

    .line 2723
    .restart local v0    # "hardKeyboardHidden":Z
    :cond_5
    if-eqz v1, :cond_1

    .line 2724
    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v3}, Lcom/nuance/swype/input/SpeechWrapper;->pauseSpeech()V

    goto :goto_2

    .line 2731
    :cond_6
    if-eqz v1, :cond_2

    .line 2732
    const-string v3, ""

    invoke-interface {p3, v3, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_3
.end method

.method public onDoubleTap()Z
    .locals 1

    .prologue
    .line 2228
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    .line 2229
    const/4 v0, 0x0

    return v0
.end method

.method public onHandleUdbWordRemoval(Ljava/lang/String;)V
    .locals 0
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 2529
    return-void
.end method

.method public onHardKeyText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2947
    return-void
.end method

.method public onMultitapTimeout()V
    .locals 0

    .prologue
    .line 993
    return-void
.end method

.method public onPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 1
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 1916
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 1
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 1911
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTap(Z)Z
    .locals 1
    .param p1, "shouldResyncCache"    # Z

    .prologue
    .line 2221
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    .line 2222
    const/4 v0, 0x0

    return v0
.end method

.method public onSpeechPaused()V
    .locals 0

    .prologue
    .line 1930
    return-void
.end method

.method public onSpeechResumed()V
    .locals 0

    .prologue
    .line 1938
    return-void
.end method

.method public onSpeechStarted()V
    .locals 0

    .prologue
    .line 1926
    return-void
.end method

.method public onSpeechStopped()V
    .locals 0

    .prologue
    .line 1934
    return-void
.end method

.method public onSpeechUpdate(Ljava/lang/CharSequence;ZZ)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isOnlyToCommitFinal"    # Z
    .param p3, "isFinal"    # Z

    .prologue
    .line 812
    return-void
.end method

.method public onSpeechViewDismissed()V
    .locals 1

    .prologue
    .line 1945
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputView;->preProcessOnSpeechDictation:Z

    .line 1946
    return-void
.end method

.method public onSpeechViewShowedUp()V
    .locals 1

    .prologue
    .line 1941
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputView;->preProcessOnSpeechDictation:Z

    .line 1942
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 803
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 1519
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mStarted:Z

    if-eqz v0, :cond_0

    .line 1520
    invoke-super {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1523
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

    .line 2646
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2647
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    .line 2648
    iget-boolean v1, p0, Lcom/nuance/swype/input/InputView;->preProcessOnSpeechDictation:Z

    if-eqz v1, :cond_0

    .line 2649
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->preUpdateSpeechText()V

    .line 2650
    iput-boolean v6, p0, Lcom/nuance/swype/input/InputView;->preProcessOnSpeechDictation:Z

    .line 2652
    :cond_0
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2653
    invoke-static {v0, p1}, Lcom/nuance/speech/SpeechResultTextBuffer;->onResultCheckLeadingSpace(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2654
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2655
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2657
    sget-object v1, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "speech result: "

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2659
    if-eqz p2, :cond_4

    .line 2660
    if-eqz p3, :cond_3

    iget-boolean v1, p0, Lcom/nuance/swype/input/InputView;->isExploredByTouch:Z

    if-eqz v1, :cond_3

    .line 2662
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2663
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->italicSpan:Landroid/text/style/StyleSpan;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x121

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2665
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2674
    :goto_0
    if-eqz p3, :cond_1

    .line 2675
    sget-object v1, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "cursor onUpdateSpeechText"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 2676
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2677
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2689
    :cond_1
    :goto_1
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/InputView;->setLastInput(I)V

    .line 2691
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2693
    :cond_2
    return-void

    .line 2667
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2671
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->composingSpeechText:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 2680
    :cond_4
    if-eqz p3, :cond_5

    iget-boolean v1, p0, Lcom/nuance/swype/input/InputView;->isExploredByTouch:Z

    if-eqz v1, :cond_5

    .line 2682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_1

    .line 2684
    :cond_5
    invoke-interface {v0, p1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_1
.end method

.method protected pauseSpeech()V
    .locals 1

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 1717
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->pauseSpeech()V

    .line 1719
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_1

    .line 1720
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->closeDictationLanguageMenu()V

    .line 1722
    :cond_1
    return-void
.end method

.method public playSoundIfTextIsEmpty()V
    .locals 1

    .prologue
    .line 2979
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->IsTextFieldEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2980
    invoke-direct {p0}, Lcom/nuance/swype/input/InputView;->playEndOfListSound()V

    .line 2982
    :cond_0
    return-void
.end method

.method protected preUpdateSpeechText()V
    .locals 0

    .prologue
    .line 2643
    return-void
.end method

.method protected processKeyCodeDetectCapsSupport(Landroid/graphics/Point;IJ)Z
    .locals 7
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "keyCode"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 1993
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mMiniKeyboardOnScreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v3

    .line 1999
    .local v3, "shiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v6

    .line 2000
    .local v6, "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2001
    invoke-static {p2}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->currentLanguageSupportsCapitalization()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2003
    const/4 p1, 0x0

    .line 2004
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p2

    .line 2032
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z

    move-result v0

    return v0

    .line 1993
    .end local v3    # "shiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .end local v6    # "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v3

    goto :goto_0

    .line 2005
    .restart local v3    # "shiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .restart local v6    # "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    :cond_2
    int-to-char v0, p2

    invoke-virtual {v6, v0}, Lcom/nuance/swype/util/CharacterUtilities;->isUnicase(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2006
    const/4 p1, 0x0

    .line 2028
    :cond_3
    :goto_2
    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    :goto_3
    goto :goto_1

    .line 2009
    :cond_4
    invoke-static {p2}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2010
    const/4 p1, 0x0

    goto :goto_1

    .line 2013
    :cond_5
    const/4 p1, 0x0

    .line 2014
    goto :goto_2

    .line 2016
    :cond_6
    int-to-char v0, p2

    invoke-virtual {v6, v0}, Lcom/nuance/swype/util/CharacterUtilities;->isUnicase(C)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2017
    const/4 p1, 0x0

    .line 2018
    goto :goto_2

    .line 2020
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->currentLanguageSupportsCapitalization()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2021
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p2

    goto :goto_1

    .line 2023
    :cond_8
    if-nez p1, :cond_0

    .line 2024
    const/16 v0, 0x80

    if-ge p2, v0, :cond_9

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    if-nez v0, :cond_0

    .line 2028
    :cond_9
    invoke-static {p2}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_3
.end method

.method protected promptUserToUpdateLanguage()V
    .locals 2

    .prologue
    .line 3027
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3028
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x76

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3029
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3030
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3031
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3033
    :cond_0
    return-void
.end method

.method protected readNextWordPredictionSettings()V
    .locals 1

    .prologue
    .line 1349
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mTextInputPredictionOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mInURLEmail:Z

    if-nez v0, :cond_0

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

    .line 1351
    return-void

    .line 1349
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reconstructWord()V
    .locals 0

    .prologue
    .line 3023
    return-void
.end method

.method public recordStartTimeDisplaySelection()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/stats/StatisticsManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager;

    move-result-object v0

    .line 719
    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/nuance/swype/input/InputView;->startTimeDisplaySelectionList:J

    .line 724
    :cond_0
    return-void
.end method

.method public recordUsedTimeReselectDisplaySelectionList()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 756
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v0

    .line 757
    .local v0, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v0, :cond_0

    .line 758
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-wide v2, Lcom/nuance/swype/input/InputView;->startTimeDisplaySelectionList:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 760
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->usedTimeListReselectDisplaySelection:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/nuance/swype/input/InputView;->startTimeDisplaySelectionList:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    sput-wide v6, Lcom/nuance/swype/input/InputView;->startTimeDisplaySelectionList:J

    .line 763
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->usedTimeListReselectDisplaySelection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    .line 764
    invoke-virtual {v0}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reselect "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Total:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->usedTimeListReselectDisplaySelection:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Average:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->usedTimeListReselectDisplaySelection:Ljava/util/List;

    invoke-static {v4}, Lcom/nuance/swype/util/LogManager;->calculateAverage(Ljava/util/List;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordUsedTimeSelectionListDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->usedTimeListReselectDisplaySelection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 774
    :cond_0
    return-void
.end method

.method public recordUsedTimeTapDisplaySelectionList()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 731
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v0

    .line 732
    .local v0, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v0, :cond_0

    .line 733
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-wide v2, Lcom/nuance/swype/input/InputView;->startTimeDisplaySelectionList:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/nuance/swype/input/InputView;->startTimeDisplaySelectionList:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    sput-wide v6, Lcom/nuance/swype/input/InputView;->startTimeDisplaySelectionList:J

    .line 738
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    .line 739
    invoke-virtual {v0}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tap "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Total:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Average:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    invoke-static {v4}, Lcom/nuance/swype/util/LogManager;->calculateAverage(Ljava/util/List;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordUsedTimeSelectionListDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->usedTimeListTapDisplaySelection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 749
    :cond_0
    return-void
.end method

.method public refreshBTAutoCorrection()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1325
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 1326
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

    .line 1327
    iget-boolean v1, p0, Lcom/nuance/swype/input/InputView;->autoCorrectionEnabled:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/nuance/swype/input/InputView;->mWordCompletionPoint:I

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputView;->mKeyboardInputSuggestionOn:Z

    .line 1329
    return-void

    :cond_2
    move v1, v3

    .line 1326
    goto :goto_0
.end method

.method public removeHardKeyboardRecaptureCandidates()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2906
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2908
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_1

    .line 2911
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_2

    .line 2919
    :cond_1
    :goto_0
    return v2

    .line 2916
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    goto :goto_0
.end method

.method public requestAutospaceOverrideTo(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 3050
    return-void
.end method

.method protected resetAutoSpace()V
    .locals 2

    .prologue
    .line 1313
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isAutoSpaceSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1314
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputView;->mAutoSpace:Z

    .line 1319
    :goto_0
    return-void

    .line 1316
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 1317
    .local v0, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getAutoSpace()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputView;->mAutoSpace:Z

    goto :goto_0
.end method

.method public resumeEmojiInput()V
    .locals 1

    .prologue
    .line 890
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiInputController;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->showEmojiInputKeyboard()V

    .line 893
    :cond_0
    return-void
.end method

.method public resumeSpeech()V
    .locals 2

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_1

    .line 1688
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->isResumable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1689
    sget-object v0, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "cursor resumeSpeech"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1690
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->flushCurrentActiveWord()V

    .line 1692
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/nuance/swype/input/SpeechWrapper;->resumeSpeech(Lcom/nuance/swype/input/InputView;Landroid/graphics/Rect;)V

    .line 1694
    :cond_1
    return-void
.end method

.method public selectDefaultCompostingText()V
    .locals 4

    .prologue
    .line 2391
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_0

    .line 2392
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateIndex()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->wordSelected(IZ)V

    .line 2394
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2395
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 2396
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2397
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2398
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 2399
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2401
    :cond_1
    return-void
.end method

.method public selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V
    .locals 0
    .param p1, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 2282
    return-void
.end method

.method protected selectWord(Lcom/nuance/input/swypecorelib/XT9CoreInput;IIIZ)V
    .locals 0
    .param p1, "alphaInput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p2, "wordIndex"    # I
    .param p3, "userDelay"    # I
    .param p4, "scanDelay"    # I
    .param p5, "userExplicitPick"    # Z

    .prologue
    .line 2542
    invoke-virtual {p1, p3, p4}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->delayWordReorder(II)V

    .line 2545
    invoke-virtual {p1, p2, p5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->wordSelected(IZ)V

    .line 2546
    return-void
.end method

.method protected sendBackspace(I)V
    .locals 1
    .param p1, "repeatedCount"    # I

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 1203
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    .line 1204
    return-void
.end method

.method protected sendKeyChar(C)V
    .locals 1
    .param p1, "character"    # C

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IME;->sendCharOrPerformAction(C)V

    .line 1224
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    .line 1225
    return-void
.end method

.method protected sendKeyToApplication(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 1191
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1192
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1193
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1194
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1196
    :cond_0
    return-void
.end method

.method protected sendSpace()V
    .locals 1

    .prologue
    .line 1228
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->sendKeyChar(C)V

    .line 1229
    return-void
.end method

.method protected sendTextAsKeys(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v2, :cond_0

    .line 1212
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1213
    .local v1, "textLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1214
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IME;->sendKeyChar(C)V

    .line 1213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1217
    .end local v0    # "i":I
    .end local v1    # "textLength":I
    :cond_0
    return-void
.end method

.method protected setCandidateListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v0, :cond_0

    .line 1868
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/CandidatesListView;->setCandidateListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V

    .line 1870
    :cond_0
    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 1139
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isImeInUse()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IME;->setCandidatesViewShown(Z)V

    .line 1141
    :cond_0
    return-void

    .line 1139
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setContextBuffer()V
    .locals 1

    .prologue
    .line 1614
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContextBuffer()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->setContextBuffer(Ljava/lang/CharSequence;)V

    .line 1615
    return-void
.end method

.method protected setContextBuffer(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "textBufferBeforeCursor"    # Ljava/lang/CharSequence;

    .prologue
    .line 1608
    if-eqz p1, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setContext([C)V

    .line 1611
    :cond_0
    return-void
.end method

.method public setCurrentInputLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 0
    .param p1, "inputLanguage"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 250
    return-void
.end method

.method protected setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V
    .locals 0
    .param p1, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 2287
    return-void
.end method

.method public setEditState(Lcom/nuance/swype/input/EditState;)V
    .locals 0
    .param p1, "editState"    # Lcom/nuance/swype/input/EditState;

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/nuance/swype/input/InputView;->mEditState:Lcom/nuance/swype/input/EditState;

    .line 1418
    return-void
.end method

.method public setHardKeyboardSystemSettings()V
    .locals 0

    .prologue
    .line 2944
    return-void
.end method

.method public setHardkeyLayoutID(I)V
    .locals 0
    .param p1, "layoutid"    # I

    .prologue
    .line 2898
    iput p1, p0, Lcom/nuance/swype/input/InputView;->mHardkeyKeyboardLayoutId:I

    .line 2899
    return-void
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 2
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    .line 2152
    invoke-super {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 2153
    const v0, 0xaa39

    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/KeyboardEx;->findKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->selectKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 2154
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->selectKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->selectKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2155
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isMiniKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2156
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->selectKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 2162
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->syncCandidateDisplayStyleToMode()V

    .line 2164
    return-void

    .line 2158
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
    .line 2752
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getKeyboardManager()Lcom/nuance/swype/input/KeyboardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardManager;->getKeyboardId()I

    move-result v0

    .line 2753
    .local v0, "kdbId":I
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setKeyboardDatabase(IIZ)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 2754
    return-void
.end method

.method public setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .locals 3
    .param p1, "layer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 1540
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 1548
    :cond_0
    :goto_0
    return-void

    .line 1543
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v0

    .line 1544
    .local v0, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v0, :cond_0

    .line 1545
    invoke-virtual {v0}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordKeyboardLayerChange(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    goto :goto_0
.end method

.method protected setLastInput(I)V
    .locals 0
    .param p1, "lastInput"    # I

    .prologue
    .line 1954
    iput p1, p0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    .line 1955
    return-void
.end method

.method protected setNotMatchToolTipSuggestion()V
    .locals 3

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getToolTips()Lcom/nuance/swype/input/ToolTips;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/ToolTips;->createNoMatchTip()Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/CandidatesListView$Format;->NONE:Lcom/nuance/swype/input/CandidatesListView$Format;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/CandidatesListView;->setSuggestions(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1900
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->syncCandidateDisplayStyleToMode()V

    .line 1901
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->setCandidatesViewShown(Z)V

    .line 1902
    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V
    .locals 3
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 1506
    move-object v0, p1

    .line 1507
    .local v0, "decorated":Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->isStatisticsCollectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1508
    invoke-virtual {p1}, Lcom/nuance/swype/input/IME;->getEditState()Lcom/nuance/swype/input/EditState;

    move-result-object v1

    .line 1509
    .local v1, "state":Lcom/nuance/swype/input/EditState;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    if-eqz v2, :cond_0

    .line 1510
    check-cast v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    .line 1511
    .end local v1    # "state":Lcom/nuance/swype/input/EditState;
    invoke-virtual {v1, v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->watchOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    .line 1514
    :cond_0
    invoke-super {p0, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 1515
    return-void
.end method

.method protected setReconstructWord(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    .prologue
    .line 3019
    return-void
.end method

.method protected setSpeechViewHost()V
    .locals 1

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 1702
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/SpeechWrapper;->setHost(Lcom/nuance/swype/input/InputView;)V

    .line 1704
    :cond_0
    return-void
.end method

.method public setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V
    .locals 1
    .param p1, "listener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p3, "format"    # Lcom/nuance/swype/input/CandidatesListView$Format;

    .prologue
    .line 1856
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1857
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 1858
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v0, :cond_0

    .line 1859
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/CandidatesListView;->setCandidateListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V

    .line 1860
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0, p2, p3}, Lcom/nuance/swype/input/CandidatesListView;->setSuggestions(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1861
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->setCandidatesViewShown(Z)V

    .line 1862
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->syncCandidateDisplayStyleToMode()V

    .line 1864
    :cond_0
    return-void
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
    .line 1874
    .local p2, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-static {p2, p3, p4}, Lcom/nuance/input/swypecorelib/Candidates;->createCandidates(Ljava/util/List;ILcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 1876
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->getWordListFormat(Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/swype/input/CandidatesListView$Format;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/nuance/swype/input/InputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 1877
    return-void
.end method

.method public setSwypeKeytoolTipSuggestion()V
    .locals 3

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-nez v0, :cond_0

    .line 1804
    :goto_0
    return-void

    .line 1799
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getToolTips()Lcom/nuance/swype/input/ToolTips;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/ToolTips;->createSwypeKeyTip()Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/CandidatesListView$Format;->NONE:Lcom/nuance/swype/input/CandidatesListView$Format;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/CandidatesListView;->setSuggestions(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1802
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->syncCandidateDisplayStyleToMode()V

    .line 1803
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method public shouldDisableInput(I)Z
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 2746
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldSelectDefaultCandidate()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2263
    iget-boolean v4, p0, Lcom/nuance/swype/input/InputView;->mTextInputPredictionOn:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isEmptyCandidateList()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v4, v5, :cond_1

    move v0, v2

    .line 2267
    .local v0, "bVal":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 2268
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 2269
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v1, :cond_0

    .line 2270
    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    and-int/lit8 v0, v2, 0x1

    .line 2273
    .end local v1    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_0
    return v0

    .end local v0    # "bVal":Z
    :cond_1
    move v0, v3

    .line 2263
    goto :goto_0

    .restart local v0    # "bVal":Z
    .restart local v1    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_2
    move v2, v3

    .line 2270
    goto :goto_1
.end method

.method protected shouldShowTips()Z
    .locals 1

    .prologue
    .line 2234
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

.method public showEmojiInputView()V
    .locals 2

    .prologue
    .line 879
    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/InputView;->selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 880
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/InputView;->setCandidatesViewShown(Z)V

    .line 881
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->createEmojiInputView()V

    .line 884
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;

    move-result-object v0

    .line 886
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mEmojiInputController:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-virtual {p0, v1, v0}, Lcom/nuance/swype/input/InputView;->showEmojiInputPopupWindow(Lcom/nuance/swype/input/emoji/EmojiInputController;Landroid/graphics/Rect;)Z

    .line 887
    return-void
.end method

.method public showFunctionBar()V
    .locals 0

    .prologue
    .line 2954
    return-void
.end method

.method protected showNextWordPrediction()V
    .locals 2

    .prologue
    .line 2992
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mNextWordPredictionOn:Z

    if-nez v0, :cond_1

    .line 3000
    :cond_0
    :goto_0
    return-void

    .line 2995
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->updateWordContext()V

    .line 2996
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/InputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I

    .line 2997
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->isEmojiKeyboardShown:Z

    if-nez v0, :cond_0

    .line 2998
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->dismissPopupKeyboard()V

    goto :goto_0
.end method

.method public showRemoveUdbWordDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 2495
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    invoke-virtual {v1}, Lcom/nuance/swype/input/RemoveUdbWordDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2503
    :goto_0
    return-void

    .line 2499
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2500
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/nuance/swype/input/RemoveUdbWordDialog;

    invoke-direct {v1, p0, p1}, Lcom/nuance/swype/input/RemoveUdbWordDialog;-><init>(Lcom/nuance/swype/input/RemoveUdbWordDialog$RemoveUdbWordListener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    .line 2501
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/RemoveUdbWordDialog;->createDialog(Landroid/content/Context;)V

    .line 2502
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
    .line 2512
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/InputView;->showRemoveUdbWordDialog(Ljava/lang/String;)V

    .line 2513
    return-void
.end method

.method public speechChooseCandidate(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/SpeechWrapper;->speechChooseCandidate(I)V

    .line 1785
    :cond_0
    return-void
.end method

.method public startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V
    .locals 3
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 501
    iput-boolean v1, p0, Lcom/nuance/swype/input/InputView;->mStarted:Z

    .line 503
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->getEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v0, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    .line 504
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->getEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput v0, p0, Lcom/nuance/swype/input/InputView;->endSelection:I

    .line 506
    iput-object p1, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 507
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 508
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

    .line 510
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNameField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isCompletionField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPostalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNoSuggestionOnField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isFieldWithFilterList()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isWebSearchField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mPreferExplicit:Z

    .line 514
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

    .line 516
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->multitapClearInvalid()V

    .line 519
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->checkAccessibility()V

    .line 521
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/KeyboardManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/KeyboardManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardManager;->forceSetKeyboardDatabase(Z)V

    .line 522
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/InputView;->readSettings(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 524
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_3

    .line 528
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    .line 529
    if-nez v0, :cond_3

    .line 531
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->updateExtractedText()V

    .line 535
    :cond_3
    if-eqz p2, :cond_7

    .line 537
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->pauseSpeech()V

    .line 541
    :goto_2
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiInputController;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mEmojiInputController:Lcom/nuance/swype/input/emoji/EmojiInputController;

    if-eqz v0, :cond_4

    .line 542
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mEmojiInputController:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->switchStateToRecentCategory()V

    .line 544
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 508
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 510
    goto :goto_1

    .line 539
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->stopSpeech()V

    goto :goto_2
.end method

.method public final startSpeech()V
    .locals 3

    .prologue
    .line 1651
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isLVLLicenseValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1656
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 1657
    .local v0, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1659
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->cnNwDlgListener:Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;

    invoke-static {v1, v2}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/InputView;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    .line 1660
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IME;->attachDialog(Landroid/app/Dialog;)V

    .line 1661
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->mNetworkPromptMessage:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1666
    .end local v0    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_0
    :goto_0
    return-void

    .line 1664
    .restart local v0    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/InputView;->actualStartSpeech()V

    goto :goto_0
.end method

.method protected stopSpeech()V
    .locals 1

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->stopSpeech()V

    .line 1710
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_1

    .line 1711
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->closeDictationLanguageMenu()V

    .line 1713
    :cond_1
    return-void
.end method

.method public switchKeyboardDockMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V
    .locals 6
    .param p1, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getInvalidDockModes()Ljava/util/EnumSet;

    move-result-object v1

    .line 379
    .local v1, "invalidDockModes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    .line 380
    .local v0, "currentMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    sget-object v2, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "switchKeyboardDockMode(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 381
    invoke-virtual {v1, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    sget-object v2, Lcom/nuance/swype/input/InputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "switchKeyboardDockMode(): invalid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 383
    move-object p1, v0

    .line 385
    :cond_0
    if-eq p1, v0, :cond_1

    .line 386
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/InputView;->setNewDockModePref(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 387
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 395
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 402
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 403
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/UserPreferences;->setKeyboardDockingMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 404
    return-void
.end method

.method protected syncCandidateDisplayStyleToMode()V
    .locals 4

    .prologue
    .line 1820
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    .line 1822
    .local v1, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    .line 1825
    :goto_0
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    .line 1826
    .local v0, "isSplit":Z
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v2, :cond_0

    .line 1827
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/CandidatesListView;->setFullScroll(Z)V

    .line 1828
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/CandidatesListView;->setAlignLeft(Z)V

    .line 1829
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 1832
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_1

    .line 1833
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setFullScroll(Z)V

    .line 1834
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setAlignLeft(Z)V

    .line 1835
    iget-object v2, p0, Lcom/nuance/swype/input/InputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    .line 1837
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->updateEmojiKeyboardPosition()V

    .line 1838
    return-void

    .line 1822
    .end local v0    # "isSplit":Z
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    goto :goto_0

    .line 1825
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public toggleKeyboard(Z)V
    .locals 1
    .param p1, "isImplicit"    # Z

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IMEHandlerManager;->fastSwitchLanguage(Z)V

    .line 1126
    :cond_0
    return-void
.end method

.method protected triggerAutoDefaultCandidateAcceptTip()V
    .locals 2

    .prologue
    .line 2241
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->shouldShowTips()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/InputView;->mLastInput:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2242
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/ToolTips;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ToolTips;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/ToolTips;->triggerAutoAcceptTip(Landroid/view/View;)V

    .line 2244
    :cond_0
    return-void
.end method

.method protected triggerPasswordTip()V
    .locals 1

    .prologue
    .line 2247
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->shouldShowTips()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2248
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/ToolTips;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ToolTips;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/ToolTips;->triggerPasswordTip(Landroid/view/View;)V

    .line 2250
    :cond_0
    return-void
.end method

.method protected triggerPunctuationGestureTip()V
    .locals 1

    .prologue
    .line 2257
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->shouldShowTips()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2258
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/ToolTips;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ToolTips;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/ToolTips;->triggerPunctGestureTip(Landroid/view/View;)V

    .line 2260
    :cond_0
    return-void
.end method

.method protected updateDockModeForHandwriting(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 3
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    .line 356
    if-nez p1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isNormalTextInputMode()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 364
    .local v1, "dockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :goto_1
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v2

    if-eq v2, v1, :cond_3

    const/4 v0, 0x1

    .line 365
    .local v0, "dockChanged":Z
    :goto_2
    invoke-virtual {p1, v1}, Lcom/nuance/swype/input/KeyboardEx;->setKeyboardDockMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 366
    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->setKeyboardDatabaseForDockChanged()V

    goto :goto_0

    .line 362
    .end local v0    # "dockChanged":Z
    .end local v1    # "dockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    goto :goto_1

    .line 364
    .restart local v1    # "dockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected updateExtractedText()V
    .locals 7

    .prologue
    .line 1570
    iget-boolean v3, p0, Lcom/nuance/swype/input/InputView;->mStarted:Z

    if-eqz v3, :cond_0

    .line 1571
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1572
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1593
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return-void

    .line 1575
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 1576
    .local v1, "request":Landroid/view/inputmethod/ExtractedTextRequest;
    const/4 v3, 0x1

    iput v3, v1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 1577
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    .line 1580
    .local v2, "text":Landroid/view/inputmethod/ExtractedText;
    if-eqz v2, :cond_3

    .line 1581
    iget v3, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    iget v4, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v5, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v4, v5

    if-eq v3, v4, :cond_2

    .line 1582
    iget v3, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v4, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    .line 1584
    :cond_2
    iget v3, p0, Lcom/nuance/swype/input/InputView;->endSelection:I

    iget v4, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-eq v3, v4, :cond_3

    .line 1585
    iget v3, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v4, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/nuance/swype/input/InputView;->endSelection:I

    .line 1589
    :cond_3
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v3, :cond_0

    .line 1590
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
    .line 1567
    return-void
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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 612
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 613
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->cursorUpdateReceivedFromTap()Z

    move-result v8

    .line 618
    .local v8, "userTapInEditor":Z
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v8, :cond_2

    invoke-virtual {v1, p1, p3, p2, p4}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCursorUpdateFromKeyboard(IIII)Z

    move-result v0

    if-nez v0, :cond_3

    .line 620
    :cond_2
    if-nez v8, :cond_4

    move v0, v2

    :goto_1
    invoke-virtual {v1, p3, p4, v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->resetInternalEditingStates(IIZ)Z

    .line 622
    iget v0, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    if-eq v0, p3, :cond_5

    .line 624
    :goto_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->cursorUpdateReceivedFromSingleTap()Z

    move-result v0

    if-nez v0, :cond_3

    .line 625
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->updateShiftKeyState()V

    .line 629
    :cond_3
    iput p3, p0, Lcom/nuance/swype/input/InputView;->startSelection:I

    .line 630
    iput p4, p0, Lcom/nuance/swype/input/InputView;->endSelection:I

    .line 632
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputView;->mStarted:Z

    if-eqz v0, :cond_0

    .line 634
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 636
    iput p1, p0, Lcom/nuance/swype/input/InputView;->oldSelStartCache:I

    .line 637
    iput p2, p0, Lcom/nuance/swype/input/InputView;->oldSelEndCache:I

    .line 638
    iput p3, p0, Lcom/nuance/swype/input/InputView;->newSelStartCache:I

    .line 639
    iput p4, p0, Lcom/nuance/swype/input/InputView;->newSelEndCache:I

    .line 640
    iput p5, p0, Lcom/nuance/swype/input/InputView;->candidatesStartCache:I

    .line 641
    iput p6, p0, Lcom/nuance/swype/input/InputView;->candidatesEndCache:I

    .line 643
    iget-object v0, p0, Lcom/nuance/swype/input/InputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/input/SpeechWrapper;->updateSelection(Landroid/view/inputmethod/InputConnection;IIIIII)V

    goto :goto_0

    :cond_4
    move v0, v3

    .line 620
    goto :goto_1

    :cond_5
    move v2, v3

    .line 622
    goto :goto_2
.end method

.method protected updateShiftKeyState()V
    .locals 0

    .prologue
    .line 2550
    return-void
.end method

.method public updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I
    .locals 1
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    .line 2208
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
    .line 2195
    iget-object v1, p0, Lcom/nuance/swype/input/InputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 2196
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->getWordListFormat(Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/swype/input/CandidatesListView$Format;

    move-result-object v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/nuance/swype/input/InputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 2197
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateWordContext()V
    .locals 1

    .prologue
    .line 1618
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getContextBuffer()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputView;->setContextBuffer(Ljava/lang/CharSequence;)V

    .line 1619
    return-void
.end method

.method public useKDBHardkey(Z)V
    .locals 0
    .param p1, "isUseHardkey"    # Z

    .prologue
    .line 2892
    iput-boolean p1, p0, Lcom/nuance/swype/input/InputView;->mIsUseHardkey:Z

    .line 2893
    return-void
.end method

.method protected validateComposingText(IIIIIILjava/lang/CharSequence;)Z
    .locals 10
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I
    .param p7, "composingText"    # Ljava/lang/CharSequence;

    .prologue
    .line 2312
    const/4 v7, 0x1

    .line 2313
    .local v7, "valid":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 2314
    .local v3, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-nez v3, :cond_0

    .line 2315
    const/4 v8, 0x1

    .line 2372
    :goto_0
    return v8

    .line 2320
    :cond_0
    const/4 v8, -0x1

    move/from16 v0, p6

    if-ne v0, v8, :cond_1

    const/4 v8, -0x1

    if-eq p5, v8, :cond_2

    :cond_1
    move/from16 v0, p6

    if-ne p5, v0, :cond_2

    .line 2321
    const/4 v8, 0x1

    goto :goto_0

    .line 2322
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->isHandlingTrace()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getLastInput()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    invoke-virtual {v3, p1, p3, p2, p4}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCursorUpdateFromKeyboard(IIII)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2325
    const/4 v8, 0x1

    goto :goto_0

    .line 2326
    :cond_3
    iget-boolean v8, p0, Lcom/nuance/swype/input/InputView;->mTextInputPredictionOn:Z

    if-nez v8, :cond_4

    .line 2329
    const/4 v8, 0x1

    goto :goto_0

    .line 2334
    :cond_4
    const/4 v8, -0x1

    move/from16 v0, p6

    if-eq v0, v8, :cond_7

    const/4 v2, 0x1

    .line 2335
    .local v2, "hasComposingText":Z
    :goto_1
    if-ne p3, p4, :cond_8

    move/from16 v0, p6

    if-ne p4, v0, :cond_8

    const/4 v1, 0x1

    .line 2336
    .local v1, "cursorAfterComposingText":Z
    :goto_2
    if-ne p3, p5, :cond_9

    move/from16 v0, p6

    if-ne p4, v0, :cond_9

    const/4 v6, 0x1

    .line 2337
    .local v6, "selectionIsComposingText":Z
    :goto_3
    if-eqz v2, :cond_a

    if-nez v1, :cond_a

    if-nez v6, :cond_a

    .line 2338
    iget-object v8, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v8, :cond_6

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 2339
    iget-object v8, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-direct {p0, v3, v8, v0}, Lcom/nuance/swype/input/InputView;->selectingCompostingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2369
    :cond_5
    :goto_4
    const/4 v7, 0x0

    :cond_6
    move v8, v7

    .line 2372
    goto :goto_0

    .line 2334
    .end local v1    # "cursorAfterComposingText":Z
    .end local v2    # "hasComposingText":Z
    .end local v6    # "selectionIsComposingText":Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 2335
    .restart local v2    # "hasComposingText":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 2336
    .restart local v1    # "cursorAfterComposingText":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    .line 2346
    .restart local v6    # "selectionIsComposingText":Z
    :cond_a
    move/from16 v0, p6

    if-ne p5, v0, :cond_b

    if-ne p3, p4, :cond_b

    if-eq p3, p1, :cond_b

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    const/4 v4, 0x1

    .line 2359
    .local v4, "lostComposingText":Z
    :goto_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$bool;->scoop_bug_3410_temp_fix:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 2360
    .local v5, "scoopBug3410TempFix":Z
    iget-object v8, p0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v8}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldIgnoreLostComposingText()Z

    move-result v8

    .line 2364
    if-nez v8, :cond_6

    if-nez v5, :cond_6

    if-eqz v4, :cond_6

    .line 2365
    iget-object v8, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v8, :cond_5

    .line 2366
    iget-object v8, p0, Lcom/nuance/swype/input/InputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-direct {p0, v3, v8, v0}, Lcom/nuance/swype/input/InputView;->selectingCompostingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2346
    .end local v4    # "lostComposingText":Z
    .end local v5    # "scoopBug3410TempFix":Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_5
.end method
